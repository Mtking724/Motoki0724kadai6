//
//  ViewController.swift
//  Motoki0724kadai6
//
//  Created by Motoki Okayasu on 2023/06/28.
//

import UIKit

class ViewController: UIViewController {
    
    //labelをoutlet接続
    @IBOutlet private weak var label: UILabel!
    //UISliderをoutlet接続
    @IBOutlet private weak var slider: UISlider!
    //乱数を生成して1から100の数字を表示する
    var randomNum = Int.random(in: 1...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //labelに乱数を代入する
        label.text = String(randomNum)
    }
    
    //判定ボタンをaction接続
    @IBAction private func judgeButton(_ sender: Any) {
        jugdementAlert()
    }
    
    //ツマミの位置によって処理を分岐させる
    private func jugdementAlert() {
        let sliderValue = Int(slider.value)
        let number = Int(label.text!)
        
        if sliderValue == Int(number!) {
            presentAlert(message: "あたり！\n あなたの値: \(sliderValue)")
            reset()
        } else {
            presentAlert(message: "はずれ！\n あなたの値: \(sliderValue)")
            reset()
        }
    }
    
    //ボタンを押した時に乱数を再生成する処理を作成
    private func reset() {
        let randomNum = Int.random(in: 1...100)
        slider.value = 50
        label.text = String(randomNum)
    }
    
    //関数presentAlertでmessageを定義
    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        let challenge = UIAlertAction(title: "再挑戦", style: .default)
        alert.addAction(challenge)
        present(alert, animated: true, completion: nil)
    }
    
}











