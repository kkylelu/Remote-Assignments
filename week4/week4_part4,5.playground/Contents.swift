import UIKit

//: 4. (Advanced) Please complete the following function that prints a pyramid made of asterisks.
//: For example, here’s what the output of should be:
/*
     *
    ***
   *****
  *******
 *********
 */

//   *：遇到奇數 1,3,5,7,9 印出 *
// 空格：印出空格 4,3,2,1,0

func printPyramid(layers: Int) { // TODO: print a pyramid
    for i in 1...layers{
        if i % 2 == 1 {
            let space = String(repeating: " ", count: (layers - i) / 2 )
            let pyramid = String(repeating: "*", count: i)
            print(space + pyramid)
        } else {
        }
    }
}
printPyramid(layers: 9)
//: 5. Do you have any App ideas that you are interested in and want to develop? List them along with a brief description (2 sentences at most), and no need to consider the availability, required techniques and business models at all.
/*
  APP 名稱（暫定）：網拍一鍵上架小幫手
  APP 簡介：拍照、出貨、換現金，出清家中二手商品就是這麼簡單！讓 AI 幫你自動修圖、想文案、社群宣傳，一鍵上架各大電商平台。
*/
