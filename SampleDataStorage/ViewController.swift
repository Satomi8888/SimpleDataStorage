//
//  ViewController.swift
//  SampleDataStorage
//
//  Created by 遠山　聡美 on 2017/11/07.
//  Copyright © 2017年 satomi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    @IBAction func tapActionButton(_ sender: Any) {
        //UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        //textという値で保存
        userDefaults.set(textField.text, forKey: "text")
        //userDefaultsへの値の保存を明示的に行う
        userDefaults.synchronize()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        
        //textというkeyを指定して保存していた値を取り出す
        if let value = userDefaults.string(forKey: "text") {
            //取り出した値をテキストフィールドい入れる
            textField.text = value
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

