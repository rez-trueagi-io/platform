REM This is a test / example call for coq_platform_make_windows.bat.
REM Please note that it is no problem to install several coq-platform releases into one cygwin.
REM Each coq-platform will create its own opam switch.
REM But you do need separate cygwin folders for compiling a 64 bit and 32 bit Coq (-arch=32).

CALL coq_platform_make_windows.bat ^
  -arch=64 ^
  -destcyg=C:\bin\cygwin64_coq_platform ^
  -cygcache=C:\bin\cygwin_cache ^
  -cygrepo=https://mirrors.kernel.org/sourceware/cygwin ^
  -packages="8.18~2023.11" -extent=x -parallel=p -jobs=8 -switch=k -compcert=y -large=i

REM NOTE: You can also call coq_platform_make_windows.bat from a cygwin prompt
REM (e.g. in case you use cygwin for GIT) but please remember to quote paths with
REM back slashes with single quotes then!
REM The above command would be at a cygwin shell prompt:
REM
REM   ./coq_platform_make_windows.bat \
REM     -arch=64 \
REM     -destcyg='C:\bin\cygwin64_coq_platform' \
REM     -cygcache='C:\bin\cygwin_cache' \
REM     -cygrepo=https://mirrors.kernel.org/sourceware/cygwin \
REM     -packages="8.18~2023.11" -extent=x -parallel=p -jobs=8 -switch=k -compcert=y -large=i
