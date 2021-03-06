public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (simplify(word).equals(reverse(simplify(word)))) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i=str.length()-1; i>=0; i--) {
      char letter = str.charAt(i);
      sNew = sNew + letter;
    }
    return sNew;
}

public String simplify(String input) {
  input = input.toLowerCase();
  String output = "";
  for (int i=0; i<input.length(); i++) {
    if (Character.isLetter(input.charAt(i))) {
      output = output + input.substring(i,i+1);
    }
  }
  return output;
}
