//
//  ViewController.swift
//  ImgViewTest03
//
//  Created by dit02 on 2019. 3. 26..
//  Copyright © 2019년 dit02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var count = 1
    var direction = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImageView.image = UIImage(named: "frame1.png")
        myLabel.text = "1"
    }

    @IBAction func changeImage(_ sender: Any) {
        
        if count == 5 {
         direction = false
        }
        else if count == 1  {
            direction = true
         }
        if direction == true {
        count += 1
        } else {
            count -= 1
        }
        
        myImageView.image = UIImage(named: "frame\(count).png")
        myLabel.text = String(count)
    }
    
}

