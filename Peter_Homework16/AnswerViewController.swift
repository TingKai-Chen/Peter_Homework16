//
//  AnswerViewController.swift
//  Peter_Homework16
//
//  Created by 陳庭楷 on 2018/12/4.
//  Copyright © 2018年 陳庭楷. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var AnswerLabel: UILabel!
    
    @IBOutlet weak var titAnswerLabel: UILabel!
    
    var totals = 0
    
    var titAnswer = ["【低於21分：內向的悲觀者】","【21分到30分：缺乏信心的挑剔者】","【31分到40分：以牙還牙的自我保護者】","【41分到50分：平衡的中道】","【51分 到60分：吸引人的冒險家】","【60分以上：傲慢的孤獨者】"]
    
    var answer = ["人們認 為你是一個害羞的、神經質的、優柔寡斷的，是須人照顧、永遠要別人為你做決定、不想與任何事或任何人有關。他們認為你是一個 杞人憂天者，一個永遠看到不存在的問題的人。有些人 認為你令人 乏味，只有那些深知你的人知道你不是這樣的人.","你的朋友認為你勤 勉刻苦、很挑剔。他們認為你是一個謹慎的、十分小心的人，一個 緩慢而穩定辛勤工作的人。如果你做任何衝動的事或無準備的事，你會令他們大吃一驚。他們認為你會從各個角度仔細地檢查一切之後仍經常決定不做。他們認為對你的這種反應一部分是因為你的小心的天性所引起的。","別人認為你是明智、謹慎、注重實效的人。也認為你是 一個伶俐、有天賦有才幹且謙虛的人。你不會很快、很容易和人成 為朋友，但是是一個對朋友非常忠誠的人，同時要求朋友對你也有 忠誠的回報。那些真正有機會瞭解你的人會知道要動搖你對朋友的 信任是很難的，但相等的，一旦這信任被破壞，會使你很難熬過。","別人認為你是一個新鮮的、有活力的、有魅力的、好玩的、講究實際的、而永遠有趣的人； 一個經常是群眾注意力的焦點，但是你是一個足夠平衡的人，不至於因此而昏了頭。他們也認為你親切、和藹、體貼、能諒解人；一個永遠會使人高興起來並會幫助別人的人。","別人認為你是一個令人興奮的、高度活 潑的、相當易衝動的個性；你是一個天生的領袖、一個做決定會很 快的人，雖然你的決定不總是對的。他們認為你是大膽的和冒險的 ，會願意試做任何事至少一次；是一個願意嘗試機會而欣賞冒險的 人。因為你散發的刺激，他們喜歡跟你在一起。","別人認為對你必須「小心 處理」。在別人的眼中，你是自負的、自我中心的、是個極端的傢伙"]
    
    override func viewDidLoad() {
        
        if totals < 21 {
            
            AnswerLabel.text = answer[0]
            
            titAnswerLabel.text = titAnswer[0]
            
        }
        
        else if totals >= 21 || totals <= 30 {
            
            AnswerLabel.text = answer[1]
            
            titAnswerLabel.text = titAnswer[1]
            
        }
        
        else if totals >= 31 || totals <= 40 {
            
            AnswerLabel.text = answer[2]
            
            titAnswerLabel.text = titAnswer[2]
            
        }
        
        else if totals >= 41 || totals <= 50 {
            
            AnswerLabel.text = answer[3]
            
            titAnswerLabel.text = titAnswer[3]
            
        }
        
        else if totals >= 51 || totals <= 60 {
            
            AnswerLabel.text = answer[4]
            
            titAnswerLabel.text = titAnswer[4]
            
        }
        
        else {
            
            AnswerLabel.text = answer[5]
            
            titAnswerLabel.text = titAnswer[5]
            
        }
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
