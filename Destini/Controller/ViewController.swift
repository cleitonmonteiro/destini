//
//  ViewController.swift
//  Destini
//
//  Created by Cleiton Monteiro on 19/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    
    var storyBrain = StoryBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(choice: sender == choiceOneButton ? 1 : 2)
        updateUI()
    }
    
    func updateUI() {
        let currentStory = storyBrain.getCurrentStory()
        storyLabel.text = currentStory.title
        choiceTwoButton.setTitle(currentStory.choiceTwo,for: .normal)
        choiceOneButton.setTitle(currentStory.choiceOne, for: .normal)
    }
}

