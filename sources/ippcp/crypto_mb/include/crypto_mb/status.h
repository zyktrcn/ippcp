/*******************************************************************************
* Copyright 2019-2020 Intel Corporation
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*******************************************************************************/

#ifndef STATUS_H
#define STATUS_H

#include <crypto_mb/defs.h>

typedef int32u mbx_status;

// error statuses and manipulators
#define MBX_STATUS_OK                 (0)
#define MBX_STATUS_MISMATCH_PARAM_ERR (1)
#define MBX_STATUS_NULL_PARAM_ERR     (2)
#define MBX_STATUS_LOW_ORDER_ERR      (4) /* means illegal shared key or signature */

__INLINE mbx_status MBX_SET_STS(mbx_status stt, int numb, mbx_status sttVal)
{
   numb &= 7; /* 0 <= numb < 8 */
   stt &= (mbx_status)(~(0xF << (numb*4)));
   return stt |= (sttVal & 0xF) << (numb*4);
}

__INLINE mbx_status MBX_GET_STS(mbx_status stt, int numb)
{
   return (stt >>(numb*4)) & 0xF;
}
__INLINE mbx_status MBX_SET_STS_ALL(mbx_status stsVal)
{
   return (stsVal<<4*7) | (stsVal<<4*6) | (stsVal<<4*5) | (stsVal<<4*4)  | (stsVal<<4*3) | (stsVal<<4*2) | (stsVal<<4*1) | stsVal;
}

__INLINE mbx_status MBX_SET_STS_BY_MASK(mbx_status stt, int8u mask, mbx_status sttVal)
{
   for(int numb=0; numb<8; numb++) {
      mbx_status buf_stt = (0 - ((mask>>numb) &1)) & sttVal;
      stt = MBX_SET_STS(stt, numb, buf_stt);
   }
   return stt;
}

__INLINE int MBX_IS_ANY_OK_STS(mbx_status stt)
{
   int ret = MBX_STATUS_OK==MBX_GET_STS(stt, 0)
          || MBX_STATUS_OK==MBX_GET_STS(stt, 1)
          || MBX_STATUS_OK==MBX_GET_STS(stt, 2)
          || MBX_STATUS_OK==MBX_GET_STS(stt, 3)
          || MBX_STATUS_OK==MBX_GET_STS(stt, 4)
          || MBX_STATUS_OK==MBX_GET_STS(stt, 5)
          || MBX_STATUS_OK==MBX_GET_STS(stt, 6)
          || MBX_STATUS_OK==MBX_GET_STS(stt, 7);
   return ret;
}

#endif /* STATUS_H */
