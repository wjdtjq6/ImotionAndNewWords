//
//  EmotionAndNewWorldsViewController.swift
//  ImotionAndNewWords
//
//  Created by t2023-m0032 on 5/18/24.
//
import UIKit

class EmotionAndNewWorldsViewController: UIViewController {
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textField: UITextField!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var textLabel: UILabel!
    var list = [["잡채", "중꺾마", "스불재", "ㄱㅂㅈㄱ", "댕댕이"], ["'그 자체'의 언어유희","중요한건 꺾이지않는 마음", "스스로 불러들인 재앙", "가보자고", "멍멍이"]]
    
    var randoms = [Int.random(in: 0...4), Int.random(in: 0...4), Int.random(in: 0...4)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 2
        
        searchButton.setImage(UIImage(systemName: "magnifyingglass")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        searchButton.backgroundColor = .black
        
        for i in 0...buttons.count-1 {
            buttons[i].layer.cornerRadius = 10
            buttons[i].layer.borderWidth = 2
            buttons[i].layer.borderColor = UIColor.black.cgColor
            buttons[i].tintColor = .black
            buttons[i].setTitle(list[0][randoms[i]], for: .normal)
        }
        
        imageView.image = .wordLogo
        imageView.contentMode = .scaleToFill
        
        textLabel.textAlignment = .center
    }
    func keyAndValue() {
        textLabel.text = "검색결과가 없습니다."

        for i in 0...4 {
            if textField.text == list[0][i] {
                textLabel.text = list[1][i]
            }
        }
    }
    
    @IBAction func enterTextField(_ sender: UITextField) {
        imageView.image = .background
        keyAndValue()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton)
    {
        imageView.image = .background
        if sender.tag == 10 {
            keyAndValue()
        }
        else {
            textField.text = list[0][randoms[sender.tag]]
            textLabel.text = list[1][randoms[sender.tag]]
        }
    }
}
