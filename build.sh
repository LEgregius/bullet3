rm -rf bulletBuild
rm -rf installPath
mkdir bulletBuild
cd bulletBuild

OSX_SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.10.sdk

if cmake -DCMAKE_OSX_ARCHITECTURES="x86_64" -DBULLET2_TBB_LIB_DIR=$DEV/ext/lib -DBULLET2_TBB_INCLUDE_DIR=$DEV/ext/include -DBULLET2_MULTITHREADED_TBB_DEMO=ON -DBULLET2_USE_THREAD_LOCKS=ON   -DCMAKE_CXX_FLAGS="-std=c++1y -stdlib=libc++" -DCMAKE_OSX_DEPLOYMENT_TARGET=10.8 -DCMAKE_OSX_SYSROOT=$OSX_SYSROOT -DCMAKE_INSTALL_PREFIX=$PWD/../installPath -DCMAKE_BUILD_TYPE=Release -DUSE_DOUBLE_PRECISION=OFF ..; then
   make -j8 && make install
fi



