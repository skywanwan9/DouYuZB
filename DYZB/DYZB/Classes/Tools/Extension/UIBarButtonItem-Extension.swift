//
//  UIBarButtonItem-Extension.swift
//  DYZB
//
//  Created by Yann on 2024/3/26.
//

import UIKit


extension UIBarButtonItem{
    
//    //扩展类方法
//    class func createItem(imageName:String, hightImageName:String, size:CGSize)->UIBarButtonItem{
//
//        let btn = UIButton()
//        btn.setImage(UIImage(named: imageName), for: .normal)
//        btn.setImage(UIImage(named: hightImageName), for: .highlighted)
//
//        btn.frame = CGRect(origin: .zero, size: size)
//
//        return UIBarButtonItem(customView: btn)
//    }
    
    
    //提倡构造函数
    //便利构造函数 1.convenience开头 2.在构造函数中必须明确调用一个设计的构造函数（self调用）
    convenience init(imageName:String, hightImageName:String = "", size:CGSize = .zero) {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        if hightImageName != "" {
            btn.setImage(UIImage(named: hightImageName), for: .highlighted)
        }
        
        if size == .zero {
            btn.sizeToFit()
        }else{
            btn.frame = CGRect(origin: .zero, size: size)
        }
        //在构造函数中必须明确调用一个设计的构造函数（self调用）
        self.init(customView: btn)
    }
}
