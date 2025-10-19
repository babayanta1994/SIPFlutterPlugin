#!/bin/bash

set -e

# === 配置区 ===
SCHEME="SIPFramework"
PROJECT_NAME="SIPSDKExample.xcodeproj"
CONFIGURATION="Release"
BUILD_DIR="./build"
ARCHIVE_PATH="${BUILD_DIR}/${SCHEME}-device.xcarchive"
XCFRAMEWORK_PATH="${BUILD_DIR}/${SCHEME}.xcframework"

# === 清理旧产物 ===
echo "🧹 清理旧文件..."
rm -rf "$ARCHIVE_PATH"
rm -rf "$XCFRAMEWORK_PATH"

# === Archive（真机 arm64 + arm64e） ===
echo "📦 正在编译 Archive（arm64 + arm64e）..."
xcodebuild archive \
  -project "$PROJECT_NAME" \
  -scheme "$SCHEME" \
  -configuration "$CONFIGURATION" \
  -archivePath "$ARCHIVE_PATH" \
  -sdk iphoneos \
  ARCHS="arm64 arm64e" \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YEScustomSessionName

# === 生成 XCFramework ===
echo "🛠️ 正在创建 XCFramework..."
xcodebuild -create-xcframework \
  -framework "${ARCHIVE_PATH}/Products/Library/Frameworks/${SCHEME}.framework" \
  -output "$XCFRAMEWORK_PATH"

# === 构建完成 ===
echo "🎉 打包完成！输出文件："
echo "$XCFRAMEWORK_PATH"

# === 查看所有包含架构 ===
echo "🔍 检查 XCFramework 中各平台的架构："
find "$XCFRAMEWORK_PATH" -name "$SCHEME" -type f | while read binary; do
    echo "👉 $(dirname "$(dirname "$binary")")"
    lipo -archs "$binary"
done
