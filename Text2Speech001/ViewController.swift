//
//  ViewController.swift
//  Text2Speech001
//
//  Created by Amit Gupta on 11/3/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let speechSynthesizer = AVSpeechSynthesizer()
    
    
    @IBOutlet var topLabel: UIView!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var buttonOne: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        let utterance = AVSpeechUtterance(string: textView.text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        //utterance.rate = 0.1

        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    
    

}

