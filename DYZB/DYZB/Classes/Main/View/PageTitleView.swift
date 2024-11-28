//
//  PageTitleView.swift
//  DYZB
//
//  Created by Yann on 2024/3/26.
//

import UIKit

private let scrollLineH:CGFloat = 3
class PageTitleView: UIView {
    
    private lazy var scrollow:UIScrollView = {
        let scrollow = UIScrollView()
        scrollow.showsHorizontalScrollIndicator = false
        scrollow.scrollsToTop = false
        scrollow.bounces = false
//        scrollow.contentInsetAdjustmentBehavior = .never
        return scrollow
    }()
    
    private lazy var scrollowLine:UIView = {
        let scrollowLine = UIView()
        scrollowLine.backgroundColor = .orange
        return scrollowLine
    }()
    
    private lazy var titleLables:[UILabel] = [UILabel]()
    
    //MARK:===定义属性
    private var titles:[String]
    
    
    //MARK: ==自定义构造函数
    init(frame:CGRect, titles:[String]) {
        self.titles = titles
        super.init(frame: frame)
        
        //设置界面
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}


extension PageTitleView{
    private func setupUI(){
        
        //1.添加scrollView
        addSubview(scrollow)
        scrollow.frame = bounds
        
        //2.添加titleLab
        setupTitleLables()
        //3.添加滚动线
        setupBottomLineAndScrollowLine()
    }
    
    
    private func setupTitleLables(){
        let labY:CGFloat = 0
        let labW:CGFloat = frame.width/CGFloat(titles.count)
        let labH:CGFloat = frame.height - scrollLineH

        for (index, title) in titles.enumerated() {
            let lab = UILabel()
            lab.tag = index
            lab.text = title
            lab.textAlignment = .center
            lab.font = .systemFont(ofSize: 15)
            lab.textColor = .black
            let labX = CGFloat(index) * labW
            lab.frame = CGRect(x: labX, y: labY, width: labW, height: labH)
            scrollow.addSubview(lab)
            titleLables.append(lab)
        }
    }
    
    private func setupBottomLineAndScrollowLine(){
        let bottomLine = UIView()
        bottomLine.backgroundColor = .gray
        bottomLine.frame = CGRect(x: 0, y: frame.height-1, width: frame.width, height: 1)
        addSubview(bottomLine)
        
        scrollow.addSubview(scrollowLine)
        guard let firstLab = titleLables.first else {
            return
        }
        firstLab.textColor = .orange
        scrollowLine.frame = CGRect(x: firstLab.frame.origin.x, y: frame.height-scrollLineH, width: firstLab.frame.width, height: scrollLineH)
    }
    
}
