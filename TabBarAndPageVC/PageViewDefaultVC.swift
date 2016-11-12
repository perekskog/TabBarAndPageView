//
//  PageViewDefaultVC.swift
//  TabBarAndPageVC
//
//  Created by Per Ekskog on 2015-09-06.
//  Copyright (c) 2015 Per Ekskog. All rights reserved.
//

import UIKit

class PageViewDefaultVC: UIViewController,
    UIPageViewControllerDataSource {

    @IBOutlet var startWalkthrough: UIButton!
    
    let pageTitles = ["Over 200 Tips and Tricks", "Discover Hidden Features", "Bookmark Favorite Tip", "Free Regular Update"]
    let pageImages = ["page1.png", "page2.png", "page3.png", "page4.png"]
    
    var pageController: UIPageViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("PageViewDefaultVC viewDidLoad")
        
        pageController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal,
            options: nil)
        
        pageController?.dataSource = self
        
        let startingViewController1: PageViewContentFirstVC = pageViewControllerAtIndex(0)!
        
        pageController!.setViewControllers([startingViewController1],
            direction: .forward,
            animated: false,
            completion: nil)
        
        self.addChildViewController(pageController!)
        self.view.addSubview(self.pageController!.view)
        pageController!.didMove(toParentViewController: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("PageViewDefaultVC viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("PageViewDefaultVC viewDidAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("PageViewDefaultVC viewWillLayoutSubviews")
        
        pageController!.view.frame = self.view.bounds

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("PageViewDefaultVC viewDidLayoutSubviews")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("PageViewDefaultVC viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("PageViewDefaultVC viewDidDisappear")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("PageViewDefaultVC didReceiveMemoryWarning")
    }



    /////////////////////////
    // UIPageViewControllerDataSource
    /////////////////////////
    
    func pageViewControllerAtIndex(_ index: Int) -> PageViewContentFirstVC? {
        if index < 0 || index >= pageTitles.count {
            return nil
        }
        
        let storyBoard = UIStoryboard(name: "Main",
            bundle: Bundle.main)
        let newVc = storyBoard.instantiateViewController(withIdentifier: "PageViewContentFirst") as! PageViewContentFirstVC
        
        newVc.pageIndex = index
        newVc.titleText = pageTitles[index]
        newVc.imageFile = pageImages[index]
        
        return newVc

    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let vc = viewController as? PageViewContentFirstVC {
            if let index = vc.pageIndex {
                return pageViewControllerAtIndex(index-1)
            }
        }
        return nil
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let vc = viewController as? PageViewContentFirstVC {
            if let index = vc.pageIndex {
                return pageViewControllerAtIndex(index+1)
            }
        }
        return nil
    }
    
}
