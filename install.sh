#!/bin/sh

CBROOT=~/projects/teslatech/callbreakgodot


mkdir -p $CBROOT/addons/godot-sqlite/bin/osx_arm64/
echo "cp demo/addons/godot-sqlite/bin/osx_arm64/libgdsqlite.dylib $CBROOT/addons/godot-sqlite/bin/osx_arm64/"
cp demo/addons/godot-sqlite/bin/osx_arm64/libgdsqlite.dylib $CBROOT/addons/godot-sqlite/bin/osx_arm64/

mkdir -p $CBROOT/addons/godot-sqlite/bin/osx_x86_64/
echo "cp demo/addons/godot-sqlite/bin/osx_x86_64/libgdsqlite.dylib $CBROOT/addons/godot-sqlite/bin/osx_x86_64/"
cp demo/addons/godot-sqlite/bin/osx_x86_64/libgdsqlite.dylib $CBROOT/addons/godot-sqlite/bin/osx_x86_64/

echo "cp demo/addons/godot-sqlite/bin/android/armeabi-v7a/libgdsqlite.so $CBROOT/addons/godot-sqlite/bin/android/armeabi-v7a/"
cp demo/addons/godot-sqlite/bin/android/armeabi-v7a/libgdsqlite.so $CBROOT/addons/godot-sqlite/bin/android/armeabi-v7a/

echo "cp demo/addons/godot-sqlite/bin/android/arm64-v8a/libgdsqlite.so $CBROOT/addons/godot-sqlite/bin/android/arm64-v8a/"
cp demo/addons/godot-sqlite/bin/android/arm64-v8a/libgdsqlite.so $CBROOT/addons/godot-sqlite/bin/android/arm64-v8a/
