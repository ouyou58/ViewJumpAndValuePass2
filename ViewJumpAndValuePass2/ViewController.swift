//
//  ViewController.swift
//  ViewJumpAndValuePass2
//
//  Created by ouyou on 2019/06/09.
//  Copyright © 2019 ouyou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var str = "我要把这句话传递到下一个界面"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray

        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 300, height: 50))
        label.backgroundColor = UIColor.yellow
        label.text = str
        
        
        let button = UIButton(frame: CGRect(x: 100, y: 200, width: 200, height: 50))
        button.setTitle("跳转到下一个界面", for: .normal)
        button.backgroundColor = UIColor.red
        
        button.setTitleColor(UIColor.black, for: .normal)
        
        button.addTarget(self, action: #selector(gotoSecondView), for: .touchUpInside)
        
        self.view.addSubview(label)
        self.view.addSubview(button)
        
        
    }
    
    @objc func gotoSecondView(){
        let vc = SecondViewController()
        vc.str = str
        self.present(vc, animated: true, completion: nil)
    }


}

/*方法二：两个界面都是用代码写的
 界面跳转：需要手动添加action，然后在方法里实例化SecondView，用self.present、self.push等方法来跳转到下一个界面
 传值：当实例化SecondView之后，就可以把值代入到这个界面
 */
