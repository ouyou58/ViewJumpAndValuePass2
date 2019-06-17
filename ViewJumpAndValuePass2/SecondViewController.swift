//
//  SecondViewController.swift
//  ViewJumpAndValuePass2
//
//  Created by ouyou on 2019/06/09.
//  Copyright © 2019 ouyou. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var str : String?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 300, height: 50))
        label.backgroundColor = UIColor.yellow
        label.text = str
        
        
        let button = UIButton(frame: CGRect(x: 100, y: 200, width: 200, height: 50))
        button.setTitle("返回到上个界面", for: .normal)
        button.backgroundColor = UIColor.lightGray
        
        button.setTitleColor(UIColor.black, for: .normal)
        
        button.addTarget(self, action: #selector(gotoFirstView), for: .touchUpInside)
        
        self.view.addSubview(label)
        self.view.addSubview(button)
    }
    

    @objc func gotoFirstView(){
        let vc = ViewController()
        self.present(vc, animated: true, completion: nil)
    }

}
