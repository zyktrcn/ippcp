/*******************************************************************************
* Copyright 2016-2020 Intel Corporation
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
//     Security Hash Standard
//     Generalized Functionality
// 
//  Contents:
//        ippsHashDuplicate_rmf()
//
*/

#include "owndefs.h"
#include "owncp.h"
#include "pcphash_rmf.h"
#include "pcptool.h"

/*F*
//    Name: ippsHashDuplicate_rmf
//
// Purpose: Clone Hash context.
//
// Returns:                Reason:
//    ippStsNullPtrErr        pSrcState == NULL
//                            pDstState == NULL
//    ippStsContextMatchErr   pSrcState->idCtx != idCtxHash
//                            pDstState->idCtx != idCtxHash
//    ippStsNoErr             no errors
//
// Parameters:
//    pSrcState  pointer to the source Hash context
//    pDstState  pointer to the target Hash context
//
// Note:
//    pDstState may to be uninitialized by ippsHashInit_rmf()
//
*F*/
IPPFUN(IppStatus, ippsHashDuplicate_rmf,(const IppsHashState_rmf* pSrcState, IppsHashState_rmf* pDstState))
{
   /* test state pointers */
   IPP_BAD_PTR2_RET(pSrcState, pDstState);
   pSrcState = (IppsHashState_rmf*)( IPP_ALIGNED_PTR(pSrcState, HASH_ALIGNMENT) );
   pDstState = (IppsHashState_rmf*)( IPP_ALIGNED_PTR(pDstState, HASH_ALIGNMENT) );
   /* test states ID */
   IPP_BADARG_RET(idCtxHash !=HASH_CTX_ID(pSrcState), ippStsContextMatchErr);

   /* copy state */
   CopyBlock(pSrcState, pDstState, sizeof(IppsHashState_rmf));
   return ippStsNoErr;
}
