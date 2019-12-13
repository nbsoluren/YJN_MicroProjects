func fizzbuzz(_ start: Int, _ end: Int) -> [String] {
  func fizzbuzzBuilder(_ number: Int) -> String {
    var entity = ""
    if number%3 == 0{
      entity = "fizz"
    }
    if number%5 == 0{
      entity = entity + "buzz"
    }
    if !(number%3 == 0) && !(number%5 == 0){
      entity = String(number)
    }
    return entity
  }
  return (start...end).map({fizzbuzzBuilder($0)})
}



for i in fizzbuzz(1,15){
  print(i)
}
