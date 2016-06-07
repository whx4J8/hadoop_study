package config;

import org.apache.hadoop.conf.Configuration;

/**
 * Created by wanghongxing on 16/6/1.
 */
public class Demo1 {

    public static void main(String[] args){
        Configuration configuration = new Configuration();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("hello world");
        System.out.println(stringBuffer.toString());
    }
}
