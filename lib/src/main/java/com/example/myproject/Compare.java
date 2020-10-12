package com.example.myproject;

import com.google.common.primitives.Ints;

/**
 * This application compares two numbers, using the Ints.compare
 * method from Guava.
 */
public class Compare {

  public static int compare(int a, int b) {
    return Ints.compare(a, b);
  }

}
