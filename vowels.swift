func vowelCount(_ string: String) -> Int{
  let vowels: [Character] = ["a","e","i","o","u"]
  var sum: Int = 0
  for letter in string{
    if vowels.contains(letter){
      sum = sum + 1
    }
  }
  return sum
}
