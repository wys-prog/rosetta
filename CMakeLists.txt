cmake_minimum_required(VERSION 3.18...3.31 FATAL_ERROR)

project(rosetta VERSION 0.1
	DESCRIPTION "Lua SDK"
	LANGUAGES C CXX
)

set(source_lua
  core/lua/lapi.c     core/lua/ldebug.h   core/lua/llex.h     core/lua/lparser.c  core/lua/ltm.h
  core/lua/lapi.h     core/lua/ldo.c      core/lua/llimits.h  core/lua/lparser.h  core/lua/lua.h
  core/lua/lauxlib.c  core/lua/ldo.h      core/lua/lmathlib.c core/lua/lprefix.h  core/lua/lua.hpp
  core/lua/lauxlib.h  core/lua/ldump.c    core/lua/lmem.c     core/lua/lstate.c   core/lua/luaconf.h
  core/lua/lbaselib.c core/lua/lfunc.c    core/lua/lmem.h     core/lua/lstate.h   core/lua/lualib.h
  core/lua/lcode.c    core/lua/lfunc.h    core/lua/loadlib.c  core/lua/lstring.c  core/lua/lundump.c
  core/lua/lcode.h    core/lua/lgc.c      core/lua/lobject.c  core/lua/lstring.h  core/lua/lundump.h
  core/lua/lcorolib.c core/lua/lgc.h      core/lua/lobject.h  core/lua/lstrlib.c  core/lua/lutf8lib.c
  core/lua/lctype.c   core/lua/linit.c    core/lua/lopcodes.c core/lua/ltable.c   core/lua/lvm.c
  core/lua/lctype.h   core/lua/liolib.c   core/lua/lopcodes.h core/lua/ltable.h   core/lua/lvm.h
  core/lua/ldblib.c   core/lua/ljumptab.h core/lua/lopnames.h core/lua/ltablib.c  core/lua/lzio.c
  core/lua/ldebug.c   core/lua/llex.c     core/lua/loslib.c   core/lua/ltm.c      core/lua/lzio.h 
)

set(source_core
  core/abi.h
  core/fli.cpp
  core/flic.cpp
  core/flic.hpp
  core/views.hpp
  core/debug/bin.cpp
  core/debug/bin.hpp
)

add_executable(rosetta
  ${source_lua}
  ${source_core}
)

target_compile_features(rosetta
  PRIVATE
    c_std_17
    cxx_std_23
)