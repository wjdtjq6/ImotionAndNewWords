//
//  NewWordsViewController.swift
//  ImotionAndNewWords
//
//  Created by t2023-m0032 on 5/17/24.
//

import UIKit

class NewWordsViewController: UIViewController {
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textField: UITextField!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var textLabel: UILabel!
    var list = ["잡채":"'그 자체'의 언어유희","중꺾마":"중요한건 꺾이지않는 마음","스불재":"스스로 불러들인 재앙","ㄱㅂㅈㄱ":"가보자고","댕댕이":"멍멍이"]
    var arrKey: [String] = []
    var arrValue: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in list {
            arrKey.append(i.key)
            arrValue.append(i.value)
        }
        
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 2

        searchButton.setImage(UIImage(systemName: "magnifyingglass")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        searchButton.backgroundColor = .black
        
        button1.layer.cornerRadius = 10
        button2.layer.cornerRadius = 10
        button3.layer.cornerRadius = 10
        button1.layer.borderWidth = 2
        button2.layer.borderWidth = 2
        button3.layer.borderWidth = 2
        button1.layer.borderColor = UIColor.black.cgColor
        button2.layer.borderColor = UIColor.black.cgColor
        button3.layer.borderColor = UIColor.black.cgColor
        button1.tintColor = .black
        button2.tintColor = .black
        button3.tintColor = .black
        
        button1.setTitle(arrKey[0], for: .normal)
        button2.setTitle(arrKey[1], for: .normal)
        button3.setTitle(arrKey[2], for: .normal)
        
        imageView.image = .wordLogo
        imageView.contentMode = .scaleToFill
        
        textLabel.textAlignment = .center
       
        
    }
    func keyAndValue() {
        if textField.text == arrKey[0] {
            textLabel.text = arrValue[0]
        }
        else if textField.text == arrKey[1] {
            textLabel.text = arrValue[1]
        }
        else if textField.text == arrKey[2] {
            textLabel.text = arrValue[2]
        }
        else if textField.text == arrKey[3] {
            textLabel.text = arrValue[3]
        }
        else if textField.text == arrKey[4] {
            textLabel.text = arrValue[4]
        }
        else {
            textLabel.text = "검색결과가 없습니다."
        }
    }
    @IBAction func enterTextField(_ sender: UITextField) {
        imageView.image = .background
        keyAndValue()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        imageView.image = .background
        keyAndValue()
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        imageView.image = .background
        textLabel.text = arrValue[0]
        textField.text = arrKey[0]
    }
    @IBAction func button2Pressed(_ sender: UIButton) {
        imageView.image = .background
        textLabel.text = arrValue[1]
        textField.text = arrKey[1]
    }
    @IBAction func button3Pressed(_ sender: UIButton) {
        imageView.image = .background
        textLabel.text = arrValue[2]
        textField.text = arrKey[2]
    }
}
