//
//  ZoomViewController.swift
//  SlideshowApp
//
//  Created by 石黒太志 on 2018/12/18.
//  Copyright © 2018 futoshi.ishiguro. All rights reserved.
//

import UIKit

class ZoomViewController: UIViewController{
    @IBOutlet weak var zoomImage: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    var zoomImageNo: Int = 0
    let images = [
        "image0.jpg",
        "image1.jpg",
        "image2.jpg"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let name = images[zoomImageNo]
        
        let image = UIImage(named: name)
        
        imageView.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
