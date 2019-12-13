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

print(vowelCount("My dog's name is tantan and he's a good boy!"))
print(vowelCount("hmm okay? lol. Thanks for sharing."))
print(vowelCount("aaa bb"))
