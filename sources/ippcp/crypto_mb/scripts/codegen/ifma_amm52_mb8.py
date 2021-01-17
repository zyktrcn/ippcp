################################################################################
# Copyright 2019-2020 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

## 
##  Purpose: MB RSA.
## 
##  Contents: codegenerator stuff. modular multiplication
##

import sys

# Global variables
typedef = ""
functions = ""
function_name = sys.argv[2]
code = ""

# Algorithm parameters
simd=True
n=20
if len(sys.argv) > 2:
    n = int(sys.argv[3])

parameters = "int64u* out_mb8, const int64u* inpA_mb8, const int64u* inpB_mb8, const int64u* inpM_mb8, const int64u* k0_mb8"

### Mutliplication code

# Define vars
res = list(map(lambda x: "res%02d" % x, range(0, n)))

# Define res values and set to 0
code += "  U64 " + ', '.join(res) + ";\n"

code += "//  __m512i* inpA_512 = (__m512i*)inpA_mb8;\n"
code += "//  __m512i* inpM_512 = (__m512i*)inpM_mb8;\n"
code += "  __m512i K = _mm512_loadu_si512(k0_mb8); /* k0[] */\n"
code += "  int itr;\n"

res = res + ["get_zero64()"]
code += "  "
code += " = ".join(res) + ";\n"
code += "\n"

## Multiplication body
code += "  for(itr=0; itr<%d; itr++) {\n" % n

# Load next digit
code += "    __m512i Yi;\n"
code += "    __m512i Bi = _mm512_loadu_si512(inpB_mb8);\n"
code += "    inpB_mb8 += 8;\n"

# Multiplication body
for i in range(0, n):
    code += "    _mm512_madd52lo_epu64_({digit}, {digit}, Bi, inpA_mb8, 64*{i});\n".format(digit=res[i], i=i)

code += "    Yi = _mm512_madd52lo_epu64(_mm512_setzero_si512(), {digit}, K);\n".format(digit=res[0], i=i)

for i in range(0, n):
    code += "    _mm512_madd52lo_epu64_({digit}, {digit}, Yi, inpM_mb8, 64*{i});\n".format(digit=res[i], i=i)

code += "    {digit0} = srli64({digit0}, DIGIT_SIZE);\n"\
        "    {digit1} = add64 ({digit1}, {digit0});\n".format(digit0=res[0], digit1=res[1])

for i in range(0, n):
    code += "    _mm512_madd52hi_epu64_({digit0}, {digit1}, Bi, inpA_mb8, 64*{i});\n".format(digit0=res[i], digit1=res[i+1], i=i)

for i in range(0, n):
    code += "    _mm512_madd52hi_epu64_({digit}, {digit}, Yi, inpM_mb8, 64*{i});\n".format(digit=res[i], i=i)

## End of mul loop
code += "  }\n"

code += "  // Normalization\n"
code += "  {\n"
code += "    __m512i T = get_zero64();\n" \
        "    __m512i MASK = _mm512_set1_epi64(DIGIT_MASK);\n"
for i in range(0, n):
    # Propogate carry
    if i > 0:
        code += "    {d} = add64({d}, T);\n".format(d = res[i])
    # Calculate carry
    if i < n-1:
        code += "    T = srli64({d}, DIGIT_SIZE);\n".format(d = res[i])
    # Mask and sore
    code += "    {d} = and64({d}, MASK);\n"\
            "    _mm512_storeu_si512(out_mb8+8*{i}, {d});\n".format(d = res[i], i=i)
code += "  }\n"

# load template and generate source code
f = open(sys.argv[1], 'r')
template = f.read()
f.close()

template = template.replace("{typedef}", typedef)
template = template.replace("{functions}", functions)
template = template.replace("{function_name}", function_name)
template = template.replace("{parameters}", parameters)
template = template.replace("{code}", code)

print(template)
