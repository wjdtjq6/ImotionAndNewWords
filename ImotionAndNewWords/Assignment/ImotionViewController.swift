//
//  ImotionViewController.swift
//  ImotionAndNewWords
//
//  Created by t2023-m0032 on 5/17/24.
//

import UIKit

class ImotionViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var topImage: UIImageView!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var countLabel1: UILabel!
    @IBOutlet var countLabel2: UILabel!
    @IBOutlet var countLabel3: UILabel!
    @IBOutlet var countLabel4: UILabel!
    @IBOutlet var countLabel5: UILabel!
    @IBOutlet var countLabel6: UILabel!
    @IBOutlet var countLabel7: UILabel!
    @IBOutlet var countLabel8: UILabel!
    @IBOutlet var countLabel9: UILabel!
    var count1 = Int.random(in: 0...100)
    var count2 = Int.random(in: 0...100)
    var count3 = Int.random(in: 0...100)
    var count4 = Int.random(in: 0...100)
    var count5 = Int.random(in: 0...100)
    var count6 = Int.random(in: 0...100)
    var count7 = Int.random(in: 0...100)
    var count8 = Int.random(in: 0...100)
    var count9 = Int.random(in: 0...100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        topImage.image = UIImage(systemName: "list.bullet")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        
        titleLabel.text = "감정다이어리"
        titleLabel.textAlignment = .center
        titleLabel.font = .boldSystemFont(ofSize: 20)
        
        button1.setImage(UIImage(named: "slime1")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button2.setImage(UIImage(named: "slime2")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button3.setImage(UIImage(named: "slime3")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button4.setImage(UIImage(named: "slime4")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button5.setImage(UIImage(named: "slime5")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button6.setImage(UIImage(named: "slime6")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button7.setImage(UIImage(named: "slime7")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button8.setImage(UIImage(named: "slime8")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button9.setImage(UIImage(named: "slime9")?.withRenderingMode(.alwaysOriginal), for: .normal)
        
        countLabel1.text = "행복해 \(count1)"
        countLabel1.textAlignment = .center
        countLabel2.text = "사랑해 \(count2)"
        countLabel2.textAlignment = .center
        countLabel3.text = "우울해 \(count3)"
        countLabel3.textAlignment = .center
        countLabel4.text = "공허해 \(count4)"
        countLabel4.textAlignment = .center
        countLabel5.text = "행복해 \(count5)"
        countLabel5.textAlignment = .center
        countLabel6.text = "당황해 \(count6)"
        countLabel6.textAlignment = .center
        countLabel7.text = "좋아해 \(count7)"
        countLabel7.textAlignment = .center
        countLabel8.text = "속상해 \(count8)"
        countLabel8.textAlignment = .center
        countLabel9.text = "도전해 \(count9)"
        countLabel9.textAlignment = .center
        
    }
  
    @IBAction func button1Pressed(_ sender: UIButton) {
        count1 += 1
        countLabel1.text = "행복해 \(count1)"
    }
    @IBAction func button2Pressed(_ sender: UIButton) {
        count2 += 1
        countLabel2.text = "사랑해 \(count2)"
    }
    @IBAction func button3Pressed(_ sender: UIButton) {
        count3 += 1
        countLabel3.text = "우울해 \(count3)"
    }
    @IBAction func button4Pressed(_ sender: UIButton) {
        count4 += 1
        countLabel4.text = "공허해 \(count4)"
    }
    @IBAction func button5Pressed(_ sender: UIButton) {
        count5 += 1
        countLabel5.text = "행복해 \(count5)"
    }
    @IBAction func button6Pressed(_ sender: UIButton) {
        count6 += 1
        countLabel6.text = "당황해 \(count6)"
    }
    @IBAction func button7Pressed(_ sender: UIButton) {
        count7 += 1
        countLabel7.text = "좋아해 \(count7)"
    }
    @IBAction func button8Pressed(_ sender: UIButton) {
        count8 += 1
        countLabel8.text = "속상해 \(count8)"
    }
    @IBAction func button9Pressed(_ sender: UIButton) {
        count9 += 1
        countLabel9.text = "도전해 \(count9)"
    }
    
}
//줄이기!!
