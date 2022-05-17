#!/bin/sh

CBROOT=~/projects/teslatech/callbreakgodot


echo "cp demo/addons/godot-sqlite/bin/osx/libgdsqlite.dylib $CBROOT/addons/godot-sqlite/bin/osx/"
cp demo/addons/godot-sqlite/bin/osx/libgdsqlite.dylib $CBROOT/addons/godot-sqlite/bin/osx/

echo "cp demo/addons/godot-sqlite/bin/android/armeabi-v7a/libgdsqlite.so $CBROOT/addons/godot-sqlite/bin/android/armeabi-v7a/"
cp demo/addons/godot-sqlite/bin/android/armeabi-v7a/libgdsqlite.so $CBROOT/addons/godot-sqlite/bin/android/armeabi-v7a/

echo "cp demo/addons/godot-sqlite/bin/android/arm64-v8a/libgdsqlite.so $CBROOT/addons/godot-sqlite/bin/android/arm64-v8a/"
cp demo/addons/godot-sqlite/bin/android/arm64-v8a/libgdsqlite.so $CBROOT/addons/godot-sqlite/bin/android/arm64-v8a/
