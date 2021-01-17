/*******************************************************************************
* Copyright 2018-2020 Intel Corporation
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
//     Intel(R) Integrated Performance Primitives. Cryptography Primitives.
//     Operations over GF(p).
// 
//     Context:
//        ippsGFpExp()
// 
*/
#include "owndefs.h"
#include "owncp.h"

#include "pcpgfpstuff.h"
#include "pcpgfpxstuff.h"
#include "pcptool.h"


/*F*
// Name: ippsGFpExp
//
// Purpose: Raise GF element to the specified power
//
// Returns:                   Reason:
//    ippStsNullPtrErr              NULL == pGFp
//                                  NULL == pA
//                                  NULL == pR
//                                  NULL == pE
//
//    ippStsContextMatchErr         invalid pGFp->idCtx
//                                  invalid pA->idCtx
//                                  invalid pR->idCtx
//                                  invalid pE->idCtx
//
//    ippStsOutOfRangeErr           GFPE_ROOM() != GFP_FELEN()
//
//    ippStsNoErr                   no error
//
// Parameters:
//    pA              Pointer to the context of the first finite field element.
//    pE              Pointer to the Big Number context storing the exponent
//    pR              Pointer to the context of the result finite field element.
//    pGFp            Pointer to the context of the finite field.
//    pScratchBuffer  Pointer to the scratch buffer.
//
*F*/

IPPFUN(IppStatus, ippsGFpExp,(const IppsGFpElement* pA, const IppsBigNumState* pE,
                                    IppsGFpElement* pR, IppsGFpState* pGFp,
                                    Ipp8u* pScratchBuffer))
{
   IPP_BAD_PTR4_RET(pA, pE, pR, pGFp);
   pGFp = (IppsGFpState*)( IPP_ALIGNED_PTR(pGFp, GFP_ALIGNMENT) );
   IPP_BADARG_RET( !GFP_TEST_ID(pGFp), ippStsContextMatchErr );
   IPP_BADARG_RET( !GFPE_TEST_ID(pA), ippStsContextMatchErr );
   IPP_BADARG_RET( !GFPE_TEST_ID(pR), ippStsContextMatchErr );

   pE = (IppsBigNumState*)( IPP_ALIGNED_PTR(pE, BN_ALIGNMENT) );
   IPP_BADARG_RET( !BN_VALID_ID(pE), ippStsContextMatchErr );
   {
      gsModEngine* pGFE = GFP_PMA(pGFp);
      IPP_BADARG_RET( (GFPE_ROOM(pA)!=GFP_FELEN(pGFE)) || (GFPE_ROOM(pR)!=GFP_FELEN(pGFE)), ippStsOutOfRangeErr);

      cpGFpxExp(GFPE_DATA(pR), GFPE_DATA(pA), BN_NUMBER(pE), BN_SIZE(pE), pGFE, pScratchBuffer);
      return ippStsNoErr;
   }
}