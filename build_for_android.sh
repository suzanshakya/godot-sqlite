#!/bin/sh

export ANDROID_NDK_ROOT=~/Library/Android/android-ndk-r22b

cd godot-cpp

echo "Generating bindings for android armv7"
scons platform=android bits=64 android_arch=armv7 target=release generate_bindings=yes -j $(sysctl -n hw.logicalcpu)

echo "Generating bindings for android arm64v8"
scons platform=android bits=64 android_arch=arm64v8 target=release generate_bindings=yes -j $(sysctl -n hw.logicalcpu)

#echo "Generating bindings for android x86"
#scons platform=android bits=64 android_arch=x86 target=release generate_bindings=yes -j $(sysctl -n hw.logicalcpu)
#
#echo "Generating bindings for android x86_64"
#scons platform=android bits=64 android_arch=x86_64 target=release generate_bindings=yes -j $(sysctl -n hw.logicalcpu)

cd ..

echo "Generating libgdsqlite for android all arch"
$ANDROID_NDK_ROOT/ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk APP_PLATFORM=android-21 NDK_LIBS_OUT=demo/addons/godot-sqlite/bin/android/
