//
//  ViewController.swift
//  noobProject
//
//  Created by 이상진 on 2020/11/09.
//

import UIKit

class ViewController: UIViewController {
    
    //로그인창을 만들기 위한 이메일창과 암호창 객체화
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    //tableView 사용을 위한 객체들
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petit e Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli" , "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donos tia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyst er", "forkeerestaurant", "posatelier", "bourkestreetbakery", "haighschocolate", "p alominoespresso", "upstate", "traif", "grahamavenuemeats", "wafflewolf", "fiveleav es", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "caskpubkitc hen"]
    
//    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Ho ng Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "Lon
//    don", "London", "London"]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causu al Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood" , "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "L atin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

//alret(경고창)만들기
//    object에서 button 끌어와서 연결
    @IBAction func alretBtn(_ sender: Any) {
        
//        UIAlertController(title: "(원하는 제목)", message: "(원하는 내용)",
//        preferredStyle: .alert(가운데 경고창을 띄워준다)
//                        .actionsheet(아래쪽에 경고창이 올라온다))
//         먼저 작성해 주고 그 다음에 "let (원하는 이름) = " 으로 상수화 시켜준다
        
//         "let (상수) = " 로 지정하게 되면 나중에 (상수) 로 불러와 긴 코드를 작성하지 않아도 된다
        let alret = UIAlertController(title: "alret", message: "error!", preferredStyle: .alert)
        
//        present로 경고창을 시현시켜준다
//        present("상수화 했던 alret", animated: "애니메이션을 사용(true)",
//                 completion: "아무것도 안함(nil)")
        present(alret, animated: true, completion: nil)
    }
    
//alret(경고창) 만들기 - 1 button
    @IBAction func alretBtn_OkBtn(_ sender: Any) {
        let alret = UIAlertController(title: "alret", message: "error!", preferredStyle: .alert)
        
//        이 부분에서 UIAlert"Action"이 실행됨
//        UIAlertAction(title: "버튼 내용",
//        style: .default(기본)
//               .cancle(취소, 맨아래로 고정된다)
//               .destructive(붉은색으로 강조되어있다),
//                                            handler: "아무것도 안함(nil)")
        let okBtn = UIAlertAction(title: "ok", style: .default, handler: nil)
        
        let closeBtn = UIAlertAction(title: "close", style: .destructive, handler: nil)
        
        
//      (UIAlertController에서 만든 창 또는 상수) 쩜 (addAciton(액션을 실행할 상수))
        alret.addAction(okBtn)
        alret.addAction(closeBtn)
        
        
        present(alret, animated: true, completion: nil)
    }
    

    @IBAction func attentionViewController(_ sender: Any) {
    // 화면위에 올라오는 스토리보드 이동
// self.storyboard?.instantiateViewController(identifier: "storyboard ID")를 상수화 시켜서 present에 넣어줘야 화면을 덮는 방식으로 전개된다.
        
//        이 방식으로 화면전환을 했다면 dismiss로 돌아와야 함
        
        
        let attention = self.storyboard?.instantiateViewController(identifier: "attentionViewController")
     
        
            present(attention!, animated: true, completion: nil)
    }

//    미끄러지듯이 다음화면 이동 (navigation push = pop)
    @IBAction func swipeBtn(_ sender: Any) {
    
        //화면 이동 상수를 만들어 줌
//        let 상수 이름 = self.storyboard?.instantiateViewController(identifier: "storyboard ID")
        let moveMenu = self.storyboard?.instantiateViewController(identifier: "loginViewController")
        
//        미끄러지듯 이동("push" viewController 사용)
//      .pushViewController(상수지정된 이름!, animated: true)
            navigationController?.pushViewController(moveMenu!, animated: true)
    }
    //화면 이동이 가장 쉬우면서 storybaord 상 시현될수 있는 방법: SEGUE
    // 스토리보드 위에 동그라미 안의 네모를 누른 상태로 원하는 뷰 컨트롤러로 끌어다 놓는다
    // show -> 미끄러지듯이 이동 //present modally -> 화면 덮듯이 이동
    // 새롭게 생긴 회색선을 누르고 identifier 에 주소를 적는다 "to ***" 등
    // segue를 이용할 버튼 생성
    @IBAction func loginViewControllerSegue(_ sender: Any) {
        
        //세그 이용 명령어
//      performSegue(withIdentifier: "identfier에 적었던 주소", sender: nil)
        performSegue(withIdentifier: "toLoginViewController", sender: nil)
        // 역시 돌아올때는 pop으로 돌아올것
        
    }
    //(화면연결로 이동하지 않고) 다른 스토리보드의 이동 (is initial View Controller ->(시작화살표) 의 위치 이동
  
    //버튼 연결
    @IBAction func menuBtn(_ sender: Any) {
        //let menuStoryBoard(상수지정) : UIStoryboard = UIStoryboard(name: "Menu(이동할 스토리보드의 이름)", bundle: nil)
        let menuView: UIStoryboard = UIStoryboard(name: "Menu", bundle: nil)
        //let menuView(상수지정)= menuStoryBoard(상수지정했던 스토리보드로 이동하겠다).instantiateViewController(identifier: "menuViewController(이동할 스토리보드의 뷰 컨트롤러 주소")
        let menuViewController = menuView.instantiateViewController(identifier: "menuViewController")
        //밑에 두줄은 그냥 적자 잘 모르겠다
        //UIApplication.shared.windows.first?.rootViewController = menuView(상수 지정했던 다른 스토리보드로 이동하겠다)
        UIApplication.shared.windows.first?.rootViewController = menuViewController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
    //(화면연결로 이동하지 않고) 같은 스토리 보드의 뷰컨트롤러의 이동 (is initial View Controller ->(시작화살표) 의 위치 이동
    
    @IBAction func signUpBtn(_ sender: Any) {
        let signUpView: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let signUpTableViewController = signUpView.instantiateViewController(identifier: "signUpTableViewController")
        UIApplication.shared.windows.first?.rootViewController = signUpTableViewController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
    //창을 다 채우지 않으면 넘어가지 않는 조건문
    @IBAction func loginBtn(_ sender: Any) {
        // || = or, && = and
        //
        if(emailTextField.text! == "" || passwordTextField.text == ""){
            
            let alret = UIAlertController(title: "경고", message: "빈칸이 있습니다", preferredStyle: .alert)
            
            let closeBtn = UIAlertAction(title: "close", style: .cancel, handler: nil)
            
            alret.addAction(closeBtn)
            
            present(alret, animated: true, completion: nil)
            
        } else {
            
            let menuView: UIStoryboard = UIStoryboard(name: "Menu", bundle: nil)
            let menuViewController = menuView.instantiateViewController(identifier: "menuViewController")
            UIApplication.shared.windows.first?.rootViewController = menuViewController
            UIApplication.shared.windows.first?.makeKeyAndVisible()
            
        }
        
    }
    
    
    
    
}

