// Copyright 2016 The University of North Carolina at Chapel Hill
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Please send all BUG REPORTS to <pavel@cs.unc.edu>.
// <http://gamma.cs.unc.edu/FasTC/>

// BPTCConfig.h.in  -- This file contains variables that are introduced
// explicitly by the CMake build process.

// Do we have the proper popcnt instruction defined?
#define NO_INLINE_ASSEMBLY
/* #undef HAS_SSE_POPCNT */
/* #undef HAS_SSE_41 */

#define HAS_ATOMICS
/* #undef HAS_GCC_ATOMICS */
#define HAS_MSVC_ATOMICS

/* #undef FOUND_NVTT_BPTC_EXPORT */
