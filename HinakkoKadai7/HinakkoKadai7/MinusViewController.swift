//
//  MinusViewController.swift
//  HinakkoKadai7
//
//  Created by Hina on 2023/05/29.
//

import UIKit

class MinusViewController: UIViewController {

    @IBOutlet private weak var text1: UITextField!
    @IBOutlet private weak var text2: UITextField!
    @IBOutlet private weak var resultText: UILabel!


    @IBAction private func calculateButton(_ sender: UIButton) {
    guard let text1Value = Int(text1.text ?? "") else {
            presentAlert(message: "整数を入力して下さい")
            return
        }
        guard let text2Value = Int(text2.text ?? "") else {
            presentAlert(message: "整数を入力して下さい")
            return
        }
        let resultValue = Int(text1Value - text2Value)
        resultText.text = String("\(resultValue)")
        view.endEditing(true)
    }
    func  presentAlert(message: String?){
        let alert = UIAlertController(title: "課題7", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true ,completion: nil)
    }

}
