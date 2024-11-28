//
//  HomeVC.swift
//  DYZB
//
//  Created by Yann on 2024/3/26.
//

import UIKit

private let KTitleViewH:CGFloat = 40
class HomeVC: UIViewController {

    //MARK:===懒加载属性(在其他地方也可能用到)
    private lazy var pageTitleView:PageTitleView = {
        let titleFrame = CGRect(x: 0, y: KStatusBarH+KNavigationBarH, width: KScreenW, height: KTitleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        return titleView
    }()
    
    override func viewDidLoad() {
        
        //MARK:====系统回调函数
        super.viewDidLoad()

        
        setupUI()
        
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




//MARK:- 设置UI界面
extension HomeVC{
    private func setupUI(){
        //设置导航栏
        setupNavBar()
        
        //设置UI界面
        view.addSubview(pageTitleView)
        //不需要调整scrollow内边距
        automaticallyAdjustsScrollViewInsets = false
    }
    
    private func setupNavBar(){
//        let btn = UIButton()
//        btn.setImage(UIImage(named: "icon_liwu"), for: .normal)
//        btn.sizeToFit()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "icon_liwu")
        
        //设置右侧
        let size = CGSize(width: 40, height: 40)
//        let zanBtn = UIButton()
//        zanBtn.setImage(UIImage(named: "icon_dz"), for: .normal)
//        zanBtn.setImage(UIImage(named: "icon_dg"), for: .highlighted)
//        zanBtn.frame = CGRect(origin: .zero, size: size)
//        let zanItem = UIBarButtonItem.createItem(imageName: "icon_dz", hightImageName: "icon_dg", size: size)
        let zanItem = UIBarButtonItem(imageName: "icon_dz", hightImageName: "icon_dg", size: size)
        
        //let shareBtn = UIButton()
        
//        let shareItem = UIBarButtonItem.createItem(imageName: "icon_fx", hightImageName: "icon_fx", size: size)
        let shareItem = UIBarButtonItem(imageName: "icon_fx", hightImageName: "icon_fx", size: size)

        //let friendBtn = UIButton()
        
//        let friendItem = UIBarButtonItem.createItem(imageName: "icon_haoy", hightImageName: "icon_haoy", size: size)
        let friendItem = UIBarButtonItem(imageName: "icon_haoy", hightImageName: "icon_haoy", size: size)

        navigationItem.rightBarButtonItems = [zanItem,shareItem,friendItem]
        
        
    }
}
