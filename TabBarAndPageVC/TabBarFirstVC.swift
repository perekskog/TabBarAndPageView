//
//  TabBarFirstVC.swift
//  TabBarAndPageVC
//
//  Created by Per Ekskog on 2015-09-04.
//  Copyright (c) 2015 Per Ekskog. All rights reserved.
//

import UIKit

class TabBarFirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("TabBarFirstVC viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TabBarFirstVC viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TabBarFirstVC viewDidAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("TabBarFirstVC viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("TabBarFirstVC viewDidLayoutSubviews")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TabBarFirstVC viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TabBarFirstVC viewDidDisappear")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("TabBarFirstVC didReceiveMemoryWarning")
    }
}
