/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author legend
 */
public class Generate_tin {
    public String s="abcdefghijklmnopqrstvwxyz";
    public String c="ABCDEFGHIJKLMNOPQRSTWVXYZ";
    public String i ="1234567890";
    public String p="!@#$%&";

  
    
    public String getAlphaNumericString()
 {
 
  
  String AlphaNumericString = this.c+this.i+this.p;
        
 
  
  StringBuilder sb = new StringBuilder();
 
  for (int i = 0; i < 10; i++) {
 
   
   int index
    = (int)(AlphaNumericString.length()
      * Math.random());
 
  
   sb.append(AlphaNumericString
      .charAt(index));
  }
 
  return sb.toString();
 }
    
    
}
