
PACKAGES =+ "${PN}-ffi-headers"

PACKAGE_SNAP_LIB_SYMLINKS = "0"
INSANE_SKIP_${PN}-ffi-headers += "dev-so"

FILES_${PN}-ffi-headers = "/usr/include/boost/config/stdlib/libstdcpp3.hpp \
     /usr/include/boost/config/stdlib/libcpp.hpp \
     /usr/include/boost/config/stdlib/stlport.hpp \
     /usr/include/boost/config/stdlib/libcomo.hpp \
     /usr/include/boost/config/stdlib/sgi.hpp \
     /usr/include/boost/config/stdlib/modena.hpp \
     /usr/include/boost/config/stdlib/msl.hpp \
     /usr/include/boost/config/stdlib/roguewave.hpp \
     /usr/include/boost/config/stdlib/vacpp.hpp \
     /usr/include/boost/config/stdlib/dinkumware.hpp \
     /usr/include/boost/config/abi_prefix.hpp \
     /usr/include/boost/config/select_stdlib_config.hpp \
     /usr/include/boost/static_assert.hpp \
     /usr/include/boost/detail/workaround.hpp \
     /usr/include/boost/core/enable_if.hpp \
     /usr/include/boost/core/noncopyable.hpp \
     /usr/include/boost/type_traits/has_new_operator.hpp \
     /usr/include/boost/type_traits/floating_point_promotion.hpp \
     /usr/include/boost/type_traits/is_complex.hpp \
     /usr/include/boost/type_traits/detail \
     /usr/include/boost/type_traits/detail/common_type_impl.hpp \
     /usr/include/boost/type_traits/detail/has_postfix_operator.hpp \
     /usr/include/boost/type_traits/detail/has_prefix_operator.hpp \
     /usr/include/boost/type_traits/detail/composite_member_pointer_type.hpp \
     /usr/include/boost/type_traits/detail/has_binary_operator.hpp \
     /usr/include/boost/type_traits/detail/is_mem_fun_pointer_impl.hpp \
     /usr/include/boost/type_traits/detail/common_arithmetic_type.hpp \
     /usr/include/boost/type_traits/detail/mp_defer.hpp \
     /usr/include/boost/type_traits/detail/config.hpp \
     /usr/include/boost/type_traits/detail/yes_no_type.hpp \
     /usr/include/boost/type_traits/detail/composite_pointer_type.hpp \
     /usr/include/boost/type_traits/detail/is_function_ptr_helper.hpp \
     /usr/include/boost/type_traits/detail/is_mem_fun_pointer_tester.hpp \
     /usr/include/boost/type_traits/detail/is_function_ptr_tester.hpp \
     /usr/include/boost/type_traits/is_nothrow_move_assignable.hpp \
     /usr/include/boost/type_traits/has_right_shift.hpp \
     /usr/include/boost/type_traits/is_object.hpp \
     /usr/include/boost/type_traits/has_dereference.hpp \
     /usr/include/boost/type_traits/has_modulus_assign.hpp \
     /usr/include/boost/type_traits/remove_pointer.hpp \
     /usr/include/boost/type_traits/add_const.hpp \
     /usr/include/boost/type_traits/is_floating_point.hpp \
     /usr/include/boost/type_traits/is_constructible.hpp \
     /usr/include/boost/type_traits/has_pre_decrement.hpp \
     /usr/include/boost/type_traits/has_nothrow_destructor.hpp \
     /usr/include/boost/type_traits/has_trivial_copy.hpp \
     /usr/include/boost/type_traits/has_logical_and.hpp \
     /usr/include/boost/type_traits/function_traits.hpp \
     /usr/include/boost/type_traits/is_arithmetic.hpp \
     /usr/include/boost/type_traits/is_assignable.hpp \
     /usr/include/boost/type_traits/has_multiplies.hpp \
     /usr/include/boost/type_traits/has_post_increment.hpp \
     /usr/include/boost/type_traits/has_divides.hpp \
     /usr/include/boost/type_traits/remove_bounds.hpp \
     /usr/include/boost/type_traits/make_signed.hpp \
     /usr/include/boost/type_traits/is_volatile.hpp \
     /usr/include/boost/type_traits/has_multiplies_assign.hpp \
     /usr/include/boost/type_traits/remove_const.hpp \
     /usr/include/boost/type_traits/is_final.hpp \
     /usr/include/boost/type_traits/add_lvalue_reference.hpp \
     /usr/include/boost/type_traits/is_pod.hpp \
     /usr/include/boost/type_traits/remove_extent.hpp \
     /usr/include/boost/type_traits/is_fundamental.hpp \
     /usr/include/boost/type_traits/has_pre_increment.hpp \
     /usr/include/boost/type_traits/has_trivial_destructor.hpp \
     /usr/include/boost/type_traits/has_logical_not.hpp \
     /usr/include/boost/type_traits/has_virtual_destructor.hpp \
     /usr/include/boost/type_traits/is_base_and_derived.hpp \
     /usr/include/boost/type_traits/extent.hpp \
     /usr/include/boost/type_traits/has_divides_assign.hpp \
     /usr/include/boost/type_traits/has_bit_or.hpp \
     /usr/include/boost/type_traits/has_trivial_move_constructor.hpp \
     /usr/include/boost/type_traits/has_bit_or_assign.hpp \
     /usr/include/boost/type_traits/is_integral.hpp \
     /usr/include/boost/type_traits/has_minus.hpp \
     /usr/include/boost/type_traits/is_copy_constructible.hpp \
     /usr/include/boost/type_traits/has_modulus.hpp \
     /usr/include/boost/type_traits/rank.hpp \
     /usr/include/boost/type_traits/has_left_shift_assign.hpp \
     /usr/include/boost/type_traits/add_reference.hpp \
     /usr/include/boost/type_traits/is_rvalue_reference.hpp \
     /usr/include/boost/type_traits/is_enum.hpp \
     /usr/include/boost/type_traits/decay.hpp \
     /usr/include/boost/type_traits/conditional.hpp \
     /usr/include/boost/type_traits/is_member_function_pointer.hpp \
     /usr/include/boost/type_traits/remove_reference.hpp \
     /usr/include/boost/type_traits/promote.hpp \
     /usr/include/boost/type_traits/has_nothrow_assign.hpp \
     /usr/include/boost/type_traits/is_compound.hpp \
     /usr/include/boost/type_traits/has_plus.hpp \
     /usr/include/boost/type_traits/is_array.hpp \
     /usr/include/boost/type_traits/has_right_shift_assign.hpp \
     /usr/include/boost/type_traits/is_copy_assignable.hpp \
     /usr/include/boost/type_traits/has_equal_to.hpp \
     /usr/include/boost/type_traits/has_trivial_constructor.hpp \
     /usr/include/boost/type_traits/is_const.hpp \
     /usr/include/boost/type_traits/declval.hpp \
     /usr/include/boost/type_traits/is_function.hpp \
     /usr/include/boost/type_traits/has_bit_and.hpp \
     /usr/include/boost/type_traits/is_lvalue_reference.hpp \
     /usr/include/boost/type_traits/is_class.hpp \
     /usr/include/boost/type_traits/has_logical_or.hpp \
     /usr/include/boost/type_traits/is_reference.hpp \
     /usr/include/boost/type_traits/aligned_storage.hpp \
     /usr/include/boost/type_traits/is_same.hpp \
     /usr/include/boost/type_traits/common_type.hpp \
     /usr/include/boost/type_traits/is_pointer.hpp \
     /usr/include/boost/type_traits/add_volatile.hpp \
     /usr/include/boost/type_traits/has_negate.hpp \
     /usr/include/boost/type_traits/add_rvalue_reference.hpp \
     /usr/include/boost/type_traits/is_polymorphic.hpp \
     /usr/include/boost/type_traits/has_complement.hpp \
     /usr/include/boost/type_traits/has_nothrow_copy.hpp \
     /usr/include/boost/type_traits/is_scalar.hpp \
     /usr/include/boost/type_traits/alignment_of.hpp \
     /usr/include/boost/type_traits/integral_promotion.hpp \
     /usr/include/boost/type_traits/is_virtual_base_of.hpp \
     /usr/include/boost/type_traits/integral_constant.hpp \
     /usr/include/boost/type_traits/has_unary_minus.hpp \
     /usr/include/boost/type_traits/remove_cv.hpp \
     /usr/include/boost/type_traits/is_abstract.hpp \
     /usr/include/boost/type_traits/has_nothrow_constructor.hpp \
     /usr/include/boost/type_traits/remove_all_extents.hpp \
     /usr/include/boost/type_traits/has_bit_and_assign.hpp \
     /usr/include/boost/type_traits/has_greater_equal.hpp \
     /usr/include/boost/type_traits/has_trivial_assign.hpp \
     /usr/include/boost/type_traits/has_bit_xor_assign.hpp \
     /usr/include/boost/type_traits/is_stateless.hpp \
     /usr/include/boost/type_traits/add_cv.hpp \
     /usr/include/boost/type_traits/has_minus_assign.hpp \
     /usr/include/boost/type_traits/has_left_shift.hpp \
     /usr/include/boost/type_traits/has_plus_assign.hpp \
     /usr/include/boost/type_traits/remove_volatile.hpp \
     /usr/include/boost/type_traits/is_default_constructible.hpp \
     /usr/include/boost/type_traits/is_member_pointer.hpp \
     /usr/include/boost/type_traits/make_unsigned.hpp \
     /usr/include/boost/type_traits/has_less_equal.hpp \
     /usr/include/boost/type_traits/is_destructible.hpp \
     /usr/include/boost/type_traits/is_nothrow_move_constructible.hpp \
     /usr/include/boost/type_traits/is_base_of.hpp \
     /usr/include/boost/type_traits/type_identity.hpp \
     /usr/include/boost/type_traits/has_trivial_move_assign.hpp \
     /usr/include/boost/type_traits/has_unary_plus.hpp \
     /usr/include/boost/type_traits/has_less.hpp \
     /usr/include/boost/type_traits/type_with_alignment.hpp \
     /usr/include/boost/type_traits/is_void.hpp \
     /usr/include/boost/type_traits/intrinsics.hpp \
     /usr/include/boost/type_traits/add_pointer.hpp \
     /usr/include/boost/type_traits/is_union.hpp \
     /usr/include/boost/type_traits/is_unsigned.hpp \
     /usr/include/boost/type_traits/is_member_object_pointer.hpp \
     /usr/include/boost/type_traits/copy_cv.hpp \
     /usr/include/boost/type_traits/is_empty.hpp \
     /usr/include/boost/type_traits/is_float.hpp \
     /usr/include/boost/type_traits/is_convertible.hpp \
     /usr/include/boost/type_traits/has_greater.hpp \
     /usr/include/boost/type_traits/has_not_equal_to.hpp \
     /usr/include/boost/type_traits/has_bit_xor.hpp \
     /usr/include/boost/type_traits/is_signed.hpp \
     /usr/include/boost/type_traits/has_post_decrement.hpp \
     /usr/include/boost/version.hpp \
     /usr/include/boost/type_traits.hpp \
     /usr/include/boost/config.hpp \
     /usr/include/boost/config \
     /usr/include/boost/config/posix_features.hpp \
     /usr/include/boost/config/warning_disable.hpp \
     /usr/include/boost/config/select_compiler_config.hpp \
     /usr/include/boost/config/compiler \
     /usr/include/boost/config/compiler/gcc.hpp \
     /usr/include/boost/config/compiler/hp_acc.hpp \
     /usr/include/boost/config/compiler/common_edg.hpp \
     /usr/include/boost/config/compiler/pgi.hpp \
     /usr/include/boost/config/compiler/kai.hpp \
     /usr/include/boost/config/compiler/metrowerks.hpp \
     /usr/include/boost/config/compiler/digitalmars.hpp \
     /usr/include/boost/config/compiler/cray.hpp \
     /usr/include/boost/config/compiler/comeau.hpp \
     /usr/include/boost/config/compiler/codegear.hpp \
     /usr/include/boost/config/compiler/compaq_cxx.hpp \
     /usr/include/boost/config/compiler/visualc.hpp \
     /usr/include/boost/config/compiler/greenhills.hpp \
     /usr/include/boost/config/compiler/clang.hpp \
     /usr/include/boost/config/compiler/sgi_mipspro.hpp \
     /usr/include/boost/config/compiler/mpw.hpp \
     /usr/include/boost/config/compiler/intel.hpp \
     /usr/include/boost/config/compiler/gcc_xml.hpp \
     /usr/include/boost/config/compiler/pathscale.hpp \
     /usr/include/boost/config/compiler/xlcpp.hpp \
     /usr/include/boost/config/compiler/sunpro_cc.hpp \
     /usr/include/boost/config/compiler/vacpp.hpp \
     /usr/include/boost/config/compiler/nvcc.hpp \
     /usr/include/boost/config/compiler/borland.hpp \
     /usr/include/boost/config/suffix.hpp \
     /usr/include/boost/config/platform \
     /usr/include/boost/config/platform/qnxnto.hpp \
     /usr/include/boost/config/platform/solaris.hpp \
     /usr/include/boost/config/platform/hpux.hpp \
     /usr/include/boost/config/platform/vxworks.hpp \
     /usr/include/boost/config/platform/irix.hpp \
     /usr/include/boost/config/platform/cray.hpp \
     /usr/include/boost/config/platform/cygwin.hpp \
     /usr/include/boost/config/platform/macos.hpp \
     /usr/include/boost/config/platform/linux-gnueabi.hpp \
     /usr/include/boost/config/platform/linux.hpp \
     /usr/include/boost/config/platform/win32.hpp \
     /usr/include/boost/config/platform/haiku.hpp \
     /usr/include/boost/config/platform/beos.hpp \
     /usr/include/boost/config/platform/vms.hpp \
     /usr/include/boost/config/platform/bsd.hpp \
     /usr/include/boost/config/platform/symbian.hpp \
     /usr/include/boost/config/platform/amigaos.hpp \
     /usr/include/boost/config/platform/aix.hpp \
     /usr/include/boost/config/platform/cloudabi.hpp \
     /usr/include/boost/config/abi/borland_suffix.hpp \
     /usr/include/boost/config/abi/msvc_suffix.hpp \
     /usr/include/boost/config/abi/msvc_prefix.hpp \
     /usr/include/boost/config/abi/borland_prefix.hpp \
     /usr/include/boost/config/requires_threads.hpp \
     /usr/include/boost/config/select_platform_config.hpp \
     /usr/include/boost/config/user.hpp \
     /usr/include/boost/config/abi_suffix.hpp \
     /usr/include/boost/config/auto_link.hpp \
     /usr/include/boost/config/no_tr1/complex.hpp \
     /usr/include/boost/config/no_tr1/functional.hpp \
     /usr/include/boost/config/no_tr1/memory.hpp \
     /usr/include/boost/config/no_tr1/utility.hpp \
     /usr/include/boost/config/no_tr1/cmath.hpp \
     /usr/include/boost/utility/enable_if.hpp \
     /usr/include/boost/noncopyable.hpp"