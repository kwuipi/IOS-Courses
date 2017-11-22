//: Rotate Array
/*: Задание
 # Rotate Array
 - *Дано*: Массив, число "вращений"
 - *Получить*: Массив, которы получится после выполнения всех вращений.
 
 Под вращением понимается смещение всех элементов массива на 1. При этом последний элемент массива становится в индекc 0
 
 примеры:
 - массив [1, 2, 3, 4] после 1 вращения преобразуется в [4, 1, 2, 3]
 - массив [17, 43, 37, 42] после 6 вращений преобразуется в [37, 42, 17, 43]
 
 ### Усложненная версия (не обязательно)
 Выполните то же самое без выделения дополнительной памяти (без создания вспомогательных массивов)
 */
import Foundation
import XCTest
let array: [Int]=[1,2,3,4]
public func rotated(array: inout [Int], rotations: Int) -> [Int] {
    var arr = array
    let last = arr.removeLast()
    arr.insert(last, at : 0)
    return arr
}
/*:
 Данный класс тестирует результаты работы `func rotated(array: inout [Int], rotations: Int) -> [Int]`.
 
 Входные данные передаются в виде массива `array`, значения которого задаются в функции `override func setUp()`
 
 Уберите комментарии вокруг функции `testFullRotate` когда ваше решение будет готово
 */
class SolutionTests: XCTestCase {
    var array = [1, 2, 3, 4]
    var arrayCompare = [1, 2, 3, 4]
    
    override func setUp() {
        super.setUp()
        self.array = [Int](1...4)
        self.arrayCompare = [Int](1...4)
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func testOneRotate() {
        XCTAssertEqual(rotated(array: &array, rotations: 1), correctRotated(array: &arrayCompare, rotations: 1))
    }
    
    func testMoreRotate() {
        XCTAssertEqual(rotated(array: &array, rotations: 7), correctRotated(array: &arrayCompare, rotations: 7))
    }
    
    func testFullRotate() {
        for i in 0...99 {
            var testArray = [Int](1...100)
            var testArrayCompare = [Int](1...100)
            XCTAssertEqual(rotated(array: &testArray, rotations: i), correctRotated(array: &testArrayCompare, rotations: i))
        }
    }
 
}

SolutionTests.defaultTestSuite.run()
