//: [Next](@next)
/*: Итерирование (циклы)
 # Итерирование (циклы)
 Циклом называют часть программы, которая может выполняться несколько раз. Под итерированием обычно понимают выполнение некоторой логики с каждым элементом коллекции (набора данных)
 
 Наиболее употребимым типом цикла в Swift является `for in`.
*/
var summOfNumbers = 0
for i in 0...10 {
    summOfNumbers += i
}
print("summ of numbers is \(summOfNumbers)")
/*:
 `for in` может использоваться с любой последовательностью, в том числе с массивами и словарями, например:
 */
let arrayOfStrings = ["first string", "second string"]
for string in arrayOfStrings {
    print(string)
}
