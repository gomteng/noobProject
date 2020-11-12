//
//  loginViewController.swift
//  noobProject
//
//  Created by 이상진 on 2020/11/09.
//

import UIKit

class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //전 화면으로 돌아가기 버튼
    @IBAction func backBtn(_ sender: Any) {
        //"pop" view controller 를 true로 만들어준다
        navigationController?.popViewController(animated: true)
    }

}
