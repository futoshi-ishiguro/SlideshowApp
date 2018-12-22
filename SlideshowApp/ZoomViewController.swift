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
    
    var x: UIImage! //ViewControllerから受け取った画像データ
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        zoomImage.image = x
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let returnViewController:ViewController = segue.destination as! ViewController
        
        returnViewController.y = zoomImage.image
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
