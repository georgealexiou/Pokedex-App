//
//  Pokemon.swift
//  Kanto-Pokedex
//
//  Created by George Alexiou on 30/7/19
//  Copyright © 2019 George Alexiou. All rights reserved.
//

import UIKit

class Pokemon {
    
    var name: String?
    var imageUrl: String?
    var image: UIImage?
    var id: Int?
    var weight: Int?
    var height: Int?
    var defense: Int?
    var attack: Int?
    var description: String?
    var type: String?
    var color: UIColor?
    var nextEvolution: String?
    
    init(id: Int, dictionary: [String: AnyObject]) {
        
        self.id = id
        
        if let name = dictionary["name"] as? String {
            self.name = name
        }
        
        if let imageUrl = dictionary["imageUrl"] as? String {
            self.imageUrl = imageUrl
        }
        
        if let weight = dictionary["weight"] as? Int {
            self.weight = weight
        }
        
        if let height = dictionary["height"] as? Int {
            self.height = height
        }
        
        if let defense = dictionary["defense"] as? Int {
            self.defense = defense
        }
        
        if let attack = dictionary["attack"] as? Int {
            self.attack = attack
        }
        
        if let description = dictionary["description"] as? String {
            self.description = description
        }
        
        if let type = dictionary["type"] as? String {
            self.type = type.capitalized
            self.color = typeToColor()
        }
        
        //if let evoChain = dictionary["evolutionChain"] as Dictionary[String: AnyObject]{
          //  let nextEvolutuon = evoChain
        //}
        
    }
    
    private func typeToColor() -> UIColor{
        switch type {
        case "Normal":
            return UIColor(red:0.66, green:0.65, blue:0.48, alpha:1.0)
            
        case "Fire":
            return UIColor(red:0.93, green:0.51, blue:0.19, alpha:1.0)
            
        case "Water":
            return UIColor(red:0.39, green:0.56, blue:0.94, alpha:1.0)
            
        case "Grass":
            return UIColor(red:0.48, green:0.78, blue:0.30, alpha:1.0)
            
        case "Electric":
            return UIColor(red:0.97, green:0.82, blue:0.17, alpha:1.0)
            
        case "Ice":
            return UIColor(red:0.59, green:0.85, blue:0.84, alpha:1.0)
            
        case "Fighting":
            return UIColor(red:0.76, green:0.18, blue:0.16, alpha:1.0)
            
        case "Poison":
            return UIColor(red:0.64, green:0.24, blue:0.63, alpha:1.0)
            
        case "Ground":
            return UIColor(red:0.89, green:0.75, blue:0.40, alpha:1.0)
            
        case "Flying":
            return UIColor(red:0.66, green:0.56, blue:0.95, alpha:1.0)
            
        case "Psychic":
            return UIColor(red:0.98, green:0.33, blue:0.53, alpha:1.0)
            
        case "Bug":
            return UIColor(red:0.65, green:0.73, blue:0.10, alpha:1.0)
            
        case "Rock":
            return UIColor(red:0.71, green:0.63, blue:0.21, alpha:1.0)
            
        case "Ghost":
            return UIColor(red:0.45, green:0.34, blue:0.59, alpha:1.0)
            
        case "Dragon":
            return UIColor(red:0.44, green:0.21, blue:0.99, alpha:1.0)
            
        case "Dark":
            return UIColor(red:0.44, green:0.34, blue:0.27, alpha:1.0)
            
        case "Steel":
            return UIColor(red:0.72, green:0.72, blue:0.81, alpha:1.0)
            
        case "Fairy":
            return UIColor(red:0.84, green:0.52, blue:0.68, alpha:1.0)
            
        default:
            return UIColor(red:0.66, green:0.65, blue:0.48, alpha:1.0)
            
            
        }
    }
}
