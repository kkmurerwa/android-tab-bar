//
//  ViewController.swift
//  AndroidTabBar
//
//  Created by Kenneth Murerwa on 19/07/2022.
//

import UIKit
import XLPagerTabStrip

class ViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        loadDesign()
        
        super.viewDidLoad()
    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewOne")
        let child_2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewTwo")
        let child_3 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewThree")
        
        return [child_1, child_2, child_3]
    }

    func loadDesign() {
        self.settings.style.buttonBarBackgroundColor = .white
        self.settings.style.buttonBarItemBackgroundColor = .systemBlue
        self.settings.style.selectedBarBackgroundColor = .systemBackground // Bottom selected bar
        self.settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 13)
        self.settings.style.selectedBarHeight = 4.0
        self.settings.style.buttonBarMinimumLineSpacing = 0
        self.settings.style.buttonBarItemTitleColor = .black
        self.settings.style.buttonBarItemsShouldFillAvailableWidth = true
        self.settings.style.buttonBarLeftContentInset = 0
        self.settings.style.buttonBarRightContentInset = 0
        self.settings.style.buttonBarMinimumInteritemSpacing = 0
        
        changeCurrentIndexProgressive = {(oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            
            guard changeCurrentIndex == true else {
                return
            }
            
            oldCell?.label.textColor = UIColor.white
            newCell?.label.textColor = UIColor.white
            
        }
        
    }
    
}

