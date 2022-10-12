
# Copyright(c) 2018 Intel Corporation

# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files(the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and / or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    $(call all-cpp-files-under, agnostic) \
    $(call all-c-files-under, agnostic) \
    $(call all-cpp-files-under, linux) \
    $(call all-c-files-under, linux) \
    $(call all-cpp-files-under, media_interface) \
    $(call all-c-files-under, media_interface) \
    $(call all-cpp-files-under, media_softlet) \
    $(call all-c-files-under, media_softlet) \
    $(call all-cpp-files-under, ../media_softlet)

LOCAL_SHARED_LIBRARIES := \
    libsync \
    libcutils \
    libutils \
    libdrm \
    libva \
    liblog \


LOCAL_STATIC_LIBRARIES := \
    libgmm_umd \

LOCAL_CPPFLAGS := \
    -Wno-error \
    -Wno-unused-parameter \
    -Wno-c++11-narrowing \
    -DDRV_I915 \
    -DOTC_GRALLOC \
    -DANDROID \
    -DANDROID_VERSION=800 \
    -fexceptions \
    -frtti \
    -std=c++14 \
    -DCLASS_TRACE=0 \
    -DENABLE_KERNELS \
    -DHEVC_FEI_ENABLE_CMRT \
    -DIGFX_DG2_SUPPORTED \
    -DIGFX_PVC_SUPPORTED \
    -DIGFX_PVC_CMFCPATCH_SUPPORTED \
    -DIGFX_GEN11_ICLLP_SUPPORTED \
    -DIGFX_GEN11_JSL_SUPPORTED \
    -DIGFX_GEN11_SUPPORTED \
    -DIGFX_GEN12_ADLN_SUPPORTED \
    -DIGFX_GEN12_ADLP_SUPPORTED \
    -DIGFX_GEN12_ADLS_SUPPORTED \
    -DIGFX_GEN12_DG1_SUPPORTED \
    -DIGFX_GEN12_RKL_SUPPORTED \
    -DIGFX_GEN12_SUPPORTED \
    -DIGFX_GEN12_TGLLP_CMFCPATCH_SUPPORTED \
    -DIGFX_GEN12_TGLLP_CMFC_SUPPORTED \
    -DIGFX_GEN12_TGLLP_SUPPORTED \
    -DIGFX_GEN12_TGLLP_SWSB_SUPPORTED \
    -DIGFX_GEN8_BDW_SUPPORTED \
    -DIGFX_GEN8_SUPPORTED \
    -DIGFX_GEN9_BXT_SUPPORTED \
    -DIGFX_GEN9_CFL_SUPPORTED \
    -DIGFX_GEN9_CML_SUPPORTED \
    -DIGFX_GEN9_CMPV_SUPPORTED \
    -DIGFX_GEN9_GLK_SUPPORTED \
    -DIGFX_GEN9_KBL_SUPPORTED \
    -DIGFX_GEN9_SKL_SUPPORTED \
    -DIGFX_GEN9_SUPPORTED \
    -DIGFX_XEHP_SDV_CMFCPATCH_SUPPORTED \
    -DIGFX_XEHP_SDV_SUPPORTED \
    -DIGFX_XE_HPG_CMFCPATCH_SUPPORTED \
    -DIGFX_XE_HPG_SUPPORTED \
    -DMEDIA_VERSION=\"22.6.0\" \
    -DMEDIA_VERSION_DETAILS=\"37cae42c6\" \
    -DVEBOX_AUTO_DENOISE_SUPPORTED=1 \
    -DX11_FOUND \
    -D_AV1_DECODE_SUPPORTED \
    -D_AV1_ENCODE_VDENC_SUPPORTED \
    -D_AVC_DECODE_SUPPORTED \
    -D_AVC_ENCODE_VDENC_SUPPORTED \
    -D_AVC_ENCODE_VME_SUPPORTED \
    -D_COMMON_ENCODE_SUPPORTED \
    -D_DECODE_PROCESSING_SUPPORTED \
    -D_HEVC_DECODE_SUPPORTED \
    -D_HEVC_ENCODE_VDENC_SUPPORTED \
    -D_HEVC_ENCODE_VME_SUPPORTED \
    -D_JPEG_DECODE_SUPPORTED \
    -D_JPEG_ENCODE_SUPPORTED \
    -D_MMC_SUPPORTED \
    -D_MPEG2_DECODE_SUPPORTED \
    -D_MPEG2_ENCODE_VME_SUPPORTED \
    -D_VC1_DECODE_SUPPORTED \
    -D_VP8_DECODE_SUPPORTED \
    -D_VP8_ENCODE_SUPPORTED \
    -D_VP9_DECODE_SUPPORTED \
    -D_VP9_ENCODE_VDENC_SUPPORTED \
    -D__STDC_CONSTANT_MACROS \
    -D__STDC_LIMIT_MACROS \
    -D__VPHAL_SFC_SUPPORTED=1 \
    -DiHD_drv_video_EXPORTS \
    -Wno-pragma-pack-suspicious-include

LOCAL_CONLYFLAGS = -x c++
LOCAL_CFLAGS = $(LOCAL_CPPFLAGS)

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/../media_common/agnostic/common/codec/shared \
    $(LOCAL_PATH)/agnostic/common/cm \
    $(LOCAL_PATH)/agnostic/common/codec/hal \
    $(LOCAL_PATH)/agnostic/common/codec/kernel \
    $(LOCAL_PATH)/agnostic/common/codec/shared \
    $(LOCAL_PATH)/agnostic/gen8/codec/hal \
    $(LOCAL_PATH)/agnostic/gen8/codec/kernel \
    $(LOCAL_PATH)/agnostic/gen8_bdw/codec/hal \
    $(LOCAL_PATH)/agnostic/gen9/codec/hal \
    $(LOCAL_PATH)/agnostic/gen9/codec/kernel \
    $(LOCAL_PATH)/agnostic/gen9_bxt/codec/hal \
    $(LOCAL_PATH)/agnostic/gen9_bxt/codec/kernel \
    $(LOCAL_PATH)/agnostic/gen9_skl/codec/hal \
    $(LOCAL_PATH)/agnostic/gen9_skl/codec/cmrt_kernel \
    $(LOCAL_PATH)/agnostic/gen9_glk/codec/hal \
    $(LOCAL_PATH)/agnostic/gen9_kbl/codec/hal \
    $(LOCAL_PATH)/agnostic/gen9_kbl/codec/kernel \
    $(LOCAL_PATH)/agnostic/gen10/codec/hal \
    $(LOCAL_PATH)/agnostic/gen10/codec/kernel \
    $(LOCAL_PATH)/agnostic/gen10/codec/share \
    $(LOCAL_PATH)/agnostic/gen11/codec/hal \
    $(LOCAL_PATH)/agnostic/gen11/codec/kernel \
    $(LOCAL_PATH)/agnostic/gen11/codec/share \
    $(LOCAL_PATH)/agnostic/gen11_icllp/codec/hal \
    $(LOCAL_PATH)/agnostic/gen11_icllp/codec/kernel \
    $(LOCAL_PATH)/agnostic/gen12/cm \
    $(LOCAL_PATH)/agnostic/gen12/codec/hal \
    $(LOCAL_PATH)/agnostic/gen12/codec/kernel \
    $(LOCAL_PATH)/agnostic/gen12/codec/kernelisa \
    $(LOCAL_PATH)/agnostic/gen12/codec/shared \
    $(LOCAL_PATH)/agnostic/gen12/hw \
    $(LOCAL_PATH)/agnostic/gen12/hw/vdbox \
    $(LOCAL_PATH)/agnostic/gen12/shared \
    $(LOCAL_PATH)/agnostic/gen12/vp/hal \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12/codec/hal/dec/av1/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12/codec/hal/dec/av1/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12/codec/hal/dec/av1/features \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12/codec/hal/dec/av1 \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12/codec/hal/dec/shared \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12/codec/hal/dec \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12/codec/hal/shared \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12/codec/hal \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_XPM/codec/hal \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_XPM/codec/kernelisa \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_XPM/hw \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_XPM/hw/vdbox \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_XPM/vp/hal \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_XPM/vp/kdll \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_XPM/vp/kernel \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_HPM/codec/hal \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_HPM/codec/kernel \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_HPM/hw \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_HPM/hw/vdbox \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_HPM/vp/hal \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_HPM/vp/kdll \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_HPM/vp/kernel \
    $(LOCAL_PATH)/agnostic/Xe_M/Xe_M_base/shared \
    $(LOCAL_PATH)/agnostic/Xe_R/Xe_HP/hw/render \
    $(LOCAL_PATH)/agnostic/Xe_R/Xe_HPC/hw/blt \
    $(LOCAL_PATH)/agnostic/Xe_R/Xe_HPC/hw/render \
    $(LOCAL_PATH)/agnostic/Xe_R/Xe_HPG/hw/render \
    $(LOCAL_PATH)/agnostic/Xe_R/Xe_HP_base/hw/blt \
    $(LOCAL_PATH)/agnostic/Xe_R/Xe_HP_base/hw/render \
    $(LOCAL_PATH)/agnostic/common/renderhal \
    $(LOCAL_PATH)/agnostic/common/hw \
    $(LOCAL_PATH)/agnostic/common/hw/vdbox \
    $(LOCAL_PATH)/agnostic/common/os \
    $(LOCAL_PATH)/agnostic/common/media_interfaces \
    $(LOCAL_PATH)/agnostic/common/shared \
    $(LOCAL_PATH)/agnostic/common/shared/mediacopy \
    $(LOCAL_PATH)/agnostic/common/vp/hal \
    $(LOCAL_PATH)/agnostic/common/vp/hal/bufferMgr/ \
    $(LOCAL_PATH)/agnostic/common/vp/hal/feature_manager \
    $(LOCAL_PATH)/agnostic/common/vp/hal/features \
    $(LOCAL_PATH)/agnostic/common/vp/hal/mmc \
    $(LOCAL_PATH)/agnostic/common/vp/hal/packet \
    $(LOCAL_PATH)/agnostic/common/vp/hal/pipeline \
    $(LOCAL_PATH)/agnostic/common/vp/hal/platform_interface \
    $(LOCAL_PATH)/agnostic/common/vp/hal/scalability \
    $(LOCAL_PATH)/agnostic/common/vp/hal/shared/scalability \
    $(LOCAL_PATH)/agnostic/common/vp/hal/statusreport \
    $(LOCAL_PATH)/agnostic/common/vp/hal/utils \
    $(LOCAL_PATH)/agnostic/common/vp/kdll \
    $(LOCAL_PATH)/linux/common/cm/ddi \
    $(LOCAL_PATH)/linux/common/os \
    $(LOCAL_PATH)/linux/common/cm/hal/osservice \
    $(LOCAL_PATH)/linux/common/cm/hal \
    $(LOCAL_PATH)/linux/common/ddi \
    $(LOCAL_PATH)/linux/common/codec/ddi \
    $(LOCAL_PATH)/linux/common/cp/ddi \
    $(LOCAL_PATH)/linux/common/cp/os \
    $(LOCAL_PATH)/linux/common/cp/hw \
    $(LOCAL_PATH)/linux/common/cp/shared \
    $(LOCAL_PATH)/linux/common/vp/ddi \
    $(LOCAL_PATH)/linux/common/hw \
    $(LOCAL_PATH)/linux/gen8/ddi \
    $(LOCAL_PATH)/linux/gen9/ddi \
    $(LOCAL_PATH)/linux/gen9_bxt/ddi \
    $(LOCAL_PATH)/linux/gen9_skl/ddi \
    $(LOCAL_PATH)/linux/gen9_kbl/ddi \
    $(LOCAL_PATH)/linux/gen9_glk/ddi \
    $(LOCAL_PATH)/linux/gen9_cfl/ddi \
    $(LOCAL_PATH)/linux/gen10/ddi \
    $(LOCAL_PATH)/linux/gen10_cnl/ddi \
    $(LOCAL_PATH)/linux/gen11/codec/ddi \
    $(LOCAL_PATH)/linux/gen11/ddi \
    $(LOCAL_PATH)/linux/gen12/codec/ddi \
    $(LOCAL_PATH)/linux/gen12/ddi \
    $(LOCAL_PATH)/linux/Xe_M/ddi \
    $(LOCAL_PATH)/media_softlet/agnostic/common/codec/hal/dec/shared/scalability \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12_base/codec/hal/dec/av1/features \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12_base/codec/hal/dec/av1/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12_base/codec/hal/dec/av1/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12_base/codec/hal/dec/shared/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12_base/codec/hal/dec/shared/hucitf \
    $(LOCAL_PATH)/media_softlet/agnostic/gen12_base/codec/hal \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM/vp/hal/feature_manager \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM/vp/hal/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM/vp/hal/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM/vp/hal/platform_interface \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM_base/hw \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM_base/codec/hal/enc/hevc/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM_base/codec/hal/enc/hevc/features \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM_base/codec/hal/enc \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM_base/codec/hal \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM_base/shared/mediacopy \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM_base/vp/hal/feature_manager \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM_base/vp/hal/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM_plus/codec/hal/shared \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_XPM_plus/shared/mediacopy \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/codec/hal/enc/av1/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/codec/hal/enc/av1/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/codec/hal/enc/av1/features \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/codec/hal/enc/hevc/features \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/codec/hal/enc/hevc/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/codec/hal/enc \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/codec/hal/shared \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/codec/hw \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/codec/hw/vdbox \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/shared/mediacopy \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/shared/vp/hal/feature_manager \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/shared/vp/hal/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/shared/vp/hal/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_HPM/shared/vp/hal/platform_interface \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/hevc/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/hevc/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/hevc/mmc \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/hevc \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/avc/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/avc/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/avc \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/vp9/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/vp9/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/vp9/mmc \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/vp9/hucitf \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/vp9/features \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/vp9 \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/mpeg2/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/mpeg2/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/mpeg2/mmc \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/mpeg2 \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/jpeg/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/jpeg/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/jpeg \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/shared/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec/shared \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/dec \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/enc/av1/packet \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/enc/av1/pipeline \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/enc/shared \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal/enc \
    $(LOCAL_PATH)/media_softlet/agnostic/Xe_M/Xe_M_base/codec/hal \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/packet \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/task \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/statusreport \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/mmc \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/bufferMgr \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/mediacopy \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/media_sfc_interface \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/classtrace \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared/profiler \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/shared \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/cp \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/avc/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/avc/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/hevc/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/hevc/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/hevc/scalability \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/hevc/mmc \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/vp9/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/vp9/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/vp9/scalability \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/vp9/mmc \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/mpeg2/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/mpeg2/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/mpeg2/mmc \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/jpeg/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/jpeg/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/jpeg/packet \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/jpeg/bitstream \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/shared/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/shared/packet \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/shared/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/shared/bufferMgr \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/shared/scalability \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/shared/statusreport \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/shared/mmc \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/shared/hucItf \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/dec/shared \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/av1/packet \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/av1/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/av1/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/hevc/features/roi \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/hevc/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/hevc/packet \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/hevc/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/shared/bitstreamWriter \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/shared/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/shared/packet \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/shared/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/shared/bufferMgr \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/shared/scalability \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/shared/statusreport \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/shared/mmc \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/enc/shared \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/codec/hal/shared \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/os \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/hw \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/hw/vdbox \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/bufferMgr/ \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/feature_manager \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/features \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/mmc \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/packet \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/pipeline \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/platform_interface \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/scalability \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/shared/scalability \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/statusreport \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/hal/utils \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/vp/cm_fc_ld \
    $(LOCAL_PATH)/../media_softlet/agnostic/common/media_interfaces \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG/hw \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG/renderhal \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG/vp/kernel \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG/vp/kernel/cmfcpatch \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG/vp/kernel_free \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG/vp/kernel_free/Source \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG/vp/kernel_free/Source/Common \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG/vp/kernel_free/Source/Components \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG/vp/kernel_free/Source/Core_Kernels \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG/vp/kernel_free/cmfcpatch \
    $(LOCAL_PATH)/../media_softlet/agnostic/Xe_R/Xe_HPG_Base/renderhal \
    $(LOCAL_PATH)/../media_softlet/linux/common/os/osservice \
    $(LOCAL_PATH)/../media_softlet/linux/common/os \
    $(LOCAL_PATH)/../media_softlet/linux/common/os/i915/include \
    $(LOCAL_PATH)/../media_softlet/linux/common/os/i915_production \
    $(LOCAL_PATH)/../media_softlet/linux/common/os/i915_production/include \
    $(LOCAL_PATH)/../media_softlet/linux/common/cp \
    $(LOCAL_PATH)/../media_softlet/linux/common/shared/user_setting \
    $(LOCAL_PATH)/../media_common/agnostic/common/os \
    $(LOCAL_PATH)/../media_common/linux/common/os \
    $(LOCAL_PATH)/../media_common/agnostic/common/cp \
    $(LOCAL_PATH)/../media_common/agnostic/common/heap_manager \
    $(LOCAL_PATH)/../media_common/agnostic/common/hw \
    $(LOCAL_PATH)/../media_common/agnostic/common/hw/vdbox \
    $(LOCAL_PATH)/../media_common/agnostic/common/media_interfaces \
    $(LOCAL_PATH)/../media_common/agnostic/common/renderhal \
    $(LOCAL_PATH)/../media_common/agnostic/common/shared \
    $(LOCAL_PATH)/../media_common/agnostic/common/shared/user_setting \
    $(LOCAL_PATH)/../media_common/agnostic/common/vp \
    $(LOCAL_PATH)/../media_common/agnostic/common/vp/hal \
    $(LOCAL_PATH)/../media_common/agnostic/common/vp/kdll \
    $(LOCAL_PATH)/../media_common/agnostic/common/vp/kernel \

#LOCAL_CPP_FEATURES := rtti exceptions

LOCAL_MODULE := iHD_drv_video
LOCAL_MODULE_RELATIVE_PATH := dri
LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)
