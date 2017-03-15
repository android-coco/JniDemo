package net.fitcome.jnidemo;

/**
 * Created by 38314 on 2017/3/14.
 */

public class JniUtil
{
    //啦啦啦啦啦
    static
    {
        System.loadLibrary("JniUtil");
    }

    public  native String getJniString();

    public  native int getJniAdd(int a, int b);
}
