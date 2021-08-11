import UIKit

/* My first program in Swift. Happy Learning!
 Multiple line
 */
// single line kkk

var str = "Hello, playground"

str = "Hello"

func variableExample(){
    // Use var - variables for values that will change
    var string = "Hi"
    string = "Hello"
    print(string)
    
    //Use let - variables(constants)for values that won’t change
    let constant = "Learning"
//    constant = "cannot re-assign"
    
    print(constant)
}

func operatorExample(){
    
    var a = 10
    let b = 20
    
// Arithmetic Operators
    let add = a + b
    let sub = a - b
    let multiple = a * b
    let divide = a / b
    let moduloOrRemainder = a % b
//    let increment = ++a deprecated
//    let decrement = b-- deprecated
    
//    Comparison operators and Ternary
    let equals = a == b ? true : false
    let not_equals = a != b ? true : false
    let less_than = a < b ? true : false
    let greater_than = b > b ? true : false
    let less_than_or_equal = a <= b ? true : false
    let greater_than_or_equal = a >= b ? true : false
    
//    Close Range
    print("Close range")

    for numbers in 1...4 {
     print(numbers)
    }
    print("Close range reverse")

    for numbers in (5...10).reversed() {
     print(numbers)
    }
//    Half Range
    print("Half range")
    for numbers in 1..<4 {
     print(numbers)
    }
    print("Half range reverse")
    for numbers in (1..<5).reversed() {
     print(numbers)
    }
    
    /*  Unary Minus Operator
        The sign of a numeric value can be toggled using a prefixed -, known as the unary minus operator:
    */
    let three = 3
    let minusThree = -three       // minusThree equals -3
    
/*  Unary Plus Operator
    The unary plus operator (+) simply returns the value it operates on, without any change:
*/
    let minusSix = -6
    let alsoMinusSix = +minusSix  // alsoMinusSix equals -6
    
//    Compound Assignment Operators
//  The expression a += 2 is shorthand for a = a + 2.
    a += 2
    
//    Ternary Conditional Operator
    let contentHeight = 40
    let hasHeader = true
    let rowHeight = contentHeight + (hasHeader ? 50 : 20)
    
//    Nil-Coalescing Operator
    let nilVal: Int? = nil
    var placeHolder = nilVal ?? 50
    print(placeHolder)

}

func dataTypeExample(){

    let string: String = "saple string"
    let count: Int = 10
    let percentage: Float = 0.15
    let processedValue:Double = 3.4566734
    let completed:Bool = true
}

func tupleExample(){
    // Unnamed tuple
    print("Unnamed tuple")
    let emp1 = ("John D", 465, "Mumbai")
    
    print(emp1.0)
    print(emp1.1)
    print(emp1.2)
    
    //Named tuple
    print("Named tuple")

    let emp2 = (name:"John D", id:465, city:"")

    print(emp2.name)
    print(emp2.id)
    print(emp2.city)

}

func optionalExample(){
    
    var middleName: String?
    middleName = "Doe"
    middleName = nil //compiler error if not declared as an optional
    
    //forced unwrapping
    let message = middleName!
    print(message)
    
//    Optional Binding
    if let message = middleName {
        print (message)
    }
    else {
        print ("Middle name is empty")
    }

}

func functionExample(){
    
    print("Hello World")

}
func functionWithParamExample(name: String) -> String {
    
    var str = "Welcome \(name)"
    
    return str
}

func multipleValueReturnExample() -> (name: String, id: Int, city: String) {
    
    let emp = (name:"John D", id:465, city:"")
    return emp
}

var emp2 = multipleValueReturnExample()

func returnCustomObjectExample() -> Student {
    
    var student = Student(name: "John", id: 1, age: 18, percentage: 80.5)
    
    return student
}

var student = returnCustomObjectExample()
print("name \(student.name)")
print("id \(student.id)" )
print("age \(student.age)")
print("percentage \(student.percentage)")

func arrayExample(){
    
    var rollNumbers = [Int]()
    
    print("rollNumbers isEmpty:\(rollNumbers.isEmpty)")
    print("rollNumbers count:\(rollNumbers.count)")

    rollNumbers.insert(1, at: 0)
    rollNumbers.insert(12, at: 1)
    rollNumbers.insert(13, at: 2)
    rollNumbers.insert(13, at: 3)

    print("rollNumbers count:\(rollNumbers.count)")

    var fruits: [String] = ["Apple", "Orange", "Mango"]
    fruits.append("Apple 2")
    fruits.append("Apple")
    
    fruits.insert("Mango", at: 0)

    print("rollNumbers : \(rollNumbers)")
    print("fruits : \(fruits)")
    
    print("fruits[3] \(fruits[3])")
    
}

func dicExample(){
    
    var totalMarks = ["John":300, "Ann":800, "Tom":500]
    
    totalMarks["Chid"] = 400
    
    print("totalMarks[priya] :\(totalMarks["priya"])")
    
    if let mark = totalMarks["priya"] {
        print("Tom's mark is", mark)
    }
    print(totalMarks)
}

func setExample(){
   
    var rollNumbers = Set<Int>()
    
    print("rollNumbers isEmpty:\(rollNumbers.isEmpty)")
    print("rollNumbers count:\(rollNumbers.count)")

    rollNumbers.insert(1)
    rollNumbers.insert(12)
    rollNumbers.insert(13)
    rollNumbers.insert(13)

    print("rollNumbers count:\(rollNumbers.count)")
    
    let oddDigits: Set = [1, 3, 5, 7, 9]
    let evenDigits: Set = [0, 2, 4, 6, 8]

    let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

    let intersection = oddDigits.intersection(evenDigits).sorted()// []
    print("intersection \(intersection)")
    let union = oddDigits.union(evenDigits).sorted()// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    print("union \(union)")

    let subtracting = oddDigits.subtracting(singleDigitPrimeNumbers).sorted()// [1, 9]
    print("unsubtractingion \(subtracting)")

    let symmetricDifference = oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()// [1, 2, 9]
    print("symmetricDifference \(symmetricDifference)")

}

func ifLoopExample(){
 
    var count = 4
    if count > 10 {
        print ("count greater than 10")
    }else if count < 5 {
        print ("count less than 5")
    } else {
        print ("count less than 10")
    }
}

func validateUser (name: String) -> (Bool){
    
    guard name.count > 8 else{
        print("\(name) count is less than  8")
        return false
    }
    
    print("\(name) count is greater than 8 :\(name)")

    return true
}

func switchExample(){
    
    var num = 8
    switch num {

     case 2,4,6,8:
        print ("Given value is an even number and less than 9")

     case 1,3,5,7:
        print ("Given value is an odd number and less than 9")
        
     default:
        print("No Matching")

    }
    
    
    let anotherCharacter: Character = "a"
    switch anotherCharacter {
    case "a": // Invalid, the case has an empty body
        print("The letter a")
    case "A":
       print("The letter A")
    default:
       print("Not the letter A")
    }// This will report a compile-time error
    
    
    let approximateCount = 4
    let countedThings = "moons orbiting Saturn"
    let naturalCount: String
    switch approximateCount {
    case 0:
       naturalCount = "no"
    case 1..<5:
       naturalCount = "a few"
    case 5..<12:
       naturalCount = "several"
    default:
       naturalCount = "many"
    }

    print("There are \(naturalCount) \(countedThings).")// Prints "There are dozens of moons orbiting Saturn."
    
    
    let somePoint = (0, 1)
    switch somePoint {
    case (0, 0):
       print("\(somePoint) is at the origin")
    case (_, 0):
       print("\(somePoint) is on the x-axis")
    case (0, _):
       print("\(somePoint) is on the y-axis")
    case (-2...2, -2...2):
       print("\(somePoint) is inside the box")
    default:
        print("\(somePoint) is outside of the box")}// Prints "(1, 1) is inside the box"
    
    
    let anotherPoint = (7, 7)
    switch anotherPoint {
    case (let x, 0):
      print("on the x-axis with an x value of \(x)")
    case (0, let y):
       print("on the y-axis with a y value of \(y)")
    case let (x, y):
       print("somewhere else at (\(x), \(y))")
    }
    
    let yetAnotherPoint = (4, 5)
    switch yetAnotherPoint {
    case let (x, y) where x == y:
       print("(\(x), \(y)) is on the line x == y")
    case let (x, y) where x == -y:
       print("(\(x), \(y)) is on the line x == -y")
    case let (x, y):
       print("(\(x), \(y)) is just some arbitrary point")
    }

}

func whileLoopExample(){
    
//    var sum = 1
//    while sum <= 10 {
//        print(sum)
//        sum = sum + 1
//    }
    
    var sum = 16
    repeat{
        print(sum)
        sum = sum + 1
    }while sum <= 15
}
func forLoopExample(){
    
    let count = 4
    var sum = 0
    for i in 1...count {
//        sum += i
        print(i)
    }
    
//
//    let students = ["John", "Tom", "Ann"]
//    for name in students {
//        print (name)
//    }
//
//    let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
//
//    for (animalName, legCount) in numberOfLegs {
//       print("\(animalName)s have \(legCount) legs")
//    }
//    for dict in numberOfLegs {
//       print(dict)
//    }
//
//
//    let minutes = 60
//    for tickMark in 0..<minutes {
//       // render the tick mark each minute (60 times)
//        print(tickMark)
//    }
    
//    let minutes = 60
//    let minuteInterval = 5
//    for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
//       // print every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
//
//        print(tickMark)
//    }
    
    let hours = 12
    let hourInterval = 3
    print("stride :")
    for tickMark in stride(from: 3, through: hours, by: hourInterval) {
       // print every 3 hours (3, 6, 9, 12)
        print(tickMark)

    }
}

func continueStatementExample(){
    
    print("continueStatementExample :")

    
    for i in 1...10 {
        
        if i % 2 == 0 {
         continue
        }
        
    print(i)
    }
}

func breakcStatementExample(){
    
    print("breakcStatementExample :")

    
    for i in 1...10 {
        
        if i % 2 == 0 {
         break
        }
        
    print(i)
    }
}

func fallthroughStatementExample(){

    
    let anotherCharacter: Character = "B"
    switch anotherCharacter {
    case "a": // Invalid, the case has an empty body
        print("The letter a")
    case "A":
       print("The letter A")
       fallthrough
    case "B":
       print("The letter B")
    case "C":
       print("The letter B")
    default:
       print("Not the letter A")
    }// This will report a compile-time error
    
}

func returnStatementExample(){
    
    print("Before return")
    
    return
     
    let str = "After return"
    print(str)
}

fallthroughStatementExample()

continueStatementExample()

forLoopExample()


whileLoopExample()
switchExample()

let name = "chidhambaram"
let validUser = validateUser(name:name)

ifLoopExample()
setExample()

dicExample()
arrayExample()

operatorExample()
print(str)









