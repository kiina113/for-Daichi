//
//  SelectViewController.swift
//  forDaichi
//
//  Created by KINARI NISHIYAMA on 2016/06/12.
//  Copyright © 2016年 KINARI NISHIYAMA. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController {
    @IBOutlet weak var playerBt: UIButton!
    @IBOutlet weak var playerBt2: UIButton!
    
    var image: UIImage!
    
    var ope = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playerBt(sender: AnyObject) {
       ope = 1
        
        image = UIImage(named: "1.png")
        
        performSegueWithIdentifier("segue", sender: nil)
    }
    @IBAction func playBt2(sender: AnyObject) {
        ope = 2
        performSegueWithIdentifier("segue", sender: nil)

    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "segue") {
            
            var viewController: ViewController = segue.destinationViewController as! ViewController
        
            viewController.ope = ope
            viewController.image = image
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
}

