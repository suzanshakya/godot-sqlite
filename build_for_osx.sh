#!/bin/sh

cd godot-cpp

echo "Generating bindings for macos arm64"
scons platform=osx bits=64 macos_arch=arm64 target=release generate_bindings=yes -j $(sysctl -n hw.logicalcpu)

echo "Generating bindings for macos x86_64"
scons platform=osx bits=64 macos_arch=x86_64 target=release generate_bindings=yes -j $(sysctl -n hw.logicalcpu)

cd ..

echo "Generating libgdsqlite for macos universal"
mkdir -p demo/addons/godot-sqlite/bin/osx
scons platform=osx bits=64 macos_arch=universal target=release target_path=demo/addons/godot-sqlite/bin/osx/ target_name=libgdsqlite
