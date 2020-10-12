package com.example.myproject;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

/**
 * Tests for correct dependency retrieval with maven rules.
 */
public class CompareTest {

  @Test
  public void testCompare() throws Exception {    
    assertEquals("should return 0 when both numbers are equal", 0, Compare.compare(1, 1));
  }

}
