//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
//    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
//    let answer1a = "I\'ll hop in. Thanks for the help!"
//    let answer1b = "Better ask him if he\'s a murderer first."
    let story1 = "story 1"
    let answer1a = "answer 1a"
    let answer1b = "answer 1b"
    
    
//    let story2 = "He nods slowly, unphased by the question."
//    let answer2a = "At least he\'s honest. I\'ll climb in."
//    let answer2b = "Wait, I know how to change a tire."
    
    let story2 = "story 2"
    let answer2a = "answer 2a"
    let answer2b = "answer 2b"

//    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
//    let answer3a = "I love Elton John! Hand him the cassette tape."
//    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story3 = "story 3"
    let answer3a = "answer 3a"
    let answer3b = "answer 3b"
    
//    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
//    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
//    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""

    let story4 = "story 4"
    let story5 = "story 5"
    let story6 = "story 6"
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    var curStoryIndex: Int = 1;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        storyTextView.text = story1;
        topButton.setTitle(answer1a, for: .normal);
        bottomButton.setTitle(answer1b, for: .normal);
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
//        if (sender.tag == 1) {
//            if (storyTextView.text == story1) {
//                storyTextView.text = story3;
//                self.topButton.setTitle(self.answer3a, for: .normal);
//                self.bottomButton.setTitle(self.answer3b, for: .normal);
//
//                return;
//            }
//
//            if (storyTextView.text == story3) {
//                storyTextView.text = story6;
//
//                return;
//            }
//
//            if (storyTextView.text == story2) {
//                storyTextView.text = story3;
//                self.topButton.setTitle(self.answer3a, for: .normal);
//                self.bottomButton.setTitle(self.answer3b, for: .normal);
//
//                return;
//            }
//        } else {
//            if (storyTextView.text == story1) {
//                storyTextView.text = story2;
//                self.topButton.setTitle(self.answer2a, for: .normal);
//                self.bottomButton.setTitle(self.answer2b, for: .normal);
//
//                return;
//            }
//
//            if (storyTextView.text == story3) {
//                storyTextView.text = story5;
//
//                return;
//            }
//
//            if (storyTextView.text == story2) {
//                storyTextView.text = story4;
//
//                return;
//            }
//        }
        
        // TODO Step 6: Modify the IF-Statement to complete the story
        updateView(upBtnTag: sender.tag);
    
    }
    
    func updateView(upBtnTag: Int) {
        if (upBtnTag == 1) {
            if (curStoryIndex == 1) {
                storyTextView.text = story3;
                self.topButton.setTitle(self.answer3a, for: .normal);
                self.bottomButton.setTitle(self.answer3b, for: .normal);
                
                self.curStoryIndex = 3;
                
                return;
            }
            
            if (curStoryIndex == 3) {
                storyTextView.text = story6;
                self.topButton.isHidden = true
                self.bottomButton.isHidden = true
                
                self.curStoryIndex = 6;
                
                return;
            }
            
            if (curStoryIndex == 2) {
                storyTextView.text = story3;
                self.topButton.setTitle(self.answer3a, for: .normal);
                self.bottomButton.setTitle(self.answer3b, for: .normal);
                
                self.curStoryIndex = 3;
                
                return;
            }
        } else {
            if (curStoryIndex == 1) {
                storyTextView.text = story2;
                self.topButton.setTitle(self.answer2a, for: .normal);
                self.bottomButton.setTitle(self.answer2b, for: .normal);
                
                self.curStoryIndex = 2;
                
                return;
            }
            
            if (curStoryIndex == 3) {
                storyTextView.text = story5;
                self.topButton.isHidden = true
                self.bottomButton.isHidden = true
                
                self.curStoryIndex = 5;
                
                return;
            }
            
            if (curStoryIndex == 2) {
                storyTextView.text = story4;
                self.topButton.isHidden = true
                self.bottomButton.isHidden = true
                
                self.curStoryIndex = 4;
                
                return;
            }
        }
    }
    



}

