//
//  TabBarSecondVC.swift
//  TabBarAndPageVC
//
//  Created by Per Ekskog on 2015-09-04.
//  Copyright (c) 2015 Per Ekskog. All rights reserved.
//

import UIKit

class TabBarSecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("TabBarSecondVC viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TabBarSecondVC viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TabBarSecondVC viewDidAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("TabBarSecondVC viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("TabBarSecondVC viewDidLayoutSubviews")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TabBarSecondVC viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TabBarSecondVC viewDidDisappear")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("TabBarSecondVC didReceiveMemoryWarning")
    }
}
