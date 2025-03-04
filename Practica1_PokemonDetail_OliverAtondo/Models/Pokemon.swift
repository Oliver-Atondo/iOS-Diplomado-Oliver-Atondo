//
//  Pokemon.swift
//  Practica1_PokemonDetail_OliverAtondo
//
//  Created by Oliver Atondo on 02/03/25.
//

import Foundation

struct Pokemon {
    let name: String
    let image: String
    let points: Int
    let ability: String
    let abilityDescription: String
    let movement: String
    let movementDescription: String
    let type: String
    let weakness: String
    
    init(dict: [String: String]) {
        self.name = dict["name"] ?? ""
        self.image = dict["image"] ?? ""
        self.points = Int(dict["points"] ?? "0") ?? 0
        self.ability = dict["ability"] ?? ""
        self.abilityDescription = dict["abilityDescription"] ?? ""
        self.type = dict["type"] ?? ""
        self.weakness = dict["weakness"] ?? ""
        self.movement = dict["move"] ?? ""
        self.movementDescription = dict["movementDescription"] ?? ""
    }
}

