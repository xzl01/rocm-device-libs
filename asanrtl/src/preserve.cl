/*===--------------------------------------------------------------------------
 *                   ROCm Device Libraries
 *
 * This file is distributed under the University of Illinois Open Source
 * License. See LICENSE.TXT for details.
 *===------------------------------------------------------------------------*/

#include "asan_util.h"
extern void __asan_report_load1 (uptr addr);
extern void __asan_report_load1_noabort (uptr addr);
extern void __asan_report_load2 (uptr addr);
extern void __asan_report_load2_noabort (uptr addr);
extern void __asan_report_load4 (uptr addr);
extern void __asan_report_load4_noabort (uptr addr);
extern void __asan_report_load8 (uptr addr);
extern void __asan_report_load8_noabort (uptr addr);
extern void __asan_report_load16 (uptr addr);
extern void __asan_report_load16_noabort (uptr addr);
extern void __asan_report_store1 (uptr addr);
extern void __asan_report_store1_noabort (uptr addr);
extern void __asan_report_store2 (uptr addr);
extern void __asan_report_store2_noabort (uptr addr);
extern void __asan_report_store4 (uptr addr);
extern void __asan_report_store4_noabort (uptr addr);
extern void __asan_report_store8 (uptr addr);
extern void __asan_report_store8_noabort (uptr addr);
extern void __asan_report_store16 (uptr addr);
extern void __asan_report_store16_noabort (uptr addr);
extern void __asan_report_store_n (uptr addr, uptr size);
extern void __asan_report_store_n_noabort (uptr addr, uptr size);
extern void __asan_report_load_n (uptr addr, uptr size);
extern void __asan_report_load_n_noabort (uptr addr, uptr size);
extern void __asan_load1 (uptr addr);
extern void __asan_load1_noabort (uptr addr);
extern void __asan_load2 (uptr addr);
extern void __asan_load2_noabort (uptr addr);
extern void __asan_load4 (uptr addr);
extern void __asan_load4_noabort (uptr addr);
extern void __asan_load8 (uptr addr);
extern void __asan_load8_noabort (uptr addr);
extern void __asan_load16 (uptr addr);
extern void __asan_load16_noabort (uptr addr);
extern void __asan_store1 (uptr addr);
extern void __asan_store1_noabort (uptr addr);
extern void __asan_store2 (uptr addr);
extern void __asan_store2_noabort (uptr addr);
extern void __asan_store4 (uptr addr);
extern void __asan_store4_noabort (uptr addr);
extern void __asan_store8 (uptr addr);
extern void __asan_store8_noabort (uptr addr);
extern void __asan_store16 (uptr addr);
extern void __asan_store16_noabort (uptr addr);
extern void __asan_store_n (uptr addr, uptr size);
extern void __asan_store_n_noabort (uptr addr, uptr size);
extern void __asan_load_n (uptr addr, uptr size);
extern void __asan_load_n_noabort (uptr addr, uptr size);
extern uptr __asan_region_is_poisoned(uptr beg, uptr size);
extern void* __asan_memmove(void* to, void* from, uptr size);
extern void* __asan_memcpy(void* to, void* from, uptr size);
extern void* __asan_memset(void* s, int c, uptr n);
extern void __asan_handle_no_return(void);
extern void __sanitizer_ptr_cmp(uptr a, uptr b);
extern void __sanitizer_ptr_sub(uptr a, uptr b);
extern void __asan_before_dynamic_init(uptr addr);
extern void __asan_after_dynamic_init(void);
extern void __asan_register_globals(uptr start, uptr n);
extern void __asan_unregister_globals(uptr start, uptr n);
extern void __asan_register_image_globals(uptr flag);
extern void __asan_unregister_image_globals(uptr flag);
extern void __asan_register_elf_globals(uptr flag, uptr start, uptr stop);
extern void __asan_unregister_elf_globals(uptr flag, uptr start, uptr stop);
extern void __asan_init(void);
extern void __asan_version_mismatch_check_v8(void);

//  Functions called within the below function must not get inlined and their
//  names want to be preserved at higher opt level to enable linking between
//  module compiled with asan instrumentation and asan device rtl.
OPT_NONE void
__amdgpu_device_library_preserve_asan_functions(void)
{
    __asan_report_load1(0);
    __asan_report_load1_noabort(0);
    __asan_report_load2(0);
    __asan_report_load2_noabort(0);
    __asan_report_load4(0);
    __asan_report_load4_noabort(0);
    __asan_report_load8(0);
    __asan_report_load8_noabort(0);
    __asan_report_load16(0);
    __asan_report_load16_noabort(0);
    __asan_report_store1(0);
    __asan_report_store1_noabort(0);
    __asan_report_store2(0);
    __asan_report_store2_noabort(0);
    __asan_report_store4(0);
    __asan_report_store4_noabort(0);
    __asan_report_store8(0);
    __asan_report_store8_noabort(0);
    __asan_report_store16(0);
    __asan_report_store16_noabort(0);
    __asan_report_store_n(0, 0);
    __asan_report_store_n_noabort(0, 0);
    __asan_report_load_n(0, 0);
    __asan_report_load_n_noabort(0, 0);
    __asan_load1(0);
    __asan_load1_noabort(0);
    __asan_load2(0);
    __asan_load2_noabort(0);
    __asan_load4(0);
    __asan_load4_noabort(0);
    __asan_load8(0);
    __asan_load8_noabort(0);
    __asan_load16(0);
    __asan_load16_noabort(0);
    __asan_store1(0);
    __asan_store1_noabort(0);
    __asan_store2(0);
    __asan_store2_noabort(0);
    __asan_store4(0);
    __asan_store4_noabort(0);
    __asan_store8(0);
    __asan_store8_noabort(0);
    __asan_store16(0);
    __asan_store16_noabort(0);
    __asan_store_n(0, 0);
    __asan_store_n_noabort(0, 0);
    __asan_load_n(0, 0);
    __asan_load_n_noabort(0, 0);
    __asan_region_is_poisoned(0, 0);
    (void)__asan_memmove((void*)0, (void*)0, 0);
    (void)__asan_memcpy((void*)0, (void*)0, 0);
    (void)__asan_memset((void*)0, 0, 0);
    __asan_handle_no_return();
    __sanitizer_ptr_cmp(0, 0);
    __sanitizer_ptr_sub(0, 0);
    __asan_before_dynamic_init(0);
    __asan_after_dynamic_init();
    __asan_register_globals(0, 0);
    __asan_unregister_globals(0, 0);
    __asan_register_image_globals(0);
    __asan_unregister_image_globals(0);
    __asan_register_elf_globals(0, 0, 0);
    __asan_unregister_elf_globals(0, 0, 0);
    __asan_init();
    __asan_version_mismatch_check_v8();
}

