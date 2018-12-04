//
//  TopicViewController.swift
//  Peter_Homework16
//
//  Created by 陳庭楷 on 2018/12/2.
//  Copyright © 2018年 陳庭楷. All rights reserved.
//

import UIKit

class TopicViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var AoptionButton: UIButton!
    
    @IBOutlet weak var BoptionButton: UIButton!
    
    @IBOutlet weak var CoptionButton: UIButton!
    
    @IBOutlet weak var DoptionButton: UIButton!
    
    @IBOutlet weak var EoptionButton: UIButton!
    
    @IBOutlet weak var FoptionButton: UIButton!
    
    @IBOutlet weak var GoptionButton: UIButton!
    
    var index = 0
    
    var aButton = [2,6,4,4,6,6,6,6,7,4]
    
    var bButton = [4,4,2,6,4,4,2,7,6,2]
    
    var cButton = [6,7,5,2,3,2,4,5,4,3]
    
    var dButton = [0,2,7,1,5,0,0,4,2,5]
    
    var eButton = [0,1,6,0,0,0,0,3,1,6]
    
    var fButton = [0,0,0,0,0,0,0,2,0,1]
    
    var gButton = [0,0,0,0,0,0,0,1,0,0]
    
    var aTotal = 0
    
    var bTotal = 0
    
    var cTotal = 0
    
    var dTotal = 0
    
    var eTotal = 0
    
    var fTotal = 0
    
    var gTotal = 0
    
    var total = 0
    
    var a = 0
    
    var b = 0
    
    var c = 0
    
    var d = 0
    
    var e = 0
    
    var f = 0
    
    var g = 0

    var questions : [Topic] = [Topic(question:"1.你何時感覺最好？", option:["a.早晨","b.下午及傍晚","c.夜","","","",""]),Topic(question:"2.你走路時是……？", option:["a.大步的快走","b.小步的快走","c.不快，仰著頭面對著世界","d.不快，低著頭","e.很慢","",""]),Topic(question:"3.和人說話時，你……?", option:["a.手臂交疊的站著","b.雙手緊握著","c.一隻手或兩手放在臀部","d.碰著或推著與你說話的人","e.玩著你的耳朵、摸著你的下巴、或用手整理頭髮","",""]),Topic(question:"4.坐著休息時，你的……?", option:["a.兩膝蓋併攏","b.兩腿交叉","c.兩腿伸直","d.一腿卷在身下","","",""]),Topic(question:"5.碰到你感到發笑的事時，你的反應是……？", option:["a.一個欣賞的大笑","b.笑著，但不大聲","c.輕聲的咯咯地笑","d.羞怯的微笑","","",""]),Topic(question:"6.當你去一個派對或社交場合時，你……？", option:["a.很大聲地入場以引起注意","b.安靜地入場，找你認識的人","c.非常安靜地入場，儘量保持不被注意","","","",""]),Topic(question:"7.當你非常專心工作時，有人打斷你，你會……？", option:["a.歡迎他","b.感到非常惱怒","c.在上兩極端之間","","","",""]),Topic(question:"8.下列顏色中，你最喜歡哪一顏色？", option:["a.紅或橘色","b.黑色","c.黃或淺藍色","d.綠色","e.深藍或紫色","f.白色","g.棕或灰色"]),Topic(question:"9.臨入睡的前幾分鐘，你在床上的姿勢是……？", option:["a.仰躺，伸直","b.俯躺，伸直","c.側躺 ，微卷","d.頭睡在一手臂上","e.被蓋過頭","",""]),Topic(question:"10.你經常夢到你在……？", option:["a.落下","b.打架或掙扎","c.找東西或人","d.飛或漂浮","e.你平常不做夢","f.你的夢都是愉快的",""])]
    
    @IBAction func pressed(_ sender: UIButton) {

        switch sender.tag {

        case 1 :
                
            self.a = self.aButton[self.index]
            
            self.aTotal = self.aTotal + self.a
            
        case 2 :
            
            self.b = self.bButton[self.index]
            
            self.bTotal = self.bTotal + self.b
            
        case 3 :
            
            self.c = self.cButton[self.index]
            
            self.cTotal = self.cTotal + self.c

        case 4 :
            
            self.d = self.dButton[self.index]
            
            self.dTotal = self.dTotal + self.d
        
        case 5 :
            
            self.e = self.eButton[self.index]
        
            self.eTotal = self.eTotal + self.e

        case 6 :
            
            self.f = self.fButton[self.index]
            
            self.fTotal = self.fTotal + self.f

        case 7 :
            
            self.g = self.gButton[self.index]
            
            self.gTotal = self.gTotal + self.g

        default :

            break

        }
        
        self.total = self.aTotal + self.bTotal + self.cTotal + self.dTotal + self.eTotal + self.fTotal + self.gTotal
    
        self.index += 1
        
        if index <= 9 {
            
            newRound()

        }

        else {
            
            self.performSegue(withIdentifier: "Segue", sender: nil)

        }
        
    }
    
    func newRound () {
        
        self.questionLabel.text = self.questions[self.index].question
        
        self.AoptionButton.setTitle(self.questions[self.index].option[0], for: .normal)
        
        self.BoptionButton.setTitle(self.questions[self.index].option[1], for: .normal)
        
        self.CoptionButton.setTitle(self.questions[self.index].option[2], for: .normal)
        
        self.DoptionButton.setTitle(self.questions[self.index].option[3], for: .normal)
        
        self.EoptionButton.setTitle(self.questions[self.index].option[4], for: .normal)
        
        self.FoptionButton.setTitle(self.questions[self.index].option[5], for: .normal)
        
        self.GoptionButton.setTitle(self.questions[self.index].option[6], for: .normal)
        
    }
    
    override func viewDidLoad() {
        
        newRound()
      
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
     
     
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as? AnswerViewController
        
        controller?.totals = self.total
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
