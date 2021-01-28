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
  String backwards = check(reverse(word)); 
  if (check(word).equals(backwards)) 
  return true; 
  else
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length(); i > 0; i--) {
    sNew = sNew + str.substring(i-1, i);
  }
    return sNew;
}
public String check(String str) {
  str = noSpaces(str); 
  str = noCapitals(str); 
  str = numLetters(str); 
  str = onlyLetters(str); 
  return str; 
}
public String noSpaces(String sWord){
  String word = new String(""); 
  for (int i = 0; i < sWord.length(); i++) {
    if (Character.isLetter(sWord.charAt(i)) == true) {
      word = word + sWord.substring(i, i+1);
    }
  }
  return word; 
}
public String noCapitals(String sWord){
  return sWord.toLowerCase(); 
}
public String numLetters(String sString){
  String str = new String(); 
  for (int i = 0; i < sString.length(); i++) {
    if(Character.isLetter(sString.charAt(i)) == true) {
      str = str + sString.substring(i); 
    }
  }
  return str; 
}
public String onlyLetters(String sString){
  String answer = new String(""); 
  for (int i = 0; i < sString.length(); i++) {
    if(Character.isLetter(sString.charAt(i)) == true) {
      answer = answer + sString.charAt(i);
    }
  }
  return answer; 
}


