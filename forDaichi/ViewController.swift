//
//  ViewController.swift
//  forDaichi
//
//  Created by KINARI NISHIYAMA on 2016/06/12.
//  Copyright © 2016年 KINARI NISHIYAMA. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    @IBOutlet weak var bat: UIButton!
    
    var image: UIImage!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var timeLabel: UILabel!
    var ballLabel: UILabel!
    
    
    var timer: NSTimer!
    var gameTime: NSTimer!
    
    
    var ballTime: NSTimer!
    
    var ope = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        
        
        //imageViewの色を設定
        if ope == 1{
            imageView.image = image
            imageView.backgroundColor = UIColor.redColor()
            
        }else if ope == 2{
            imageView.backgroundColor = UIColor.blackColor()
        }
        
        print(ope)
        
        
    }
    
    
    @IBAction func startBt(sender: AnyObject) {
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

