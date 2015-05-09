//
//  ResultViewController.swift
//  ガチャ
//
//  Created by ねこかん on 2015/05/09.
//  Copyright (c) 2015年 nekokan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //乱数を入れるためのInt型の変数を用意
    
    var number: Int!
    
    //背景画像とモンスター画像を表示するためのImageViewを用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterLmageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NSLog("渡された値は...%dです", number)
        
        if number == 9 {
            //激レアモンスター
            
            monsterLmageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else if number > 7 {
            //レアモンスター
            
            monsterLmageView.image = UIImage(named: "monste006")
            backgroundImageView.image = UIImage(named: "bg_red")
        }else{
            //ノーマルモンスター
            
            monsterLmageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back() {
        self.dismissViewControllerAnimated(true, completion:  nil)
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
