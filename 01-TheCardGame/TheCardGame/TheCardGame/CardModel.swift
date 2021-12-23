//
//  CardModel.swift
//  TheCardGame
//
//  Created by Sanghun Park on 2021/12/23.
//

import Foundation


class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an empty array
        var generatedCards: [Card] = []
        
        // Make an array with random numbers 1...13 to ready to get random card without duplicated numbers
        let numberArray = Array(1...13).shuffled()
        
        // Randomly generate 8 pairs of cards
        for i in 1...8 {
            
            // Generate a random number
            //let randomNumber = Int.random(in: 1...13)   // may generate duplicated numbers
            let randomNumber = numberArray[i]
            //let randomNumber = arc4random_uniform(13) + 1
            
            // Log number
            print("generated number: \(randomNumber)")
            
            // Create two new card objects
            let cardOne = Card()
            let cardTwo = Card()
            
            // Set their image names
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            // Add them to the array
            generatedCards += [cardOne, cardTwo]
        }
        
        // Randomize the cards within the array
        generatedCards.shuffle()
        
        // Return the array
        return generatedCards
    }
    
}
