//
//  ViewController.swift
//  ガチャ
//
//  Created by ねこかん on 2015/05/09.
//  Copyright (c) 2015年 nekokan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //　ボタンを押したときに乱数を発生させる。
    @IBAction func getRandomNumber() {
        number = Int(arc4random_uniform(10))
        NSLog("発生した乱数は...%dです", number)
    }
    
    //画面遷移する前に呼ばれる処理。ここで２つ目の画面（ResultViewController）に値を渡す。
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Segueのgestination(目的地)、つまりこの画面の次の画面を取得する。
        var resultViewController = segue.destinationViewController as
            ResultViewController
        
        // 結果画面のnumber変数に、ガチャ画面で発生した乱数を渡す。
        
    }

}

