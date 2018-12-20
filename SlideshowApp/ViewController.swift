//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 石黒太志 on 2018/12/18.
//  Copyright © 2018 futoshi.ishiguro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buttom: UIButton!
    
    var timer: Timer!
    
    var dispImageNo = 0
    var PlayOrStop = 0
    
    let images = [
        "image0.jpg",
        "image1.jpg",
        "image2.jpg"
    ]
    
    func displayImage(){
        
        
        if dispImageNo < 0{
            dispImageNo = 2
        }
        
        if dispImageNo > 2{
            dispImageNo = 0
        }
        
        let name = images[dispImageNo]
        
        let image = UIImage(named: name)
        
        imageView.image = image
    }
    @IBAction func go(_ sender: Any) {
        if PlayOrStop == 0{
            dispImageNo += 1
            displayImage()
        }
    }
    @IBAction func back(_ sender: Any) {
        if PlayOrStop == 0{
            dispImageNo -= 1
            displayImage()
        }
    }
    @IBAction func PlayAndStop(_ sender: Any) {
        
        if PlayOrStop == 0{
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            PlayOrStop = 1
            buttom.setTitle("停止", for: .normal)
        }
        
        else{
            self.timer.invalidate()
            PlayOrStop = 0
            buttom.setTitle("再生", for: .normal)
        }
    }
    
    @objc func updateTimer(_ timer: Timer){
        dispImageNo += 1
        displayImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImage(named: "image0.jpg")
        imageView.image = image
        buttom.setTitle("再生", for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let zoomViewController:ZoomViewController = segue.destination as! ZoomViewController
        
        zoomViewController.zoomImageNo = dispImageNo
 }
    @IBAction func unwind(_ segue: UIStoryboardSegue){
    }


}

