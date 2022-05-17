#!/bin/sh

cd godot-cpp && \

echo "Generating bindings for macos arm64" && \
scons platform=osx bits=64 macos_arch=arm64 target=release generate_bindings=yes -j $(sysctl -n hw.logicalcpu) && \

cd .. && \

echo "Generating libgdsqlite for macos arm64" && \
mkdir -p demo/addons/godot-sqlite/bin/osx_arm64 && \
scons platform=osx bits=64 macos_arch=arm64 target=release target_path=demo/addons/godot-sqlite/bin/osx_arm64/ target_name=libgdsqlite && \


cd godot-cpp && \

echo "Generating bindings for macos x86_64" && \
scons platform=osx bits=64 macos_arch=x86_64 target=release generate_bindings=yes -j $(sysctl -n hw.logicalcpu) && \

cd .. && \

echo "Generating libgdsqlite for macos x86_64" && \
mkdir -p demo/addons/godot-sqlite/bin/osx_x86_64 && \
scons platform=osx bits=64 macos_arch=x86_64 target=release target_path=demo/addons/godot-sqlite/bin/osx_x86_64/ target_name=libgdsqlite
