
package com.panzerlibrary.util;


public class Helper {
    
    public static String properFilenameMaker(String str) {
        str = str.replaceAll("[\\s]|[*.](?=.*[.])|[*,;:'!?^@#$&]","");
        return str;
    }
    
}
