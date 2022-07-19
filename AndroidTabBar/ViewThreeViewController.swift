//
//  ViewThreeViewController.swift
//  AndroidTabBar
//
//  Created by Kenneth Murerwa on 19/07/2022.
//

import UIKit
import XLPagerTabStrip

class ViewThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension ViewThreeViewController: IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "View Three")
    }
}
