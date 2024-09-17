/*
  Copyright 2019-2024 StarkWare Industries Ltd.

  Licensed under the Apache License, Version 2.0 (the "License").
  You may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  https://www.starkware.co/open-source-license/

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions
  and limitations under the License.
*/
// ---------- The following code was auto-generated. PLEASE DO NOT EDIT. ----------
// SPDX-License-Identifier: Apache-2.0.
pragma solidity ^0.6.12;

contract MemoryMap {
    /*
      We store the state of the verifier in a contiguous chunk of memory.
      The offsets of the different fields are listed below.
      E.g. The offset of the i'th hash is [mm_hashes + i].
    */
    uint256 constant internal MAX_N_QUERIES = 48;
    uint256 constant internal FRI_QUEUE_SIZE = MAX_N_QUERIES;

    uint256 constant internal MAX_FRI_STEPS = 10;
    uint256 constant internal MAX_SUPPORTED_FRI_STEP_SIZE = 4;

    uint256 constant internal MM_EVAL_DOMAIN_SIZE =                          0x0;
    uint256 constant internal MM_BLOW_UP_FACTOR =                            0x1;
    uint256 constant internal MM_LOG_EVAL_DOMAIN_SIZE =                      0x2;
    uint256 constant internal MM_PROOF_OF_WORK_BITS =                        0x3;
    uint256 constant internal MM_EVAL_DOMAIN_GENERATOR =                     0x4;
    uint256 constant internal MM_PUBLIC_INPUT_PTR =                          0x5;
    uint256 constant internal MM_TRACE_COMMITMENT =                          0x6; // uint256[2]
    uint256 constant internal MM_OODS_COMMITMENT =                           0x8;
    uint256 constant internal MM_N_UNIQUE_QUERIES =                          0x9;
    uint256 constant internal MM_CHANNEL =                                   0xa; // uint256[3]
    uint256 constant internal MM_MERKLE_QUEUE =                              0xd; // uint256[96]
    uint256 constant internal MM_FRI_QUEUE =                                0x6d; // uint256[144]
    uint256 constant internal MM_FRI_QUERIES_DELIMITER =                    0xfd;
    uint256 constant internal MM_FRI_CTX =                                  0xfe; // uint256[40]
    uint256 constant internal MM_FRI_STEP_SIZES_PTR =                      0x126;
    uint256 constant internal MM_FRI_EVAL_POINTS =                         0x127; // uint256[10]
    uint256 constant internal MM_FRI_COMMITMENTS =                         0x131; // uint256[10]
    uint256 constant internal MM_FRI_LAST_LAYER_DEG_BOUND =                0x13b;
    uint256 constant internal MM_FRI_LAST_LAYER_PTR =                      0x13c;
    uint256 constant internal MM_CONSTRAINT_POLY_ARGS_START =              0x13d;
    uint256 constant internal MM_PERIODIC_COLUMN__PEDERSEN__POINTS__X =    0x13d;
    uint256 constant internal MM_PERIODIC_COLUMN__PEDERSEN__POINTS__Y =    0x13e;
    uint256 constant internal MM_PERIODIC_COLUMN__POSEIDON__POSEIDON__FULL_ROUND_KEY0 = 0x13f;
    uint256 constant internal MM_PERIODIC_COLUMN__POSEIDON__POSEIDON__FULL_ROUND_KEY1 = 0x140;
    uint256 constant internal MM_PERIODIC_COLUMN__POSEIDON__POSEIDON__FULL_ROUND_KEY2 = 0x141;
    uint256 constant internal MM_PERIODIC_COLUMN__POSEIDON__POSEIDON__PARTIAL_ROUND_KEY0 = 0x142;
    uint256 constant internal MM_PERIODIC_COLUMN__POSEIDON__POSEIDON__PARTIAL_ROUND_KEY1 = 0x143;
    uint256 constant internal MM_TRACE_LENGTH =                            0x144;
    uint256 constant internal MM_OFFSET_SIZE =                             0x145;
    uint256 constant internal MM_HALF_OFFSET_SIZE =                        0x146;
    uint256 constant internal MM_INITIAL_AP =                              0x147;
    uint256 constant internal MM_INITIAL_PC =                              0x148;
    uint256 constant internal MM_FINAL_AP =                                0x149;
    uint256 constant internal MM_FINAL_PC =                                0x14a;
    uint256 constant internal MM_MEMORY__MULTI_COLUMN_PERM__PERM__INTERACTION_ELM = 0x14b;
    uint256 constant internal MM_MEMORY__MULTI_COLUMN_PERM__HASH_INTERACTION_ELM0 = 0x14c;
    uint256 constant internal MM_MEMORY__MULTI_COLUMN_PERM__PERM__PUBLIC_MEMORY_PROD = 0x14d;
    uint256 constant internal MM_RANGE_CHECK16__PERM__INTERACTION_ELM =    0x14e;
    uint256 constant internal MM_RANGE_CHECK16__PERM__PUBLIC_MEMORY_PROD = 0x14f;
    uint256 constant internal MM_RANGE_CHECK_MIN =                         0x150;
    uint256 constant internal MM_RANGE_CHECK_MAX =                         0x151;
    uint256 constant internal MM_DILUTED_CHECK__PERMUTATION__INTERACTION_ELM = 0x152;
    uint256 constant internal MM_DILUTED_CHECK__PERMUTATION__PUBLIC_MEMORY_PROD = 0x153;
    uint256 constant internal MM_DILUTED_CHECK__FIRST_ELM =                0x154;
    uint256 constant internal MM_DILUTED_CHECK__INTERACTION_Z =            0x155;
    uint256 constant internal MM_DILUTED_CHECK__INTERACTION_ALPHA =        0x156;
    uint256 constant internal MM_DILUTED_CHECK__FINAL_CUM_VAL =            0x157;
    uint256 constant internal MM_PEDERSEN__SHIFT_POINT_X =                 0x158;
    uint256 constant internal MM_PEDERSEN__SHIFT_POINT_Y =                 0x159;
    uint256 constant internal MM_INITIAL_PEDERSEN_ADDR =                   0x15a;
    uint256 constant internal MM_INITIAL_RANGE_CHECK_ADDR =                0x15b;
    uint256 constant internal MM_INITIAL_BITWISE_ADDR =                    0x15c;
    uint256 constant internal MM_INITIAL_POSEIDON_ADDR =                   0x15d;
    uint256 constant internal MM_TRACE_GENERATOR =                         0x15e;
    uint256 constant internal MM_OODS_POINT =                              0x15f;
    uint256 constant internal MM_INTERACTION_ELEMENTS =                    0x160; // uint256[6]
    uint256 constant internal MM_COMPOSITION_ALPHA =                       0x166;
    uint256 constant internal MM_OODS_VALUES =                             0x167; // uint256[192]
    uint256 constant internal MM_CONSTRAINT_POLY_ARGS_END =                0x227;
    uint256 constant internal MM_COMPOSITION_OODS_VALUES =                 0x227; // uint256[2]
    uint256 constant internal MM_OODS_EVAL_POINTS =                        0x229; // uint256[48]
    uint256 constant internal MM_OODS_ALPHA =                              0x259;
    uint256 constant internal MM_TRACE_QUERY_RESPONSES =                   0x25a; // uint256[576]
    uint256 constant internal MM_COMPOSITION_QUERY_RESPONSES =             0x49a; // uint256[96]
    uint256 constant internal MM_LOG_N_STEPS =                             0x4fa;
    uint256 constant internal MM_N_PUBLIC_MEM_ENTRIES =                    0x4fb;
    uint256 constant internal MM_N_PUBLIC_MEM_PAGES =                      0x4fc;
    uint256 constant internal MM_CONTEXT_SIZE =                            0x4fd;
}
// ---------- End of auto-generated code. ----------
