//
//  helper.swift
//  noobProject
//
//  Created by 이상진 on 2020/11/09.
//

import Foundation
//시작하면 "import UIKit" 부터 작성한다
import UIKit


//class 지정하기
class alretService {
// static func (이름지정) 변수 넣을 곳을 작성(title(변수의 종류): String(변수값), message: String, 어디서 보여질것이냐 -> view: UIViewController)
    static func alret(title: String, message: String, view: UIViewController) {
        let alret = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        view.present(alret, animated: true, completion: nil)
    }
}
//   class 요청 사용방법
//     버튼 지정하고
//    @IBAction func alretBtn(_ sender: Any) {
//        class . (static func 지정이름)( ect )
//        alretService.alret(title: "11", message: "22", view: self)
    


// 사용예시
//    class alret {
//        static func actionBtn(title: String, message: String, view: UIViewController) {
//            let alret = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
//
//                let closeBtn = UIAlertAction(title: "close", style: .destructive, handler: nil)
//                alret.addAction(closeBtn)
//
//
//            view.present(alret, animated: true, completion: nil)
//
//        }
//
//        static func oneBtn(title: String, message: String, view: UIViewController) {
//            let alret = UIAlertController(title: title, message: message, preferredStyle: .alert)
//
//                let closeBtn = UIAlertAction(title: "Close", style: .cancel, handler: nil)
//
//                alret.addAction(closeBtn)
//
//            view.present(alret, animated: true, completion: nil)
//        }
//
//        static func twoBtn(title: String, message: String, view: UIViewController) {
//            let alret = UIAlertController(title: title, message: message, preferredStyle: .alert)
//
//                let okBtn = UIAlertAction(title: "Ok", style: .default, handler: nil)
//                let closeBtn = UIAlertAction(title: "Close", style: .cancel, handler: nil)
//
//                alret.addAction(okBtn)
//                alret.addAction(closeBtn)
//
//            view.present(alret, animated: true, completion: nil)
//
//        }
//    }
//
//}
