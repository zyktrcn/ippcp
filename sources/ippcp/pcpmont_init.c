/*******************************************************************************
* Copyright 2002-2020 Intel Corporation
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
//               Intel(R) Integrated Performance Primitives
//                   Cryptographic Primitives (ippcp)
// 
//  Contents:
//        cpMontInit()
//
*/

#include "owndefs.h"
#include "owncp.h"
#include "pcpbn.h"
#include "pcpmontgomery.h"
#include "pcptool.h"

/*F*
// Name: cpMontInit
//
// Purpose: Initializes the symbolic data structure and partitions the
//      specified buffer space.
//
// Returns:                Reason:
//      ippStsNoErr         no errors
//
// Parameters:
//      poolLength   length of pool
//      maxLen32     max modulus length (in Ipp32u chunks)
//      pMont        pointer to Montgomery context
//
*F*/

IppStatus cpMontInit(int maxLen32, int poolLength, IppsMontState* pMont)
{
   pMont = (IppsMontState*)( IPP_ALIGNED_PTR(pMont, MONT_ALIGNMENT) );
   {
      int maxBitSize = ((maxLen32) << 5);

      MNT_ROOM( pMont )     = INTERNAL_BNU_LENGTH(maxLen32);
      MNT_ENGINE  ( pMont ) = (gsModEngine*)((Ipp8u*)pMont + sizeof(IppsMontState));

      MNT_ID(pMont) = idCtxMontgomery;

      gsModEngineInit(MNT_ENGINE(pMont), NULL, maxBitSize, poolLength, gsModArithMont());

      return ippStsNoErr;
   }
}
