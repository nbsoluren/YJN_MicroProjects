//boring way:
func palindromeChecker(_ string: String) -> Bool{
  let stringLen = string.count
  for i in 0..<stringLen{
    if string[String.Index(utf16Offset: i, in: string)] != string[String.Index(utf16Offset: stringLen-i-1, in: string)]{
      return false
    }
  }
  return true
}

//natalie way
func palindromeChecker2(_ string: String) ->Bool{
  return string == String(Array(string).reversed())
}



//just tesing
let palindromes: [String] = ["hannah", "racecar", "wow", "neveroddoreven","tacocat"]
let notpalindromes: [String] = ["Thank you", "for", "checking", "my", "code"]
for (positive,negative) in zip(palindromes,notpalindromes){
  if(palindromeChecker2(positive)){ //add 2
    print("\(positive): pass")
  }else{
    print("\(positive): fail")
  }

  if(!palindromeChecker2(negative)){ // add 2
    print("\(negative): pass")
  }else{
    print("\(negative): fail")
  }

}
