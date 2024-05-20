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
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var textLabel: UILabel!
    var list = [["잡채", "중꺾마", "스불재", "ㄱㅂㅈㄱ", "댕댕이"], ["'그 자체'의 언어유희","중요한건 꺾이지않는 마음", "스스로 불러들인 재앙", "가보자고", "멍멍이"]]
    
    var random1 = Int.random(in: 0...4)
    var random2 = Int.random(in: 0...4)
    var random3 = Int.random(in: 0...4)
    lazy var random = [random1, random2, random3]
    
    lazy var button = [button1, button2, button3]
    //lazy가 뭐질래 붙이니까 되지?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 2
        
        searchButton.setImage(UIImage(systemName: "magnifyingglass")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        searchButton.backgroundColor = .black
        
        for i in button {
            i!.layer.cornerRadius = 10
            i!.layer.borderWidth = 2
            i!.layer.borderColor = UIColor.black.cgColor
            i!.tintColor = .black
        }
        //lazy는 옵셔널이구나!!왜 누구는 옵셔널 누구는 아니지?
        
        button1.setTitle(list[0][random1], for: .normal)
        button2.setTitle(list[0][random2], for: .normal)
        button3.setTitle(list[0][random3], for: .normal)
        
        imageView.image = .wordLogo
        imageView.contentMode = .scaleToFill
        
        textLabel.textAlignment = .center
    }
    func keyAndValue() {
        if textField.text == list[0][0] {
            textLabel.text = list[1][0]
        }
        else if textField.text == list[0][1] {
            textLabel.text = list[1][1]
        }
        else if textField.text == list[0][2] {
            textLabel.text = list[1][2]
        }
        else if textField.text == list[0][3] {
            textLabel.text = list[1][3]
        }
        else if textField.text == list[0][4] {
            textLabel.text = list[1][4]
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
        textField.text = list[0][random1]
        textLabel.text = list[1][random1]
    }
    @IBAction func button2Pressed(_ sender: UIButton) {
        imageView.image = .background
        textField.text = list[0][random2]
        textLabel.text = list[1][random2]
    }
    @IBAction func button3Pressed(_ sender: UIButton) {
        imageView.image = .background
        textField.text = list[0][random3]
        textLabel.text = list[1][random3]
    }
}

