//
//  PageViewContentFirstVC.swift
//  TabBarAndPageVC
//
//  Created by Per Ekskog on 2015-09-06.
//  Copyright (c) 2015 Per Ekskog. All rights reserved.
//

import UIKit

class PageViewContentFirstVC: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    var pageIndex: Int?
    var titleText: String?
    var imageFile: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("PageViewContentFirstVC viewDidLoad [\(pageIndex)]")
        
        if let i = imageFile {
            let img = UIImage(named: i)
            backgroundImageView.image = img
        }
        
        if let t = titleText {
            titleLabel.text = t
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("PageViewContentFirstVC viewWillAppear [\(pageIndex)]")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("PageViewContentFirstVC viewDidAppear [\(pageIndex)]")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("PageViewContentFirstVC viewWillLayoutSubviews [\(pageIndex)]")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("PageViewContentFirstVC viewDidLayoutSubviews [\(pageIndex)]")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("PageViewContentFirstVC viewWillDisappear [\(pageIndex)]")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("PageViewContentFirstVC viewDidDisappear [\(pageIndex)]")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("PageViewContentFirstVC didReceiveMemoryWarning [\(pageIndex)]")
    }
    
}
