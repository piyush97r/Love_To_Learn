/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Suhail.Siddiq
 */
import java.lang.*;
import opennlp.tools.tokenize.SimpleTokenizer;
public class NewClass {
    public static void main(String[] a)
    {
        SimpleTokenizer ob = new SimpleTokenizer();
        String[] s = ob.tokenize("Lets see How This gets Tokenized????");
        for(String st : s)
            System.out.println(st);
    }
}
