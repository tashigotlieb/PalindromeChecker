public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
 word = word.toLowerCase();
 word = onlyLetters(word);
if(reverse(word).equals(noSpaces(word))) {
  return true;
} return false;
}
public String reverse(String str)
{

  str = onlyLetters(str);
  str = noSpaces(str);
  for(int i =str.length(); i >0; i--) {
    str += str.substring(i-1,i);
  }  
  return str.substring(int(str.length()-(str.length()*0.5)));
    

  
}
public String noSpaces(String sWord){
  String local = "";
  for(int i = 0; i<sWord.length();i++) {
    if(sWord.charAt(i)!=' ') {
      local+=sWord.charAt(i);
    }
  }return local;
}


public String onlyLetters(String sString){
  String b ="";
  for(int i =0; i<sString.length();i++) {
    if(Character.isLetter(sString.charAt(i)) == true) {
      b+=sString.charAt(i);
    }
}return b;
}

