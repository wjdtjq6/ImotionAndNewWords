//
//  ImotionViewController.swift
//  ImotionAndNewWords
//
//  Created by t2023-m0032 on 5/17/24.
//

import UIKit

class ImotionViewController: UIViewController {

    @IBOutlet var resetButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var topImage: UIImageView!
  
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet var countLabels: [UILabel]!
    
    var counts = [Int.random(in: 0...100),Int.random(in: 0...100),Int.random(in: 0...100),Int.random(in: 0...100),Int.random(in: 0...100),Int.random(in: 0...100),Int.random(in: 0...100),Int.random(in: 0...100),Int.random(in: 0...100)]
    
    var texts = ["사랑해", "좋아해", "행복해", "서운해", "우울해", "공허해", "해피해" ,"러브해", "도전해"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        topImage.image = UIImage(systemName: "list.bullet")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        
        titleLabel.text = "감정다이어리"
        titleLabel.textAlignment = .center
        titleLabel.font = .boldSystemFont(ofSize: 20)
        
        resetButton.setTitle("Reset", for: .normal)
        resetButton.titleLabel?.textAlignment = .right
        
        for i in 0...buttons.count-1 {
            buttons[i].setImage(UIImage(named: "slime\(i+1)")?.withRenderingMode(.alwaysOriginal), for: .normal)
        }
        for i in 0...countLabels.count-1 {
            if UserDefaults.standard.string(forKey: "\(i)") != nil {
                counts[i] = Int(UserDefaults.standard.string(forKey: "\(i)")!)!
            }
            countLabels[i].text = "\(texts[i]) \(counts[i])"
            countLabels[i].textAlignment = .center
        }
    }
    
    @IBAction func buttonsPressed(_ sender: UIButton) {
        counts[sender.tag] += 1
        UserDefaults.standard.set(counts[sender.tag], forKey: "\(sender.tag)")
        countLabels[sender.tag].text = "\(texts[sender.tag]) \(UserDefaults.standard.string(forKey: "\(sender.tag)")!)"
    }
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        for i in 0...counts.count-1 {
            UserDefaults.standard.set(0, forKey: "\(i)")
            counts[i] = 0
            countLabels[i].text = "\(texts[i]) \(counts[i])"
            
        }
    }
}
