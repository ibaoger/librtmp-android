#librtmp-android

## 概述 ##
使用 Android NDK 自带的 ndk-build 工具编译 android 版的 librtmp 静态/动态链接库。
支持全部七种CPU架构 armeabi armeabi-v7a arm64-v8a x86 x86_64 mips mips64 。

## 编译 ##
*注: 如果本地没有NDK环境，可以直接使用 releases 里面编译好的静态/动态链接库。*
准备好 android-ndk 开发环境，例如我的ndk位于下面的位置：
/home/shishuo/Library/Android/ndk

```
git clone git@github.com:shishuo365/librtmp-android.git
cd librtmp-android
/home/shishuo/Library/Android/ndk/ndk-build
```

默认生成 librtmp.a 静态链接库，位于 librtmp-android/obj/local/*/librtmp.a
如果需要生成静态链接库，手动修改 librtmp-android/jni/Android.mk 最后两行：

```
include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_STATIC_LIBRARY)
```


by shishuo 2016.07
