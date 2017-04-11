#什么是JNI：
  JNI(Java Native Interface):java本地开发接口
  JNI是一个协议，这个协议用来沟通java代码和外部的本地代码(c/c++)外部的c/c++代码也可以调用java代码
#为什么使用JNI：
 效率上 C/C++是本地语言，比java更高效
 代码移植，如果之前用C语言开发过模块，可以复用已经存在的c代码java反编译比C语言容易，一般加密算法都是用C语言编写，不容易被反编译.
#JniDemo简介
1，创建JniUtil
public class JniUtil
{
    static
    {
        //"JniUtil" so包名称  自己定义
        System.loadLibrary("JniUtil");
    }
    //C++方法一
    public  native String getJniString();
    //C++方法二
    public  native int getJniAdd(int a, int b);
}
2，bulid.gradle中设置
sourceSets { main { jni.srcDirs = ['src/main/jni', 'src/main/jni/'] } }
    externalNativeBuild {
        ndkBuild {
            path file("src\\main\\jni\\Android.mk")
        }
    }
2，javah javah -encoding utf8 net.fitcome.jnidemo.JniUtil
会生成一个net_fitcome_jnidemo_JniUtil.h的头文件
3，创建jni文件夹 新建Android.mk 拷贝net_fitcome_jnidemo_JniUtil.h的头文件到目录下面
新建文件JniUtil.c或JniUtil.cpp
实现头文件方法
4，ndk-build JniUtil.c或JniUtil.cpp
会生成相应的so包
5，MainActivity调用相应方法