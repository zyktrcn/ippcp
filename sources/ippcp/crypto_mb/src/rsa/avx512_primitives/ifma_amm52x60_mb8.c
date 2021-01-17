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

#include <internal/common/ifma_math.h>

void ifma_amm52x60_mb8(int64u *out_mb, const int64u *inpA_mb,
                       const int64u *inpB_mb, const int64u *inpM_mb,
                       const int64u *k0_mb) {
  U64 res00, res01, res02, res03, res04, res05, res06, res07, res08, res09,
      res10, res11, res12, res13, res14, res15, res16, res17, res18, res19,
      res20, res21, res22, res23, res24, res25, res26, res27, res28, res29,
      res30, res31, res32, res33, res34, res35, res36, res37, res38, res39,
      res40, res41, res42, res43, res44, res45, res46, res47, res48, res49,
      res50, res51, res52, res53, res54, res55, res56, res57, res58, res59;
  U64 K = loadu64(k0_mb);
  int itr;
  res00 = res01 = res02 = res03 = res04 = res05 = res06 = res07 = res08 =
      res09 = res10 = res11 = res12 = res13 = res14 = res15 = res16 = res17 =
          res18 = res19 = res20 = res21 = res22 = res23 = res24 = res25 =
              res26 = res27 = res28 = res29 = res30 = res31 = res32 = res33 =
                  res34 = res35 = res36 = res37 = res38 = res39 = res40 =
                      res41 = res42 = res43 = res44 = res45 = res46 = res47 =
                          res48 = res49 = res50 = res51 = res52 = res53 =
                              res54 = res55 = res56 = res57 = res58 = res59 =
                                  get_zero64();

  for (itr = 0; itr < 60; itr++) {
    U64 Yi;
    U64 Bi = loadu64(inpB_mb);
    inpB_mb += MB_WIDTH;
    fma52lo_mem(res00, res00, Bi, inpA_mb, SIMD_BYTES * 0);
    fma52lo_mem(res01, res01, Bi, inpA_mb, SIMD_BYTES * 1);
    fma52lo_mem(res02, res02, Bi, inpA_mb, SIMD_BYTES * 2);
    fma52lo_mem(res03, res03, Bi, inpA_mb, SIMD_BYTES * 3);
    fma52lo_mem(res04, res04, Bi, inpA_mb, SIMD_BYTES * 4);
    fma52lo_mem(res05, res05, Bi, inpA_mb, SIMD_BYTES * 5);
    fma52lo_mem(res06, res06, Bi, inpA_mb, SIMD_BYTES * 6);
    fma52lo_mem(res07, res07, Bi, inpA_mb, SIMD_BYTES * 7);
    fma52lo_mem(res08, res08, Bi, inpA_mb, SIMD_BYTES * 8);
    fma52lo_mem(res09, res09, Bi, inpA_mb, SIMD_BYTES * 9);
    fma52lo_mem(res10, res10, Bi, inpA_mb, SIMD_BYTES * 10);
    fma52lo_mem(res11, res11, Bi, inpA_mb, SIMD_BYTES * 11);
    fma52lo_mem(res12, res12, Bi, inpA_mb, SIMD_BYTES * 12);
    fma52lo_mem(res13, res13, Bi, inpA_mb, SIMD_BYTES * 13);
    fma52lo_mem(res14, res14, Bi, inpA_mb, SIMD_BYTES * 14);
    fma52lo_mem(res15, res15, Bi, inpA_mb, SIMD_BYTES * 15);
    fma52lo_mem(res16, res16, Bi, inpA_mb, SIMD_BYTES * 16);
    fma52lo_mem(res17, res17, Bi, inpA_mb, SIMD_BYTES * 17);
    fma52lo_mem(res18, res18, Bi, inpA_mb, SIMD_BYTES * 18);
    fma52lo_mem(res19, res19, Bi, inpA_mb, SIMD_BYTES * 19);
    fma52lo_mem(res20, res20, Bi, inpA_mb, SIMD_BYTES * 20);
    fma52lo_mem(res21, res21, Bi, inpA_mb, SIMD_BYTES * 21);
    fma52lo_mem(res22, res22, Bi, inpA_mb, SIMD_BYTES * 22);
    fma52lo_mem(res23, res23, Bi, inpA_mb, SIMD_BYTES * 23);
    fma52lo_mem(res24, res24, Bi, inpA_mb, SIMD_BYTES * 24);
    fma52lo_mem(res25, res25, Bi, inpA_mb, SIMD_BYTES * 25);
    fma52lo_mem(res26, res26, Bi, inpA_mb, SIMD_BYTES * 26);
    fma52lo_mem(res27, res27, Bi, inpA_mb, SIMD_BYTES * 27);
    fma52lo_mem(res28, res28, Bi, inpA_mb, SIMD_BYTES * 28);
    fma52lo_mem(res29, res29, Bi, inpA_mb, SIMD_BYTES * 29);
    fma52lo_mem(res30, res30, Bi, inpA_mb, SIMD_BYTES * 30);
    fma52lo_mem(res31, res31, Bi, inpA_mb, SIMD_BYTES * 31);
    fma52lo_mem(res32, res32, Bi, inpA_mb, SIMD_BYTES * 32);
    fma52lo_mem(res33, res33, Bi, inpA_mb, SIMD_BYTES * 33);
    fma52lo_mem(res34, res34, Bi, inpA_mb, SIMD_BYTES * 34);
    fma52lo_mem(res35, res35, Bi, inpA_mb, SIMD_BYTES * 35);
    fma52lo_mem(res36, res36, Bi, inpA_mb, SIMD_BYTES * 36);
    fma52lo_mem(res37, res37, Bi, inpA_mb, SIMD_BYTES * 37);
    fma52lo_mem(res38, res38, Bi, inpA_mb, SIMD_BYTES * 38);
    fma52lo_mem(res39, res39, Bi, inpA_mb, SIMD_BYTES * 39);
    fma52lo_mem(res40, res40, Bi, inpA_mb, SIMD_BYTES * 40);
    fma52lo_mem(res41, res41, Bi, inpA_mb, SIMD_BYTES * 41);
    fma52lo_mem(res42, res42, Bi, inpA_mb, SIMD_BYTES * 42);
    fma52lo_mem(res43, res43, Bi, inpA_mb, SIMD_BYTES * 43);
    fma52lo_mem(res44, res44, Bi, inpA_mb, SIMD_BYTES * 44);
    fma52lo_mem(res45, res45, Bi, inpA_mb, SIMD_BYTES * 45);
    fma52lo_mem(res46, res46, Bi, inpA_mb, SIMD_BYTES * 46);
    fma52lo_mem(res47, res47, Bi, inpA_mb, SIMD_BYTES * 47);
    fma52lo_mem(res48, res48, Bi, inpA_mb, SIMD_BYTES * 48);
    fma52lo_mem(res49, res49, Bi, inpA_mb, SIMD_BYTES * 49);
    fma52lo_mem(res50, res50, Bi, inpA_mb, SIMD_BYTES * 50);
    fma52lo_mem(res51, res51, Bi, inpA_mb, SIMD_BYTES * 51);
    fma52lo_mem(res52, res52, Bi, inpA_mb, SIMD_BYTES * 52);
    fma52lo_mem(res53, res53, Bi, inpA_mb, SIMD_BYTES * 53);
    fma52lo_mem(res54, res54, Bi, inpA_mb, SIMD_BYTES * 54);
    fma52lo_mem(res55, res55, Bi, inpA_mb, SIMD_BYTES * 55);
    fma52lo_mem(res56, res56, Bi, inpA_mb, SIMD_BYTES * 56);
    fma52lo_mem(res57, res57, Bi, inpA_mb, SIMD_BYTES * 57);
    fma52lo_mem(res58, res58, Bi, inpA_mb, SIMD_BYTES * 58);
    fma52lo_mem(res59, res59, Bi, inpA_mb, SIMD_BYTES * 59);
    Yi = fma52lo(get_zero64(), res00, K);
    fma52lo_mem(res00, res00, Yi, inpM_mb, SIMD_BYTES * 0);
    fma52lo_mem(res01, res01, Yi, inpM_mb, SIMD_BYTES * 1);
    fma52lo_mem(res02, res02, Yi, inpM_mb, SIMD_BYTES * 2);
    fma52lo_mem(res03, res03, Yi, inpM_mb, SIMD_BYTES * 3);
    fma52lo_mem(res04, res04, Yi, inpM_mb, SIMD_BYTES * 4);
    fma52lo_mem(res05, res05, Yi, inpM_mb, SIMD_BYTES * 5);
    fma52lo_mem(res06, res06, Yi, inpM_mb, SIMD_BYTES * 6);
    fma52lo_mem(res07, res07, Yi, inpM_mb, SIMD_BYTES * 7);
    fma52lo_mem(res08, res08, Yi, inpM_mb, SIMD_BYTES * 8);
    fma52lo_mem(res09, res09, Yi, inpM_mb, SIMD_BYTES * 9);
    fma52lo_mem(res10, res10, Yi, inpM_mb, SIMD_BYTES * 10);
    fma52lo_mem(res11, res11, Yi, inpM_mb, SIMD_BYTES * 11);
    fma52lo_mem(res12, res12, Yi, inpM_mb, SIMD_BYTES * 12);
    fma52lo_mem(res13, res13, Yi, inpM_mb, SIMD_BYTES * 13);
    fma52lo_mem(res14, res14, Yi, inpM_mb, SIMD_BYTES * 14);
    fma52lo_mem(res15, res15, Yi, inpM_mb, SIMD_BYTES * 15);
    fma52lo_mem(res16, res16, Yi, inpM_mb, SIMD_BYTES * 16);
    fma52lo_mem(res17, res17, Yi, inpM_mb, SIMD_BYTES * 17);
    fma52lo_mem(res18, res18, Yi, inpM_mb, SIMD_BYTES * 18);
    fma52lo_mem(res19, res19, Yi, inpM_mb, SIMD_BYTES * 19);
    fma52lo_mem(res20, res20, Yi, inpM_mb, SIMD_BYTES * 20);
    fma52lo_mem(res21, res21, Yi, inpM_mb, SIMD_BYTES * 21);
    fma52lo_mem(res22, res22, Yi, inpM_mb, SIMD_BYTES * 22);
    fma52lo_mem(res23, res23, Yi, inpM_mb, SIMD_BYTES * 23);
    fma52lo_mem(res24, res24, Yi, inpM_mb, SIMD_BYTES * 24);
    fma52lo_mem(res25, res25, Yi, inpM_mb, SIMD_BYTES * 25);
    fma52lo_mem(res26, res26, Yi, inpM_mb, SIMD_BYTES * 26);
    fma52lo_mem(res27, res27, Yi, inpM_mb, SIMD_BYTES * 27);
    fma52lo_mem(res28, res28, Yi, inpM_mb, SIMD_BYTES * 28);
    fma52lo_mem(res29, res29, Yi, inpM_mb, SIMD_BYTES * 29);
    fma52lo_mem(res30, res30, Yi, inpM_mb, SIMD_BYTES * 30);
    fma52lo_mem(res31, res31, Yi, inpM_mb, SIMD_BYTES * 31);
    fma52lo_mem(res32, res32, Yi, inpM_mb, SIMD_BYTES * 32);
    fma52lo_mem(res33, res33, Yi, inpM_mb, SIMD_BYTES * 33);
    fma52lo_mem(res34, res34, Yi, inpM_mb, SIMD_BYTES * 34);
    fma52lo_mem(res35, res35, Yi, inpM_mb, SIMD_BYTES * 35);
    fma52lo_mem(res36, res36, Yi, inpM_mb, SIMD_BYTES * 36);
    fma52lo_mem(res37, res37, Yi, inpM_mb, SIMD_BYTES * 37);
    fma52lo_mem(res38, res38, Yi, inpM_mb, SIMD_BYTES * 38);
    fma52lo_mem(res39, res39, Yi, inpM_mb, SIMD_BYTES * 39);
    fma52lo_mem(res40, res40, Yi, inpM_mb, SIMD_BYTES * 40);
    fma52lo_mem(res41, res41, Yi, inpM_mb, SIMD_BYTES * 41);
    fma52lo_mem(res42, res42, Yi, inpM_mb, SIMD_BYTES * 42);
    fma52lo_mem(res43, res43, Yi, inpM_mb, SIMD_BYTES * 43);
    fma52lo_mem(res44, res44, Yi, inpM_mb, SIMD_BYTES * 44);
    fma52lo_mem(res45, res45, Yi, inpM_mb, SIMD_BYTES * 45);
    fma52lo_mem(res46, res46, Yi, inpM_mb, SIMD_BYTES * 46);
    fma52lo_mem(res47, res47, Yi, inpM_mb, SIMD_BYTES * 47);
    fma52lo_mem(res48, res48, Yi, inpM_mb, SIMD_BYTES * 48);
    fma52lo_mem(res49, res49, Yi, inpM_mb, SIMD_BYTES * 49);
    fma52lo_mem(res50, res50, Yi, inpM_mb, SIMD_BYTES * 50);
    fma52lo_mem(res51, res51, Yi, inpM_mb, SIMD_BYTES * 51);
    fma52lo_mem(res52, res52, Yi, inpM_mb, SIMD_BYTES * 52);
    fma52lo_mem(res53, res53, Yi, inpM_mb, SIMD_BYTES * 53);
    fma52lo_mem(res54, res54, Yi, inpM_mb, SIMD_BYTES * 54);
    fma52lo_mem(res55, res55, Yi, inpM_mb, SIMD_BYTES * 55);
    fma52lo_mem(res56, res56, Yi, inpM_mb, SIMD_BYTES * 56);
    fma52lo_mem(res57, res57, Yi, inpM_mb, SIMD_BYTES * 57);
    fma52lo_mem(res58, res58, Yi, inpM_mb, SIMD_BYTES * 58);
    fma52lo_mem(res59, res59, Yi, inpM_mb, SIMD_BYTES * 59);
    res00 = srli64(res00, DIGIT_SIZE);
    res01 = add64(res01, res00);
    fma52hi_mem(res00, res01, Bi, inpA_mb, SIMD_BYTES * 0);
    fma52hi_mem(res01, res02, Bi, inpA_mb, SIMD_BYTES * 1);
    fma52hi_mem(res02, res03, Bi, inpA_mb, SIMD_BYTES * 2);
    fma52hi_mem(res03, res04, Bi, inpA_mb, SIMD_BYTES * 3);
    fma52hi_mem(res04, res05, Bi, inpA_mb, SIMD_BYTES * 4);
    fma52hi_mem(res05, res06, Bi, inpA_mb, SIMD_BYTES * 5);
    fma52hi_mem(res06, res07, Bi, inpA_mb, SIMD_BYTES * 6);
    fma52hi_mem(res07, res08, Bi, inpA_mb, SIMD_BYTES * 7);
    fma52hi_mem(res08, res09, Bi, inpA_mb, SIMD_BYTES * 8);
    fma52hi_mem(res09, res10, Bi, inpA_mb, SIMD_BYTES * 9);
    fma52hi_mem(res10, res11, Bi, inpA_mb, SIMD_BYTES * 10);
    fma52hi_mem(res11, res12, Bi, inpA_mb, SIMD_BYTES * 11);
    fma52hi_mem(res12, res13, Bi, inpA_mb, SIMD_BYTES * 12);
    fma52hi_mem(res13, res14, Bi, inpA_mb, SIMD_BYTES * 13);
    fma52hi_mem(res14, res15, Bi, inpA_mb, SIMD_BYTES * 14);
    fma52hi_mem(res15, res16, Bi, inpA_mb, SIMD_BYTES * 15);
    fma52hi_mem(res16, res17, Bi, inpA_mb, SIMD_BYTES * 16);
    fma52hi_mem(res17, res18, Bi, inpA_mb, SIMD_BYTES * 17);
    fma52hi_mem(res18, res19, Bi, inpA_mb, SIMD_BYTES * 18);
    fma52hi_mem(res19, res20, Bi, inpA_mb, SIMD_BYTES * 19);
    fma52hi_mem(res20, res21, Bi, inpA_mb, SIMD_BYTES * 20);
    fma52hi_mem(res21, res22, Bi, inpA_mb, SIMD_BYTES * 21);
    fma52hi_mem(res22, res23, Bi, inpA_mb, SIMD_BYTES * 22);
    fma52hi_mem(res23, res24, Bi, inpA_mb, SIMD_BYTES * 23);
    fma52hi_mem(res24, res25, Bi, inpA_mb, SIMD_BYTES * 24);
    fma52hi_mem(res25, res26, Bi, inpA_mb, SIMD_BYTES * 25);
    fma52hi_mem(res26, res27, Bi, inpA_mb, SIMD_BYTES * 26);
    fma52hi_mem(res27, res28, Bi, inpA_mb, SIMD_BYTES * 27);
    fma52hi_mem(res28, res29, Bi, inpA_mb, SIMD_BYTES * 28);
    fma52hi_mem(res29, res30, Bi, inpA_mb, SIMD_BYTES * 29);
    fma52hi_mem(res30, res31, Bi, inpA_mb, SIMD_BYTES * 30);
    fma52hi_mem(res31, res32, Bi, inpA_mb, SIMD_BYTES * 31);
    fma52hi_mem(res32, res33, Bi, inpA_mb, SIMD_BYTES * 32);
    fma52hi_mem(res33, res34, Bi, inpA_mb, SIMD_BYTES * 33);
    fma52hi_mem(res34, res35, Bi, inpA_mb, SIMD_BYTES * 34);
    fma52hi_mem(res35, res36, Bi, inpA_mb, SIMD_BYTES * 35);
    fma52hi_mem(res36, res37, Bi, inpA_mb, SIMD_BYTES * 36);
    fma52hi_mem(res37, res38, Bi, inpA_mb, SIMD_BYTES * 37);
    fma52hi_mem(res38, res39, Bi, inpA_mb, SIMD_BYTES * 38);
    fma52hi_mem(res39, res40, Bi, inpA_mb, SIMD_BYTES * 39);
    fma52hi_mem(res40, res41, Bi, inpA_mb, SIMD_BYTES * 40);
    fma52hi_mem(res41, res42, Bi, inpA_mb, SIMD_BYTES * 41);
    fma52hi_mem(res42, res43, Bi, inpA_mb, SIMD_BYTES * 42);
    fma52hi_mem(res43, res44, Bi, inpA_mb, SIMD_BYTES * 43);
    fma52hi_mem(res44, res45, Bi, inpA_mb, SIMD_BYTES * 44);
    fma52hi_mem(res45, res46, Bi, inpA_mb, SIMD_BYTES * 45);
    fma52hi_mem(res46, res47, Bi, inpA_mb, SIMD_BYTES * 46);
    fma52hi_mem(res47, res48, Bi, inpA_mb, SIMD_BYTES * 47);
    fma52hi_mem(res48, res49, Bi, inpA_mb, SIMD_BYTES * 48);
    fma52hi_mem(res49, res50, Bi, inpA_mb, SIMD_BYTES * 49);
    fma52hi_mem(res50, res51, Bi, inpA_mb, SIMD_BYTES * 50);
    fma52hi_mem(res51, res52, Bi, inpA_mb, SIMD_BYTES * 51);
    fma52hi_mem(res52, res53, Bi, inpA_mb, SIMD_BYTES * 52);
    fma52hi_mem(res53, res54, Bi, inpA_mb, SIMD_BYTES * 53);
    fma52hi_mem(res54, res55, Bi, inpA_mb, SIMD_BYTES * 54);
    fma52hi_mem(res55, res56, Bi, inpA_mb, SIMD_BYTES * 55);
    fma52hi_mem(res56, res57, Bi, inpA_mb, SIMD_BYTES * 56);
    fma52hi_mem(res57, res58, Bi, inpA_mb, SIMD_BYTES * 57);
    fma52hi_mem(res58, res59, Bi, inpA_mb, SIMD_BYTES * 58);
    fma52hi_mem(res59, get_zero64(), Bi, inpA_mb, SIMD_BYTES * 59);
    fma52hi_mem(res00, res00, Yi, inpM_mb, SIMD_BYTES * 0);
    fma52hi_mem(res01, res01, Yi, inpM_mb, SIMD_BYTES * 1);
    fma52hi_mem(res02, res02, Yi, inpM_mb, SIMD_BYTES * 2);
    fma52hi_mem(res03, res03, Yi, inpM_mb, SIMD_BYTES * 3);
    fma52hi_mem(res04, res04, Yi, inpM_mb, SIMD_BYTES * 4);
    fma52hi_mem(res05, res05, Yi, inpM_mb, SIMD_BYTES * 5);
    fma52hi_mem(res06, res06, Yi, inpM_mb, SIMD_BYTES * 6);
    fma52hi_mem(res07, res07, Yi, inpM_mb, SIMD_BYTES * 7);
    fma52hi_mem(res08, res08, Yi, inpM_mb, SIMD_BYTES * 8);
    fma52hi_mem(res09, res09, Yi, inpM_mb, SIMD_BYTES * 9);
    fma52hi_mem(res10, res10, Yi, inpM_mb, SIMD_BYTES * 10);
    fma52hi_mem(res11, res11, Yi, inpM_mb, SIMD_BYTES * 11);
    fma52hi_mem(res12, res12, Yi, inpM_mb, SIMD_BYTES * 12);
    fma52hi_mem(res13, res13, Yi, inpM_mb, SIMD_BYTES * 13);
    fma52hi_mem(res14, res14, Yi, inpM_mb, SIMD_BYTES * 14);
    fma52hi_mem(res15, res15, Yi, inpM_mb, SIMD_BYTES * 15);
    fma52hi_mem(res16, res16, Yi, inpM_mb, SIMD_BYTES * 16);
    fma52hi_mem(res17, res17, Yi, inpM_mb, SIMD_BYTES * 17);
    fma52hi_mem(res18, res18, Yi, inpM_mb, SIMD_BYTES * 18);
    fma52hi_mem(res19, res19, Yi, inpM_mb, SIMD_BYTES * 19);
    fma52hi_mem(res20, res20, Yi, inpM_mb, SIMD_BYTES * 20);
    fma52hi_mem(res21, res21, Yi, inpM_mb, SIMD_BYTES * 21);
    fma52hi_mem(res22, res22, Yi, inpM_mb, SIMD_BYTES * 22);
    fma52hi_mem(res23, res23, Yi, inpM_mb, SIMD_BYTES * 23);
    fma52hi_mem(res24, res24, Yi, inpM_mb, SIMD_BYTES * 24);
    fma52hi_mem(res25, res25, Yi, inpM_mb, SIMD_BYTES * 25);
    fma52hi_mem(res26, res26, Yi, inpM_mb, SIMD_BYTES * 26);
    fma52hi_mem(res27, res27, Yi, inpM_mb, SIMD_BYTES * 27);
    fma52hi_mem(res28, res28, Yi, inpM_mb, SIMD_BYTES * 28);
    fma52hi_mem(res29, res29, Yi, inpM_mb, SIMD_BYTES * 29);
    fma52hi_mem(res30, res30, Yi, inpM_mb, SIMD_BYTES * 30);
    fma52hi_mem(res31, res31, Yi, inpM_mb, SIMD_BYTES * 31);
    fma52hi_mem(res32, res32, Yi, inpM_mb, SIMD_BYTES * 32);
    fma52hi_mem(res33, res33, Yi, inpM_mb, SIMD_BYTES * 33);
    fma52hi_mem(res34, res34, Yi, inpM_mb, SIMD_BYTES * 34);
    fma52hi_mem(res35, res35, Yi, inpM_mb, SIMD_BYTES * 35);
    fma52hi_mem(res36, res36, Yi, inpM_mb, SIMD_BYTES * 36);
    fma52hi_mem(res37, res37, Yi, inpM_mb, SIMD_BYTES * 37);
    fma52hi_mem(res38, res38, Yi, inpM_mb, SIMD_BYTES * 38);
    fma52hi_mem(res39, res39, Yi, inpM_mb, SIMD_BYTES * 39);
    fma52hi_mem(res40, res40, Yi, inpM_mb, SIMD_BYTES * 40);
    fma52hi_mem(res41, res41, Yi, inpM_mb, SIMD_BYTES * 41);
    fma52hi_mem(res42, res42, Yi, inpM_mb, SIMD_BYTES * 42);
    fma52hi_mem(res43, res43, Yi, inpM_mb, SIMD_BYTES * 43);
    fma52hi_mem(res44, res44, Yi, inpM_mb, SIMD_BYTES * 44);
    fma52hi_mem(res45, res45, Yi, inpM_mb, SIMD_BYTES * 45);
    fma52hi_mem(res46, res46, Yi, inpM_mb, SIMD_BYTES * 46);
    fma52hi_mem(res47, res47, Yi, inpM_mb, SIMD_BYTES * 47);
    fma52hi_mem(res48, res48, Yi, inpM_mb, SIMD_BYTES * 48);
    fma52hi_mem(res49, res49, Yi, inpM_mb, SIMD_BYTES * 49);
    fma52hi_mem(res50, res50, Yi, inpM_mb, SIMD_BYTES * 50);
    fma52hi_mem(res51, res51, Yi, inpM_mb, SIMD_BYTES * 51);
    fma52hi_mem(res52, res52, Yi, inpM_mb, SIMD_BYTES * 52);
    fma52hi_mem(res53, res53, Yi, inpM_mb, SIMD_BYTES * 53);
    fma52hi_mem(res54, res54, Yi, inpM_mb, SIMD_BYTES * 54);
    fma52hi_mem(res55, res55, Yi, inpM_mb, SIMD_BYTES * 55);
    fma52hi_mem(res56, res56, Yi, inpM_mb, SIMD_BYTES * 56);
    fma52hi_mem(res57, res57, Yi, inpM_mb, SIMD_BYTES * 57);
    fma52hi_mem(res58, res58, Yi, inpM_mb, SIMD_BYTES * 58);
    fma52hi_mem(res59, res59, Yi, inpM_mb, SIMD_BYTES * 59);
  }
  // Normalization
  {
    U64 T = get_zero64();
    U64 MASK = set64(DIGIT_MASK);
    T = srli64(res00, DIGIT_SIZE);
    res00 = and64(res00, MASK);
    storeu64(out_mb + MB_WIDTH * 0, res00);
    res01 = add64(res01, T);
    T = srli64(res01, DIGIT_SIZE);
    res01 = and64(res01, MASK);
    storeu64(out_mb + MB_WIDTH * 1, res01);
    res02 = add64(res02, T);
    T = srli64(res02, DIGIT_SIZE);
    res02 = and64(res02, MASK);
    storeu64(out_mb + MB_WIDTH * 2, res02);
    res03 = add64(res03, T);
    T = srli64(res03, DIGIT_SIZE);
    res03 = and64(res03, MASK);
    storeu64(out_mb + MB_WIDTH * 3, res03);
    res04 = add64(res04, T);
    T = srli64(res04, DIGIT_SIZE);
    res04 = and64(res04, MASK);
    storeu64(out_mb + MB_WIDTH * 4, res04);
    res05 = add64(res05, T);
    T = srli64(res05, DIGIT_SIZE);
    res05 = and64(res05, MASK);
    storeu64(out_mb + MB_WIDTH * 5, res05);
    res06 = add64(res06, T);
    T = srli64(res06, DIGIT_SIZE);
    res06 = and64(res06, MASK);
    storeu64(out_mb + MB_WIDTH * 6, res06);
    res07 = add64(res07, T);
    T = srli64(res07, DIGIT_SIZE);
    res07 = and64(res07, MASK);
    storeu64(out_mb + MB_WIDTH * 7, res07);
    res08 = add64(res08, T);
    T = srli64(res08, DIGIT_SIZE);
    res08 = and64(res08, MASK);
    storeu64(out_mb + MB_WIDTH * 8, res08);
    res09 = add64(res09, T);
    T = srli64(res09, DIGIT_SIZE);
    res09 = and64(res09, MASK);
    storeu64(out_mb + MB_WIDTH * 9, res09);
    res10 = add64(res10, T);
    T = srli64(res10, DIGIT_SIZE);
    res10 = and64(res10, MASK);
    storeu64(out_mb + MB_WIDTH * 10, res10);
    res11 = add64(res11, T);
    T = srli64(res11, DIGIT_SIZE);
    res11 = and64(res11, MASK);
    storeu64(out_mb + MB_WIDTH * 11, res11);
    res12 = add64(res12, T);
    T = srli64(res12, DIGIT_SIZE);
    res12 = and64(res12, MASK);
    storeu64(out_mb + MB_WIDTH * 12, res12);
    res13 = add64(res13, T);
    T = srli64(res13, DIGIT_SIZE);
    res13 = and64(res13, MASK);
    storeu64(out_mb + MB_WIDTH * 13, res13);
    res14 = add64(res14, T);
    T = srli64(res14, DIGIT_SIZE);
    res14 = and64(res14, MASK);
    storeu64(out_mb + MB_WIDTH * 14, res14);
    res15 = add64(res15, T);
    T = srli64(res15, DIGIT_SIZE);
    res15 = and64(res15, MASK);
    storeu64(out_mb + MB_WIDTH * 15, res15);
    res16 = add64(res16, T);
    T = srli64(res16, DIGIT_SIZE);
    res16 = and64(res16, MASK);
    storeu64(out_mb + MB_WIDTH * 16, res16);
    res17 = add64(res17, T);
    T = srli64(res17, DIGIT_SIZE);
    res17 = and64(res17, MASK);
    storeu64(out_mb + MB_WIDTH * 17, res17);
    res18 = add64(res18, T);
    T = srli64(res18, DIGIT_SIZE);
    res18 = and64(res18, MASK);
    storeu64(out_mb + MB_WIDTH * 18, res18);
    res19 = add64(res19, T);
    T = srli64(res19, DIGIT_SIZE);
    res19 = and64(res19, MASK);
    storeu64(out_mb + MB_WIDTH * 19, res19);
    res20 = add64(res20, T);
    T = srli64(res20, DIGIT_SIZE);
    res20 = and64(res20, MASK);
    storeu64(out_mb + MB_WIDTH * 20, res20);
    res21 = add64(res21, T);
    T = srli64(res21, DIGIT_SIZE);
    res21 = and64(res21, MASK);
    storeu64(out_mb + MB_WIDTH * 21, res21);
    res22 = add64(res22, T);
    T = srli64(res22, DIGIT_SIZE);
    res22 = and64(res22, MASK);
    storeu64(out_mb + MB_WIDTH * 22, res22);
    res23 = add64(res23, T);
    T = srli64(res23, DIGIT_SIZE);
    res23 = and64(res23, MASK);
    storeu64(out_mb + MB_WIDTH * 23, res23);
    res24 = add64(res24, T);
    T = srli64(res24, DIGIT_SIZE);
    res24 = and64(res24, MASK);
    storeu64(out_mb + MB_WIDTH * 24, res24);
    res25 = add64(res25, T);
    T = srli64(res25, DIGIT_SIZE);
    res25 = and64(res25, MASK);
    storeu64(out_mb + MB_WIDTH * 25, res25);
    res26 = add64(res26, T);
    T = srli64(res26, DIGIT_SIZE);
    res26 = and64(res26, MASK);
    storeu64(out_mb + MB_WIDTH * 26, res26);
    res27 = add64(res27, T);
    T = srli64(res27, DIGIT_SIZE);
    res27 = and64(res27, MASK);
    storeu64(out_mb + MB_WIDTH * 27, res27);
    res28 = add64(res28, T);
    T = srli64(res28, DIGIT_SIZE);
    res28 = and64(res28, MASK);
    storeu64(out_mb + MB_WIDTH * 28, res28);
    res29 = add64(res29, T);
    T = srli64(res29, DIGIT_SIZE);
    res29 = and64(res29, MASK);
    storeu64(out_mb + MB_WIDTH * 29, res29);
    res30 = add64(res30, T);
    T = srli64(res30, DIGIT_SIZE);
    res30 = and64(res30, MASK);
    storeu64(out_mb + MB_WIDTH * 30, res30);
    res31 = add64(res31, T);
    T = srli64(res31, DIGIT_SIZE);
    res31 = and64(res31, MASK);
    storeu64(out_mb + MB_WIDTH * 31, res31);
    res32 = add64(res32, T);
    T = srli64(res32, DIGIT_SIZE);
    res32 = and64(res32, MASK);
    storeu64(out_mb + MB_WIDTH * 32, res32);
    res33 = add64(res33, T);
    T = srli64(res33, DIGIT_SIZE);
    res33 = and64(res33, MASK);
    storeu64(out_mb + MB_WIDTH * 33, res33);
    res34 = add64(res34, T);
    T = srli64(res34, DIGIT_SIZE);
    res34 = and64(res34, MASK);
    storeu64(out_mb + MB_WIDTH * 34, res34);
    res35 = add64(res35, T);
    T = srli64(res35, DIGIT_SIZE);
    res35 = and64(res35, MASK);
    storeu64(out_mb + MB_WIDTH * 35, res35);
    res36 = add64(res36, T);
    T = srli64(res36, DIGIT_SIZE);
    res36 = and64(res36, MASK);
    storeu64(out_mb + MB_WIDTH * 36, res36);
    res37 = add64(res37, T);
    T = srli64(res37, DIGIT_SIZE);
    res37 = and64(res37, MASK);
    storeu64(out_mb + MB_WIDTH * 37, res37);
    res38 = add64(res38, T);
    T = srli64(res38, DIGIT_SIZE);
    res38 = and64(res38, MASK);
    storeu64(out_mb + MB_WIDTH * 38, res38);
    res39 = add64(res39, T);
    T = srli64(res39, DIGIT_SIZE);
    res39 = and64(res39, MASK);
    storeu64(out_mb + MB_WIDTH * 39, res39);
    res40 = add64(res40, T);
    T = srli64(res40, DIGIT_SIZE);
    res40 = and64(res40, MASK);
    storeu64(out_mb + MB_WIDTH * 40, res40);
    res41 = add64(res41, T);
    T = srli64(res41, DIGIT_SIZE);
    res41 = and64(res41, MASK);
    storeu64(out_mb + MB_WIDTH * 41, res41);
    res42 = add64(res42, T);
    T = srli64(res42, DIGIT_SIZE);
    res42 = and64(res42, MASK);
    storeu64(out_mb + MB_WIDTH * 42, res42);
    res43 = add64(res43, T);
    T = srli64(res43, DIGIT_SIZE);
    res43 = and64(res43, MASK);
    storeu64(out_mb + MB_WIDTH * 43, res43);
    res44 = add64(res44, T);
    T = srli64(res44, DIGIT_SIZE);
    res44 = and64(res44, MASK);
    storeu64(out_mb + MB_WIDTH * 44, res44);
    res45 = add64(res45, T);
    T = srli64(res45, DIGIT_SIZE);
    res45 = and64(res45, MASK);
    storeu64(out_mb + MB_WIDTH * 45, res45);
    res46 = add64(res46, T);
    T = srli64(res46, DIGIT_SIZE);
    res46 = and64(res46, MASK);
    storeu64(out_mb + MB_WIDTH * 46, res46);
    res47 = add64(res47, T);
    T = srli64(res47, DIGIT_SIZE);
    res47 = and64(res47, MASK);
    storeu64(out_mb + MB_WIDTH * 47, res47);
    res48 = add64(res48, T);
    T = srli64(res48, DIGIT_SIZE);
    res48 = and64(res48, MASK);
    storeu64(out_mb + MB_WIDTH * 48, res48);
    res49 = add64(res49, T);
    T = srli64(res49, DIGIT_SIZE);
    res49 = and64(res49, MASK);
    storeu64(out_mb + MB_WIDTH * 49, res49);
    res50 = add64(res50, T);
    T = srli64(res50, DIGIT_SIZE);
    res50 = and64(res50, MASK);
    storeu64(out_mb + MB_WIDTH * 50, res50);
    res51 = add64(res51, T);
    T = srli64(res51, DIGIT_SIZE);
    res51 = and64(res51, MASK);
    storeu64(out_mb + MB_WIDTH * 51, res51);
    res52 = add64(res52, T);
    T = srli64(res52, DIGIT_SIZE);
    res52 = and64(res52, MASK);
    storeu64(out_mb + MB_WIDTH * 52, res52);
    res53 = add64(res53, T);
    T = srli64(res53, DIGIT_SIZE);
    res53 = and64(res53, MASK);
    storeu64(out_mb + MB_WIDTH * 53, res53);
    res54 = add64(res54, T);
    T = srli64(res54, DIGIT_SIZE);
    res54 = and64(res54, MASK);
    storeu64(out_mb + MB_WIDTH * 54, res54);
    res55 = add64(res55, T);
    T = srli64(res55, DIGIT_SIZE);
    res55 = and64(res55, MASK);
    storeu64(out_mb + MB_WIDTH * 55, res55);
    res56 = add64(res56, T);
    T = srli64(res56, DIGIT_SIZE);
    res56 = and64(res56, MASK);
    storeu64(out_mb + MB_WIDTH * 56, res56);
    res57 = add64(res57, T);
    T = srli64(res57, DIGIT_SIZE);
    res57 = and64(res57, MASK);
    storeu64(out_mb + MB_WIDTH * 57, res57);
    res58 = add64(res58, T);
    T = srli64(res58, DIGIT_SIZE);
    res58 = and64(res58, MASK);
    storeu64(out_mb + MB_WIDTH * 58, res58);
    res59 = add64(res59, T);
    res59 = and64(res59, MASK);
    storeu64(out_mb + MB_WIDTH * 59, res59);
  }
}
