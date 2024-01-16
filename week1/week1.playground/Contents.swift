import UIKit

//: # week1
/*:
 ## Part 1: Git & GitHub
 
**2. Here are some Git and GitHub commands we usually use in software development.
Please explain the meanings and use cases of them.**
 
 1. git status

    檢查目前工作區的狀態，用來了解哪些檔案被修改。

 2. git diff

    了解提交時間點之間的變化，用來比較兩個檔案版本之間的差異，還可以比較檔案內的變更，比 git status 還詳細。

 3. git add

    追蹤檔案變更，用來將檔案放到暫存區。

 4. git reset

    還原檔案，用來將檔案還原到指定版本。

 5. git commit

    提交檔案，用來把暫存區的檔案保存在儲存庫，比 git add 更進一步保存。

 6. git log

    檢視提交過的歷史紀錄，用來了解檔案之前發生過什麼事，包含作者、時間、事件。

 7. git branch

    新增或刪除檔案的分支，用來新增功能或修改 bug，避免影響程式主幹。

 8. git merge

    合併檔案分支，與 git branch 相反，用來將已經分出去的新功能或更動，合併套回程式主幹上。

 9. git push [ repo_name ] [ branch_name ]

    上傳/推送檔案，用來把自己本機端儲存庫的檔案，上傳/推送到遠端儲存庫。遠端儲存庫相對於本機儲存庫，像是 GitHub 即為遠端儲存庫。
 
 10. git remote
    
    管理遠端儲存庫，用來查看、新增、刪除遠端儲存庫檔案。

 11. fork

    建立儲存庫的新副本，用來將他人的 GitHub 儲存庫，複製一份給自己，可以自由修改而不需要取得原作者的權限。

 12. (Advanced) git rebase
    
    合併分支有兩種，一種是上述第 8 點的 git merge，一種是 git rebase。前者不會改變先前 commit 的歷史紀錄，而在合併的當下如果想重新改寫先前 commit 過的紀錄，就可以使用 rebase。

 13. (Advanced) git cherry-pick
   
    只撿取想要的功能。通常用在軟體有穩定的開發版本或功能時，需要臨時功能修改或新增，不過不想將整個 branch 合併到 master，這時可以用 cherry-pick 撿取部分的 commit 到 master。

 14. (Advanced) git reflog
    
    顯示先前每個指令的 SHA-1 值。適合用來還原先前的版本紀錄，如果用了 git reset 還原到先前版本，但在 git log 找不到相關紀錄，可以用 git reflog 找到 SHA-1 編號，再將版本還原。

 15. (Advanced) git tag
    
    列出 Git 中所有標籤。用來對專案歷史中，特別或重要的時間點下標籤，方便日後追蹤查找。
 
 ---
 
 **3. Please describe how to establish a GitHub repo and how to upload the local projects
 to GitHub. Try to explain your answers with as much detail as possible.**
 
 Git 將檔案位置分為本地儲存庫（Local） 和遠端儲存庫（Remote），在 GitHub 建立 repo 並將本地檔案上傳 GitHub 的流程如下：

 *1. 建立 GitHub repo*

    * 在 GitHub 個人頁面點選「 New repository」
    * 命名 New repository
    * 在 Quick setup 頁面，複製 https 網址 (另一個選項是 SSH) ，例如 https://github.com/kkylelu/Remote-Assignments.git
 

 *2. 將 local projects 上傳到 GitHub*

    連線遠端儲存庫：在 Terminal 輸入 git remote add origin 以及遠端儲存庫網址 https://github.com/kkylelu/Remote-Assignments.git ，畫面會顯示需要輸入 GitHub 帳密

    上傳檔案到遠端儲存庫：

    - 先以 git add . 追蹤所有檔案變動
    - 再以 git commit -m 將檔案移到暫存區，並寫下這次更新的備註
    - 最後輸入 git push 就可以完成上傳。

    ps. 如果遇到「Authentication failed」錯誤訊息，需要到 GitHub 的 setting/ Personal access tokens/ generate new token，勾選「repo」，點選「generate new token」來獲得 Authentication
 
 */


//: ## Part 2: Basic

//: **1. Please explain the difference between let and var .**

//:    let 是常數，用來命名「不會」改變的值，例如我們通常只有 1 個媽媽，適合用 let 命名。
//:    var 是變數，用來命名「可以」改變的值，例如我們每個時期的朋友會改變，適合用 var 命名。

/*:
 **2. In Swift, we usually define a variable through the syntax as below:
 var x: Int = 10.
 We use the formula: 2 * radius * pi to calculate the circumference. Now, please
 define a variable pi and assign a value to it. You can refer to the syntax above while
 thinking about using var or let and which data type it should be.**
 */
let pi:Double = 3.14
/*:
  **3. Declare two constants x and y of type Int then assign any value to them. After
 that, please calculate the average of x and y and store the result in a constant
 named average.**
 */
var x = 100
var y = 30
var average: Int
average = (x+y)/2
print(average)
/*:
 **4. Following Q3, now we want to save the average in a record system, but the system
 doesn’t accept 65 but 65.0.**
 */
/*:
 **● Please solve this problem so that we can put the average in the record
 system.**
 */
var averageFloat = Float(x+y)/2.0
print(averageFloat)
//:  **● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).**
var a = 10/3
print("10/3 會呈現 Int 型別，只有整數。")

var b = 10.0/3.0
print("10.0/3.0 會出現 Float 或 Double 的結果，也就是有小數點。")
/*:
 **5. Declare two constants that values are 10 and 3 each, then please calculate the
 remainder and save the result in a constant named remainder .**
 */
let valueA = 10
let valueB = 3
let remainder = valueA%valueB
print(remainder)
/*:
 **6. Swift is a very powerful language that can infer the data type for you ( Type Inference
 ) while we still need to know the basics well. Please change the following codes into
 the ones with the type annotation.
 Ex: .var x = 10. => .var x: Int = 10.**
 */
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Float = 86.8
/*:
 **7. What is Type Inference in Swift?**
 */
print("型別推論(Type Inference)，是指 Swift 會自動推理出要儲存的值是什麼型別，例如 Int, String 或 Double，不需要開發者另外宣告。")

/*:
 **8. What is the issue about this piece of code?**
 */
var phoneNumber = 0987654321
// phoneNumber = "Hello world."
print("phoneNumber 一開始被宣告為 Int，但後來被指定為 String，因此出現錯誤訊息「Cannot assign value of type 'String' to type 'Int'」")
/*:
 **9. operators are very useful when programming. Please declare a variable   with initial value 22000, and use unary plus operator
 adding 28000 to salary, so it will be 50000 after this process.**
 */
var value = 22000
var salary = value + 28000
print(salary)
/*:
 **10. You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant.
 Now please write down the Equality operator in Swift.**
 */
print("==")
//: ---
//: ## Part 3: Collection
/*:
 **1. Please initialize an empty array with String data type and assign it to a variable named .myFriends.**
 */
var myFriends: [String] = []
/*:
 **2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once.**
 */
myFriends += ["Ian", "Bomi", "Kevin"]
/*:
 **3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of the myFriends array.**
 */
myFriends.append("Michael")
print(myFriends)
/*:
 **4. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.**
 */
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)
print(myFriends)
/*:
 **5. Use for...in to print all the friends in myFriends array.**
 */
print(myFriends[0...3])
/*:
 **6. Now I want to know who is at index 5 in the myFriends array, try to find the answer for me. Please explain how you get the answer and why the answer is it.**
 */
// myFriends[5]
print("根據 208 行，使用 myFriends[5] 找不到 index 5 的資料，因此出現錯誤訊息「 Execution was interrupted, reason: EXC_BREAKPOINT (code=1, subcode=0x1929f43a0).The process has been left at the point where it was interrupted, use thread return -x to return to the state before expression evaluation.」")
/*:
 **7. How to get the first element in an array?**
 */
print(myFriends.first)
/*:
 **8. How to get the last element in an array?**
 */
print(myFriends.last)
/*:
 **9. Please initialize a Dictionary with keys of type String, value of type Int, and assign it to a variable named myCountryNumber .**
 */
var myCountryNumber: [String: Int] = [:]
/*:
 **10. Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively.**
 */
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81
print(myCountryNumber)
/*:
 **11. Change the value of ‘GB’ from 44 to 0.**
 */
myCountryNumber["GB"] = 0
print(myCountryNumber)
/*:
 **12. How to declare an empty dictionary?**
 */
var dictionary:[String: Int] = [:]
dictionary.isEmpty
print(dictionary)
/*:
 **13. How to remove a key-value pair in a dictionary?**
 */
print("dictionary.remove(at: <#T##Dictionary<String, Int>.Index#>)")

//: ---
//: ## Part 4: Control Flow

/*:
 **1. Here is an array:
 let lottoNumbers = [10, 9, 8, 7, 6, 5]
 Please use For-In loop and Range to print the last three members in the .lottoNumbers. array.**
 */
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for number in lottoNumbers.suffix(3) {
    print(number)
}
/*:
 **2. Please use a for-in loop to print the results as the images listed below respectively (through .lottoNumbers.):
 .5
 .6
 .7
 .8
 .9
 .10
 .10 .8 .6**
 */
for numberReverse in lottoNumbers.reversed(){
    print(numberReverse)
}

for number2 in lottoNumbers where number2 % 2 == 0{
    print(number2)
}
/*:
 **3. Please use a while loop to solve the Q2.**
 */
var index = lottoNumbers.count - 1
while index >= 0{
    print(lottoNumbers[index])
    index -= 1
}

var index2 = 0
while index2 < lottoNumbers.count && lottoNumbers[index2] % 2 == 0{
    print(lottoNumbers[index2])
    index2 += 2
}
/*:
 **4. Please use a repeat-while loop to solve Q2.**
 */
var repeatIndex = lottoNumbers.count - 1
repeat {
    print(lottoNumbers[repeatIndex])
    repeatIndex -= 1
} while repeatIndex >= 0

var repeatIndex2 = 0
repeat {
    print(lottoNumbers[repeatIndex2])
    repeatIndex2 += 2
} while repeatIndex2 < lottoNumbers.count && lottoNumbers[repeatIndex2] % 2 == 0
/*:
 **5. What are the differences between while and repeat-while?**
 */
print("while loop 會先判斷條件是否符合，再開始執行，直到滿足條件結束； repeat-while 則不論條件是否符合，都會先執行至少一次。")
/*:
 **6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”**
 */
var isRaining: Bool = true
if isRaining == true {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}
/*:
 **7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director.
 Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.**
 */
var jobLevel = 2
if jobLevel == 1{
    print("Member")
} else if jobLevel == 2{
    print("Team Leader")
} else if jobLevel == 3{
    print("Manager")
} else {
    print("Director")
}

switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
default:
    print("Director")
}
//: ---
//: ## Part 5: Function

/*:
 **1. What are the return types in the following statements?**
 */
print("function 會回傳 String 和 Double")
/*:
 **2. Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give the argument b a default value of 10.**
 */
func multiply(a: Int, b: Int = 10)  {
    print(a*b)
}
multiply(a: 5)
/*:
 **3. What’s the difference between argument label and parameter name in a function?**
*/
print("外部參數名(argument label) 用來呼叫 function 使用；內部參數名(parameter name) 則是 function 內使用。區分兩者是為了增加程式的可讀性。")
/*:
 **4. Please declare a function named .name. as a parameter name. This you call the function greet like this:greet(person: "Luke") It will return the string: “Hello, Luke”.**
 */
func greet(person name: String) -> String {
    return("Hello,\(name)")
}
greet(person: "Luke")
