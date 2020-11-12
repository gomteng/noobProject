//
//  attentionViewController.swift
//  noobProject
//
//  Created by 이상진 on 2020/11/09.
//

import UIKit

class attentionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
//    close 버튼 생성
    @IBAction func closeBtn(_ sender: Any) {
        
//        ins - present 에 되돌아가는 명령어 dismiss
        dismiss(animated: true, completion: nil)
        
    }
    


}
