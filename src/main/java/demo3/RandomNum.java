package demo3;

import java.util.Random;

/**
 * Created by wanghongxing on 16/5/26.
 */
public class RandomNum {

    public static void main(String[] args){

        Random random = new Random();

        for(int i =0;i<10000;i++){
            System.out.println(random.nextInt(10000));
        }


    }
}
