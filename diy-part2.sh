#!/bin/bash
###
 # @Author: xiawang1024
 # @Date: 2023-02-11 21:21:21
 # @LastEditTime: 2023-02-25 17:16:22
 # @LastEditors: IraXu
 # @Description: 
 # @FilePath: /ImmortalWrt-360T7/diy2-part2.sh
 # 开源让世界美好
### 

# 自定义默认网关，后方的192.168.123.1即是可自定义的部分
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
# 固件版本名称自定义
# sed -i "s/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION='ImmortalWrt By IraXu $(date +"%Y%m%d") '/g" package/base-files/files/etc/openwrt_release

# 更新rust
#sed -i 's/PKG_VERSION:=1.89.0/PKG_VERSION:=1.92.0/g' feeds/packages/lang/rust/Makefile
#sed -i 's/PKG_HASH:=0b9d55610d8270e06c44f459d1e2b7918a5e673809c592abed9b9c600e33d95a/PKG_HASH:=ebee170bfe4c4dfc59521a101de651e5534f4dae889756a5c97ca9ea40d0c307/g' feeds/packages/lang/rust/Makefile
#sed -i 's/PKG_BUILD_FLAGS:=no-mips16/PKG_USE_MIPS16:=0/g' feeds/packages/lang/rust/Makefile
#sed -i '86i\define Host/Patch\n\t$(if $(HOST_QUILT),rm -rf $(HOST_BUILD_DIR)/patches; mkdir -p $(HOST_BUILD_DIR)/patches)\n\t$(if $(HOST_QUILT),$(call PatchDir/Quilt,$(HOST_BUILD_DIR),$(HOST_PATCH_DIR),))\n\t$(if $(HOST_QUILT),touch $(HOST_BUILD_DIR)/.quilt_used)\n\t$(if $(HOST_QUILT),,$(if $(wildcard $(HOST_PATCH_DIR)/*.patch), \\\n\t\t$(foreach p,$(sort $(wildcard $(HOST_PATCH_DIR)/*.patch)), \\\n\t\t\techo "Applying patch $(notdir $p)" ; \\\n\t\t\t$(PATCH) -f -p1 -d $(HOST_BUILD_DIR) < $p || \\\n\t\t\t{ echo "Patch failed! Please fix: $(notdir $p)!" ; exit 1 ; } ; \\\n\t\t) \\\n\t))\nendef' feeds/packages/lang/rust/Makefile
