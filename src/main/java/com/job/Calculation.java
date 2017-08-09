package com.job;

/**
 * Created by prashil on 7/27/17.
 */
public class Calculation {


  public static void main(String[] args) {
    float a = 8.2f;
    float b = 30.13f;

    float result = ((21f / 24f) * 100f * a) + (100f * a) + ((3f / 24f) * 100f * b);
    System.out.println("3 - 6 : " + result);

    float a2 = 7.18f;
    float b2 = 19.37f;
    float result2 =
        ((17f / 24f) * 100f * a2)
             + ((2f / 14f) * 100f * b2)
            + ((12f / 14f) * 100f * a2)
            + ((7f / 24f) * 100f * b2);
    System.out.println("1 - 8 : " + result2);

    System.out.println(100-(result / result2) * 100);

    System.out.println(" ---  Winter --- ");
    a = 7.48f;
    b = 12.05f;
    result = ((21f / 24f) * 100f * a) + (100f * a) + ((3f / 24f) * 100f * b);
    System.out.println("3 - 6 : " + result);
    a2 = 7.01f;
    b2 = 10.01f;
    result2 =
        ((16f / 24f) * 100f * a2)
            + ((6f / 14f) * 100f * b2)
            + ((8f / 14f) * 100f * a2)
            + ((8f / 24f) * 100f * b2);
    System.out.println("1 - 8 : " + result2);
    System.out.println(100-(result / result2) * 100);

  }

}
