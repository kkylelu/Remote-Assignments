import UIKit


//: # week2
//: ## Part 1: Object-Oriented Swift
/*:
 **1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”**
 */
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    let gender: Gender
    init(gender: Gender) {
        self.gender = gender
    }
    func eat(){
        print("I eat everything!")
    }
    
}

var animal = Animal(gender: Gender.male)
animal.eat()
/*:
 **2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.**
 */
class Elephant: Animal {
    override func eat() {
        print("I usually eat branches.")
    }
}
var elephant = Elephant(gender: Gender.female)
elephant.eat()


class Tiger: Animal {
    override func eat() {
        print("I usually eat meat.")
    }
}
var tiger = Tiger(gender: Gender.female)
tiger.eat()

class Horse: Animal {
    override func eat() {
        print("I usually eat grass.")
    }
}
var horse = Horse(gender: Gender.male)
horse.eat()
/*:
 **3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.**
 */
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo(weeklyHot: Tiger(gender: Gender.female))
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse
/*:
 **4. What is an instance? What does Initilizer do in Class and Struct?**
 */
print("instance (實例) 是指 class, struct, enum 生出來的物件，例如 Q1 中的 Animal 就是 instance。\n Initilizer 的作用是「建立初始值」，之後建立新物件就會預設帶出初始值，例如 Q1 中  init(gender: Gender) 就是創造 gender 參數來對應 enum 的 Gender。")
/*:
 **5. What’s the difference between Struct and Class?**
 */
print("他們之間的差別主要在：Struct 具有 value type 和不能繼承的特性，適合用在希望複製而不是引用資料時，因為修改不會動到原始資料。另外，也具有從 stored property 自動生成 memberwise initializer 的功能，方便建立 struct 資料時傳入每個屬性的初始值。；\n Class 則具有 reference type 而且可以繼承，適合用在有多份檔案需要參考同一份資料的最新狀態。")
/*:
 **6. What’s the difference between reference type and value type?**
 */
print("reference type:\n 就像電腦中的「建立捷徑或分身」，建立捷徑或分身檔案比較不佔記憶體空間，但修改他們相當於直接修改本體。reference type 的代表陣營包含：Class, Function, Closure 等。")
print ("value type:\n 就像是電腦中的「建立副本」，在程式碼裡面他們的實例(instance)或值(value)都會被複製一份，會佔記憶體空間。雖然副本與本體名稱相同，但修改副本檔案時，不會干擾到本體。Value Type 的代表陣營包含：Struct, Enum, String...等等。")
/*:
 **7. What’s the difference between instance method and type method?**
 */
print("instance method （實例方法）是指屬於某個特定 class, struct 或 enum 的一部分，影響的範圍比較小（限縮在某隻動物）。例如動物會「吃東西」，Q1 中的 func eat() 就是 class Animal 的 instance method。\n type method（型別方法）是被型別的某個實例呼叫的方法，影響的範圍比較大（提高到所有 Animal 或 zoo 的類別層級）。最明顯的宣告方式是在 func 前面加上 class 或是 static")
/*:
 **8. What does self mean in an instance method and a type method respectively?**
 */
print("self 是讀取物件自己的意思，用來跟參數做區別。在 instance method 中，self 代表實例本身，可以存取裡面的屬性或方法，例如 Q1 中的 self.gender = gender \n 在 type method 中的 self 代表這個類別本身，而不是類別中的實例。")
//: ## Part 2: Enumerations and Optionals in Swift
/*:
 **1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.**
 - Please declare an enum named Gasoline to model gasoline.
 */
/*會重複宣告，因此註解掉本段答案
enum Gasoline {
    case oil92
    case oil95
    case oil98
}
 */
/*:
 - Every kind of gasoline has its price. Please declare a computed property named price and a method named getPrice separately in the Gasoline enum that both will return different prices depending on different gasoline.
 */
enum Gasoline {
    case oil92
    case oil95
    case oil98
    
    var price: Double{
        switch self {
        case .oil92:
            return 22.2
        case .oil95:
            return 23.5
        case .oil98:
            return 24.8
        }
    }
    
    func getPrice() -> Double {
        return price
    }
}

// computed property
Gasoline.oil92.price
// method
Gasoline.oil92.getPrice()
/*:
 - Please establish raw values for the Gasoline enum. The data type of the raw value should be String. For example, 92 should be "92".
 */
/*會重複宣告，因此註解掉本段答案
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
}
Gasoline.oil92.rawValue
 */
/*:
 - Please explain what enum associated value is and how it works.
 */
print(" enum 的 associated value(相關值) 可以用來讀取外部的資料，也允許不同 case 使用不同的型別。")
/*:
 **2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the value of a will be nil or Int. You should have learned how to deal with Optional.**
 - People would like to have pets, but not everyone could have one. Declare a class Pet with a name property and a class People with a pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
 */
class Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
}
/*:
 - Please create a People instance. Use guard let to unwrap the pet property and print its name.
 */
let mc = People()
mc.pet = Pet(name: "Hotdog")

func mcsPet() {
    guard let pet = mc.pet else {
        return
    }
    print(pet.name)
}
mcsPet()
/*:
 - Please create another People instance. Use if let to unwrap the pet property and print its name.
 */
let helo = People()
helo.pet = Pet(name: "Kitty")

func helosPet(){
    if let pet = helo.pet {
        print(pet.name)
    }
}
helosPet()
//: ## Part 3: Protocol in Swift
/*:
 **1. Declare a struct Person with a name property type String and a protocol named PoliceMan. There is only one method arrestCriminals with no argument in the protocol.**
 */
protocol PoliceMan {
    func arrestCriminals()
}

/* 會重複宣告，因此註解掉本段答案
struct Person {
    let name: String
}
*/
/*:
 **2. Make struct Person conform to PoliceMan protocol.**
 */
/* 會重複宣告，因此註解掉本段答案
protocol PoliceMan {
    func arrestCriminals()
}
struct Person: PoliceMan {
    let name: String
    func arrestCriminals(){
        
    }
}
 */
/*:
 **3. Declare a protocol ToolMan with a method fixComputer that has no argument.**
 */
protocol ToolMan {
    func fixComputer()
}
/*:
 **4. Add a property toolMan to the struct Person with data type ToolMan.**
 */
struct Person: PoliceMan {
    let name: String
    var toolMan: ToolMan

    func arrestCriminals() {
    }
}

/*:
 **5. Declare a struct named Engineer that conforms to the ToolMan protocol.**
 */
struct Engineer: ToolMan {
    func fixComputer() {
    }
}
let engineer = Engineer()
/*:
 **6. Create a Person instance with the name “Steven” and also create the relative data you need to declare this instance.**
 */
var person = Person(name: "Steven", toolMan: engineer)
//: ## Part 4: Error Handling in Swift
/*
enum GuessNumberGameError {
    case wrongNumber
}

class GuessNumberGame {
    
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}
*/
/*:
 **Read the code above first and paste it in the playground file, there is an error inside the code. Please solve the error by adding a piece of code in the file. Call guess(number:) and pass 20 as the argument after you fix the problem.**
 */
enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            print("Try again!")
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
        
    }
}


// 猜中目標數字 10 會印出正確數字，猜錯會跳錯誤訊息。
var guessNumberGame = GuessNumberGame()
try guessNumberGame.guess(number: 20)
