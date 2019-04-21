//
//  ViewController.swift
//  ScrollViewPhotoBrowser
//
//  Created by MacBook Pro on 2019/4/21.
//  Copyright © 2019年 MacBookPro. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController,UIScrollViewDelegate {
    
    var scrollView :UIScrollView!
    var imageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //MARK:自快写的
        scrollView = UIScrollView()
        scrollView.delegate = self

        scrollView.frame = self.view.bounds
        let imageView = UIImageView(image: UIImage(named: "bg.jpg"))
        scrollView.contentSize = imageView.bounds.size
        scrollView.addSubview(imageView)
        self.view.addSubview(scrollView)
        

        
//        imageView = UIImageView(frame: self.view.bounds)
//        imageView.image = UIImage(named: "samplePhoto.jpeg")
//        imageView.isUserInteractionEnabled = true
//        scrollView = UIScrollView(frame: self.view.frame)
//        scrollView.maximumZoomScale = 4.0
//        scrollView.minimumZoomScale = 1
//        // scrollView.backgroundColor = UIColor.black
//        scrollView.contentSize = imageView.bounds.size
//        scrollView.delegate = self
//        self.view.addSubview(scrollView)
//        scrollView.addSubview(imageView)
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    

//    //视图滚动中一直触发
//    func scrollViewDidScroll(scrollView: UIScrollView) {
//        print("x:\(scrollView.contentOffset.x) y:\(scrollView.contentOffset.y)")
//    }
//

}

