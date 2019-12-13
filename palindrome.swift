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
