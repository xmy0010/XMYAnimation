//
//  ColorViewController.swift
//  XMYAnimationSimple
//
//  Created by T_yun on 15/12/25.
//  Copyright © 2015年 T_yun. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var blueSqure: UIView!
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(1, animations: {
        
            self.blueSqure.backgroundColor = UIColor.redColor()
            self.name.textColor = UIColor.whiteColor()
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
