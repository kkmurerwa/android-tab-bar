//
//  ViewTwoViewController.swift
//  AndroidTabBar
//
//  Created by Kenneth Murerwa on 19/07/2022.
//

import UIKit
import XLPagerTabStrip

class ViewTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension ViewTwoViewController: IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "View Two")
    }
}
