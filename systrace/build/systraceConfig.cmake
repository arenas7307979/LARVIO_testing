# The MIT License
#
# Copyright (c) 2017 Rafael Muñoz-Salinas
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#

# ===================================================================================
#  systrace CMake configuration file
#
#             ** File generated automatically, do not modify **
#
#  Usage from an external project:
#    In your CMakeLists.txt, add these lines:
#
#    find_package(systrace REQUIRED )
#    target_link_libraries(MY_TARGET_NAME )
#
#    This file will define the following variables:
#      - systrace_LIBS          : The list of libraries to links against.
#      - systrace_LIB_DIR       : The directory where lib files are.
#      - systrace_VERSION       : The version of this systrace build. Example: "1.2.0"
#      - systrace_VERSION_MAJOR : Major version part of VERSION. Example: "1"
#      - systrace_VERSION_MINOR : Minor version part of VERSION. Example: "2"
#      - systrace_VERSION_PATCH : Patch version part of VERSION. Example: "0"
#
# ===================================================================================

include_directories("/usr/local/include")
set(systrace_INCLUDE_DIRS "/usr/local/include")

link_directories("/usr/local/lib")
set(systrace_LIB_DIR "/usr/local/lib")

set(systrace_LIBS  systrace)

set(systrace_FOUND TRUE)
set(systrace_VERSION 0.0.1)
set(systrace_VERSION_MAJOR 0)
set(systrace_VERSION_MINOR 0)
set(systrace_VERSION_PATCH 1)
