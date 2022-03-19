//
//  StoryBrain.swift
//  Destini
//
//  Created by Cleiton Monteiro on 19/03/22.
//

import Foundation


struct StoryBrain {
    let stories = [
        Story(
            title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choiceOne: "I'll hop in. Thanks for the help!",
            choiceTwo: "Better ask him if he's a murderer first.",
            choiceOneDestination: 2,
            choiceTwoDestination: 1
        ),
        Story(
            title: "He nods slowly, unfazed by the question.",
            choiceOne: "At least he's honest. I'll climb in.",
            choiceTwo: "Wait, I know how to change a tire.",
            choiceOneDestination: 2,
            choiceTwoDestination: 3
        ),
        Story(
            title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choiceOne: "I love Elton John! Hand him the cassette tape.",
            choiceTwo: "It's him or me! You take the knife and stab him.",
            choiceOneDestination: 5,
            choiceTwoDestination: 4
        ),
        Story(
            title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choiceOne: "The",
            choiceTwo: "End",
            choiceOneDestination: 0,
            choiceTwoDestination: 0
        ),
        Story(
            title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choiceOne: "The",
            choiceTwo: "End",
            choiceOneDestination: 0,
            choiceTwoDestination: 0
        ),
        Story(
            title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choiceOne: "The",
            choiceTwo: "End",
            choiceOneDestination: 0,
            choiceTwoDestination: 0
        )

    ]
    
    var currentStoryIndex = 0
    
    mutating func nextStory(choice: Int) {
        currentStoryIndex = choice == 1 ? getCurrentStory().choiceOneDestination: getCurrentStory().choiceTwoDestination
        
    }
    
    func getCurrentStory() -> Story {
        stories[currentStoryIndex]
    }
}
