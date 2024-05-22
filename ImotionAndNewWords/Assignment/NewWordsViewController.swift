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
    
    @IBOutlet var buttons: [UIButton]!
    
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
        
        for i in 0...buttons.count-1 {
            buttons[i].layer.cornerRadius = 10
            buttons[i].layer.borderWidth = 2
            buttons[i].layer.borderColor = UIColor.black.cgColor
            buttons[i].tintColor = .black
            buttons[i].setTitle(arrKey[i], for: .normal)
        }
        imageView.image = .wordLogo
        imageView.contentMode = .scaleToFill
        
        textLabel.textAlignment = .center
        
        //최근검색어 기능
        if UserDefaults.standard.string(forKey: "최근검색어") != nil {
            UserDefaults.standard.string(forKey: "최근검색어")
            textField.text = "최근검색어: "+UserDefaults.standard.string(forKey: "최근검색어")!
            
            imageView.image = .background
            textLabel.text = list[UserDefaults.standard.string(forKey: "최근검색어")!]
        }
    }
    func keyAndValue() {
        textLabel.text = "검색결과가 없습니다."
        if textField.text != "" {
            for i in 0...4 {
                if textField.text == arrKey[i] {
                    textLabel.text = arrValue[i]
                    UserDefaults.standard.set(textField.text, forKey: "최근검색어")
                }
            }
        }
        else {
            textLabel.text = "검색어를 입력해주세요."
        }
        
        
    }
    @IBAction func enterTextField(_ sender: UITextField) {
        imageView.image = .background
        keyAndValue()
    }
    @IBAction func buttonsPressed(_ sender: UIButton) {
        imageView.image = .background
        if sender.tag == 10 {
            keyAndValue()
        }
        else {
            textLabel.text = arrValue[sender.tag]
            textField.text = arrKey[sender.tag]
            UserDefaults.standard.set(textField.text, forKey: "최근검색어")
        }
    }
}
