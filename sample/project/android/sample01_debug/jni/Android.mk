#
#   Copyright (c) 2007-2009 Takashi Kitao
#   All rights reserved.
#
#   Redistribution and use in source and binary forms, with or without
#   modification, are permitted provided that the following conditions
#   are met:
#
#   1. Redistributions of source code must retain the above copyright
#   `  notice, this list of conditions and the following disclaimer.
#
#   2. Redistributions in binary form must reproduce the above copyright
#   `  notice, this list of conditions and the following disclaimer in the
#   `  documentation and/or other materials provided with the distribution.
#
#   3. The name of the author may not be used to endorse or promote products
#   `  derived from this software without specific prior written permission.
#
#   THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
#   IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
#   OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
#   IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
#   INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
#   NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
#   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
#   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
#   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
#   THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#


LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := sample01_debug

LOCAL_SRC_FILES := \
	../catcake_logo.cpp \
	../debug_draw.cpp \
	../debug_mode.cpp \
	../main.cpp

LOCAL_C_INCLUDES := apps/catcake/include

LOCAL_CXXFLAGS := -O2 -Wall -s -DNDEBUG -DCK_NO_THROW_EXCEPTION

LOCAL_LDLIBS := -Lapps/catcake/lib -lcatcake -lfreetype -lpng -lz -lGLESv1_CM

include $(BUILD_SHARED_LIBRARY)
