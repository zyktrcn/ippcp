/*******************************************************************************
* Copyright 2013-2020 Intel Corporation
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

/* 
// 
//  Purpose:
//     Cryptography Primitive.
//     Initialization of AES
// 
//  Contents:
//        ippsAESPack()
//
*/

#include "owndefs.h"
#include "owncp.h"
#include "pcpaesm.h"
#include "pcprij128safe.h"
#include "pcptool.h"

/*F*
//    Name: ippsAESPack
//
// Purpose: Serialize AES context into the buffer.
//
// Returns:                Reason:
//    ippStsNullPtrErr        pCtx == NULL
//                            pBuffer == NULL
//    ippStsContextMatchErr   RIJ_ID(pCtx) != idCtxRijndael
//    ippStsLengthErr         avaliable size of buffer is not enough for operation
//    ippStsNoErr             no errors
//
// Parameters:
//    pCtx        pointer RIJ spec
//    pBuffer     pointer to the buffer
//    bufsize     available size of buffer above
//
*F*/
IPPFUN(IppStatus, ippsAESPack,(const IppsAESSpec* pCtx, Ipp8u* pBuffer, int bufsize))
{
   /* test pointers */
   IPP_BAD_PTR2_RET(pCtx, pBuffer);

   /* use aligned AES context */
   pCtx = (IppsAESSpec*)( IPP_ALIGNED_PTR(pCtx, AES_ALIGNMENT) );
   /* test the context */
   IPP_BADARG_RET(!VALID_AES_ID(pCtx), ippStsContextMatchErr);

   /* test available size of destination buffer */
   IPP_BADARG_RET(bufsize<cpSizeofCtx_AES(), ippStsLengthErr);

   CopyBlock(pCtx, pBuffer, sizeof(IppsAESSpec));
   return ippStsNoErr;
}
