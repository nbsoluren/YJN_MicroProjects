func anagram(is one: String, to two: String) -> Bool{
  func makeDict(for string: String) -> [Character:Int]{
    var dict: [Character:Int] = [:]
    for letter in Array(string){
      dict[letter] = (dict[letter] ?? 0) + 1
    }
    return dict
  }
  let oneDict = makeDict(for:one)
  let twoDict = makeDict(for:two)
  return oneDict == twoDict
}
