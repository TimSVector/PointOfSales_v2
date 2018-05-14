@echo off
del commands.tmp
echo options ASSEMBLER_CMD  >> commands.tmp
echo options COMREADER_ENABLED FALSE >> commands.tmp
echo options C_ALT_COMPILE_CMD  >> commands.tmp
echo options C_ALT_EDG_FLAGS  >> commands.tmp
echo options C_ALT_PREPROCESS_CMD  >> commands.tmp
echo options C_COMPILER_CFG_SOURCE PY_CONFIGURATOR >> commands.tmp
echo options C_COMPILER_FAMILY_NAME GNU_Native >> commands.tmp
echo options C_COMPILER_HIERARCHY_STRING GNU Native_4.8_C >> commands.tmp
echo options C_COMPILER_PY_ARGS --lang c --version 4.8 >> commands.tmp
echo options C_COMPILER_TAG GNU_C_48 >> commands.tmp
echo options C_COMPILER_VERSION_CMD gcc --version >> commands.tmp
echo options C_COMPILE_CMD gcc -c -g >> commands.tmp
echo options C_COMPILE_CMD_FLAG -c >> commands.tmp
echo options C_COMPILE_EXCLUDE_FLAGS -o** >> commands.tmp
echo options C_DEBUG_CMD gdb >> commands.tmp
echo options C_DEBUG_HELP_FILE  >> commands.tmp
echo options C_DEFINE_FLAG -D >> commands.tmp
echo options C_DEFINE_LIST  >> commands.tmp
echo options C_EDG_FLAGS -w --gcc --gnu_version 40800 >> commands.tmp
echo options C_EXECUTE_CMD  >> commands.tmp
echo options C_EXEC_HELP_FILE  >> commands.tmp
echo options C_INCLUDE_FLAG -I >> commands.tmp
echo options C_LINKER_VERSION_CMD ld --version >> commands.tmp
echo options C_LINK_CMD gcc -g >> commands.tmp
echo options C_LINK_OPTIONS  >> commands.tmp
echo options C_OBJECT_EXT .o >> commands.tmp
echo options C_OUTPUT_FLAG -o >> commands.tmp
echo options C_PREPROCESS_CMD gcc -E -C >> commands.tmp
echo options C_PREPROCESS_FILE  >> commands.tmp
echo options EXECUTABLE_EXTENSION  >> commands.tmp
echo options MAX_VARY_RANGE 20 >> commands.tmp
echo options PRECOMPILE_CMD  >> commands.tmp
echo options PRECOMPILE_EXT  >> commands.tmp
echo options SBF_LOC_MEMBER_IN_NSP DECL_NAMESPACE >> commands.tmp
echo options SBF_LOC_MEMBER_OUTSIDE_NSP DECL_NAMESPACE >> commands.tmp
echo options SBF_LOC_NONMEMBER_IN_NSP DECL_NAMESPACE >> commands.tmp
echo options SBF_LOC_NONMEMBER_OUTSIDE_NSP DECL_NAMESPACE >> commands.tmp
echo options SOURCE_EXTENSION .c >> commands.tmp
echo options SUBSTITUTE_CODE_FOR_C_FILE FALSE >> commands.tmp
echo options TARGET_VARIANT HOST >> commands.tmp
echo options VCAST_ALT_WB_METHOD FALSE >> commands.tmp
echo options VCAST_ASSEMBLY_FILE_EXTENSIONS s >> commands.tmp
echo options VCAST_ASSIGN_WITHOUT_COPY_CTOR TRUE >> commands.tmp
echo options VCAST_AUTO_CLEAR_TEST_USER_CODE FALSE >> commands.tmp
echo options VCAST_BUFFER_OUTPUT FALSE >> commands.tmp
echo options VCAST_COLLAPSE_STD_HEADERS COLLAPSE_SYSTEM_HEADERS >> commands.tmp
echo options VCAST_COMMAND_LINE_DEBUGGER TRUE >> commands.tmp
echo options VCAST_COMPILER_SUPPORTS_CPP_CASTS FALSE >> commands.tmp
echo options VCAST_COVERAGE_FOR_AGGREGATE_INIT TRUE >> commands.tmp
echo options VCAST_DISABLE_CPP_EXCEPTIONS FALSE >> commands.tmp
echo options VCAST_DISABLE_STD_CONTAINER_DETECTION FALSE >> commands.tmp
echo options VCAST_DISABLE_STD_STRING_DETECTION FALSE >> commands.tmp
echo options VCAST_DISABLE_STD_WSTRING_DETECTION TRUE >> commands.tmp
echo options VCAST_DISABLE_TI_BITFIELD FALSE >> commands.tmp
echo options VCAST_DISABLE_TI_STRING FALSE >> commands.tmp
echo options VCAST_DISPLAY_FUNCTION_COVERAGE TRUE >> commands.tmp
echo options VCAST_DISPLAY_UNINST_EXPR FALSE >> commands.tmp
echo options VCAST_DUMP_BUFFER FALSE >> commands.tmp
echo options VCAST_ENABLE_FUNCTION_CALL_COVERAGE TRUE >> commands.tmp
echo options VCAST_ENVIRONMENT_FILES  >> commands.tmp
echo options VCAST_ESCAPE_LINE_DIRECTIVES FALSE >> commands.tmp
echo options VCAST_EXECUTE_WITH_STDIO FALSE >> commands.tmp
echo options VCAST_EXECUTE_WITH_STDOUT FALSE >> commands.tmp
echo options VCAST_FAR_STDIN_DATA FALSE >> commands.tmp
echo options VCAST_FILE_INDEX FALSE >> commands.tmp
echo options VCAST_FILE_PREFIX  >> commands.tmp
echo options VCAST_FORCE_ELAB_TYPE_SPEC TRUE >> commands.tmp
echo options VCAST_FORCE_NO_USERGLOBALS FALSE >> commands.tmp
echo options VCAST_GH_INTEX_CMD  >> commands.tmp
echo options VCAST_GH_INT_FILE  >> commands.tmp
echo options VCAST_HAS_LONGLONG TRUE >> commands.tmp
echo options VCAST_INST_FILE_MAX_LINES 0 >> commands.tmp
echo options VCAST_MAIN FALSE >> commands.tmp
echo options VCAST_MAX_COVERED_SUBPROGRAMS 1000 >> commands.tmp
echo options VCAST_MAX_HEAP_SIZE 1000 >> commands.tmp
echo options VCAST_MAX_MCDC_STATEMENTS 1000 >> commands.tmp
echo options VCAST_MAX_STRING_LENGTH 1000 >> commands.tmp
echo options VCAST_MICROSOFT_LONG_LONG FALSE >> commands.tmp
echo options VCAST_MINIMAL_TERMINATION FALSE >> commands.tmp
echo options VCAST_NO_EXIT FALSE >> commands.tmp
echo options VCAST_NO_FFLUSH FALSE >> commands.tmp
echo options VCAST_NO_FLOAT FALSE >> commands.tmp
echo options VCAST_NO_LIMITS FALSE >> commands.tmp
echo options VCAST_NO_LONG_DOUBLE FALSE >> commands.tmp
echo options VCAST_NO_MALLOC FALSE >> commands.tmp
echo options VCAST_NO_SETJMP FALSE >> commands.tmp
echo options VCAST_NO_SIGNAL FALSE >> commands.tmp
echo options VCAST_NO_STDIN FALSE >> commands.tmp
echo options VCAST_NO_STDLIB FALSE >> commands.tmp
echo options VCAST_NO_STD_FILES FALSE >> commands.tmp
echo options VCAST_OUTPUT_BUFFER_SIZE 20000 >> commands.tmp
echo options VCAST_PREPEND_TO_PATH_DIRS  >> commands.tmp
echo options VCAST_PREPROCESS_PREINCLUDE $(VECTORCAST_DIR)/DATA/gnu_native/48/intrinsics.h >> commands.tmp
echo options VCAST_REMOVE_PREPROCESSOR_COMMENTS TRUE >> commands.tmp
echo options VCAST_RPTS_DEFAULT_FONT_FACE Arial(2) >> commands.tmp
echo options VCAST_STDIO FALSE >> commands.tmp
echo options VCAST_TORNADO_CONSTRUCTOR_CALL_FILE FALSE >> commands.tmp
echo options VCAST_USE_COMPOUND_FOR_BATCH FALSE >> commands.tmp
echo options VCAST_USE_EDG_PREPROCESSOR FALSE >> commands.tmp
echo options VCAST_USE_STATIC_MEMORY FALSE >> commands.tmp
echo options VCAST_USE_STD_STRING TRUE >> commands.tmp
echo options VCAST_USE_VCPP FALSE >> commands.tmp
echo options VCAST_VXWORKS FALSE >> commands.tmp
echo options WHITEBOX YES >> commands.tmp
echo clear_default_source_dirs  >> commands.tmp
echo options TESTABLE_SOURCE_DIR ../../database/inc/ >> commands.tmp
echo options TESTABLE_SOURCE_DIR ../../encrypt/inc/ >> commands.tmp
echo options TESTABLE_SOURCE_DIR ../../order_entry/inc/ >> commands.tmp
echo options TESTABLE_SOURCE_DIR ../../utils/inc/ >> commands.tmp
echo cover environment create PointOfSales_Coverage >> commands.tmp
echo /E:PointOfSales_Coverage cover options starting_unit_number  1 >> commands.tmp
echo /E:PointOfSales_Coverage cover options max_mcdc_conditions  8 >> commands.tmp
echo /E:PointOfSales_Coverage cover options in_place Y >> commands.tmp
echo /E:PointOfSales_Coverage cover options preprocessed_file Y >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_ada_extension ada >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_ada_extension ADA >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_ada_extension adb >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_ada_extension ADB >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_ada_extension a >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_ada_extension A >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_c_extension c >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_cpp_extension cpp >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_cpp_extension c++ >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_cpp_extension cxx >> commands.tmp
echo /E:PointOfSales_Coverage cover options add_cpp_extension cc >> commands.tmp
echo /E:PointOfSales_Coverage cover source add ../../utils/src/linked_list.c >> commands.tmp
echo /E:PointOfSales_Coverage cover source add ../../database/src/database.c >> commands.tmp
echo /E:PointOfSales_Coverage cover source add ../../order_entry/src/manager.c >> commands.tmp
echo /E:PointOfSales_Coverage cover source add ../../encrypt/src/encrypt.c >> commands.tmp
echo /E:PointOfSales_Coverage cover source add ../../encrypt/src/matrix_multiply.c >> commands.tmp
echo /E:PointOfSales_Coverage cover source add ../../main/pos_driver.c >> commands.tmp
echo /E:PointOfSales_Coverage cover source add ../../order_entry/src/waiting_list.c >> commands.tmp
echo /E:PointOfSales_Coverage cover source add ../../utils/src/whitebox.c >> commands.tmp
echo /E:PointOfSales_Coverage -u whitebox.c cover append_cover_io True >> commands.tmp
echo /E:PointOfSales_Coverage cover instrument Statement+Branch >> commands.tmp
@echo on
"%VECTORCAST_DIR%/CLICAST" /L:C tools execute commands.tmp false
