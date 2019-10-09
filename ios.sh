
cmakeImpl() {
    cmake -E make_directory "Solution/iOS" && cmake -E chdir "Solution/iOS" cmake -G "Xcode" ../../ -DCMAKE_TOOLCHAIN_FILE=./BuildScript/cmake/ios-cmake/ios.toolchain.cmake -DPLATFORM=OS64COMBINED
}

cmakeImpl

if [ "$?" == 0 ] ; then
    open ./Solution/iOS/*.xcodeproj 2>/dev/null
fi
