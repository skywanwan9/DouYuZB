//
//  MainViewController.swift
//  DYZB
//
//  Created by Yann on 2024/3/25.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVC(storyName: "Home")
        addChildVC(storyName: "Live")
        addChildVC(storyName: "Follow")
        addChildVC(storyName: "Mine")
       
    }
    
    
    private func addChildVC(storyName:String){
        //1.通过storyboard获取控制器
        let childVC = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!//nil 默认mainBundle
        //2.添加子控制器
        addChild(childVC)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
