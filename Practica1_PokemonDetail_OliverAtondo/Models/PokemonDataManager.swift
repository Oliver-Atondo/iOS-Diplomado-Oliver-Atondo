//
//  PokemonDataManager.swift
//  Practica1_PokemonDetail_OliverAtondo
//
//  Created by Oliver Atondo on 02/03/25.
//


class PokemonDataManager {
    
    private var pokemons: [Pokemon] = []
    
    let pokemonsArray = [
        [
            "image": "0",
            "name": "Wartortle",
            "points": "120",
            "ability": "Torrent",
            "abilityDescription": "Powers up water moves in a pinch. When its HP falls below one-third, the strength of water-type moves increases significantly, making it a crucial advantage in tight battles.",
            "type": "Water",
            "weakness": "Grass",
            "move": "Water Gun",
            "movementDescription": "Shoots a high-pressure stream of water."
        ],
        [
            "image": "1",
            "name": "Bulbasaur",
            "points": "100",
            "ability": "Overgrow",
            "abilityDescription": "Boosts grass moves when HP is low. This ability intensifies the power of grass-type attacks during critical moments, providing an extra edge in battle.",
            "type": "Grass",
            "weakness": "Fire",
            "move": "Vine Whip",
            "movementDescription": "Strikes the opponent with slender, whip-like vines."
        ],
        [
            "image": "2",
            "name": "Blastoise",
            "points": "130",
            "ability": "Torrent",
            "abilityDescription": "Boosts water moves when in a pinch. With low HP, water-type moves become markedly stronger, turning the tide of battle by increasing damage output.",
            "type": "Water",
            "weakness": "Grass",
            "move": "Hydro Pump",
            "movementDescription": "Blasts a huge volume of water at high pressure."
        ],
        [
            "image": "3",
            "name": "Butterfree",
            "points": "90",
            "ability": "Compound Eyes",
            "abilityDescription": "Increases accuracy of moves. This ability enhances the chance for Butterfree's moves to hit the target, making its attacks more reliable even under adverse conditions.",
            "type": "Bug",
            "weakness": "Rock",
            "move": "Gust",
            "movementDescription": "Creates a mini tornado by flapping its wings."
        ],
        [
            "image": "4",
            "name": "Ivysaur",
            "points": "110",
            "ability": "Overgrow",
            "abilityDescription": "Boosts grass moves when HP is low. Ivysaur's attacks become more potent in desperate moments, increasing both damage and the chance for secondary effects.",
            "type": "Grass",
            "weakness": "Fire",
            "move": "Razor Leaf",
            "movementDescription": "Slices the foe with sharp-edged leaves."
        ],
        [
            "image": "5",
            "name": "Jigglypuf",
            "points": "80",
            "ability": "Cute Charm",
            "abilityDescription": "May infatuate the opponent. In addition to its charm, this ability sometimes distracts foes, lowering their chance to hit.",
            "type": "Fairy",
            "weakness": "Poison",
            "move": "Sing",
            "movementDescription": "Lulls the opponent to sleep with a soothing melody."
        ],
        [
            "image": "6",
            "name": "Charmander",
            "points": "100",
            "ability": "Blaze",
            "abilityDescription": "Boosts fire moves when HP is low. As Charmander's vitality wanes, its fire-type moves intensify, inflicting greater damage on its opponents.",
            "type": "Fire",
            "weakness": "Water",
            "move": "Ember",
            "movementDescription": "Hurls small flames that may burn the target."
        ],
        [
            "image": "7",
            "name": "Meowth",
            "points": "70",
            "ability": "Pickup",
            "abilityDescription": "May pick up items after battle. This ability gives Meowth a chance to find useful items post-battle, enhancing its versatility outside of combat.",
            "type": "Normal",
            "weakness": "Fighting",
            "move": "Scratch",
            "movementDescription": "Scratches the opponent with its claws."
        ],
        [
            "image": "8",
            "name": "Alacazam",
            "points": "140",
            "ability": "Synchronize",
            "abilityDescription": "Passes on status conditions. When affected by a status, Alacazam may transfer that condition to its foe, balancing the battle dynamics.",
            "type": "Psychic",
            "weakness": "Bug",
            "move": "Psybeam",
            "movementDescription": "Emits a powerful beam of psychic energy."
        ],
        [
            "image": "9",
            "name": "Pidgey",
            "points": "60",
            "ability": "Keen Eye",
            "abilityDescription": "Prevents loss of accuracy. Pidgey's precision is maintained even under challenging conditions, ensuring its moves rarely miss the target.",
            "type": "Normal",
            "weakness": "Fighting",
            "move": "Quick Attack",
            "movementDescription": "Dashes forward quickly to strike the foe."
        ],
        [
            "image": "10",
            "name": "Raichu",
            "points": "130",
            "ability": "Static",
            "abilityDescription": "May paralyze on contact. Raichu's electrical charge has a chance to leave the opponent paralyzed, reducing their ability to respond effectively.",
            "type": "Electric",
            "weakness": "Ground",
            "move": "Thunderbolt",
            "movementDescription": "Strikes the opponent with a strong electric shock."
        ],
        [
            "image": "11",
            "name": "Rattata",
            "points": "50",
            "ability": "Run Away",
            "abilityDescription": "Always escapes wild battles. This ability ensures Rattata can flee from danger without fail, preserving it for future encounters.",
            "type": "Normal",
            "weakness": "Fighting",
            "move": "Tackle",
            "movementDescription": "Charges and slams into the opponent."
        ],
        [
            "image": "12",
            "name": "Vaporeon",
            "points": "150",
            "ability": "Water Absorb",
            "abilityDescription": "Heals when hit by water moves. Vaporeon not only resists water-based attacks but also uses them to restore its own health during battle.",
            "type": "Water",
            "weakness": "Grass",
            "move": "Aqua Ring",
            "movementDescription": "Surrounds itself with a ring of water to slowly recover HP."
        ],
        [
            "image": "13",
            "name": "Jynx",
            "points": "100",
            "ability": "Oblivious",
            "abilityDescription": "Prevents infatuation. Jynx remains unaffected by status effects that might otherwise hinder its performance in battle.",
            "type": "Ice",
            "weakness": "Fire",
            "move": "Powder Snow",
            "movementDescription": "Blasts a chilling flurry of powder to freeze the opponent."
        ],
        [
            "image": "14",
            "name": "Venusaur",
            "points": "160",
            "ability": "Overgrow",
            "abilityDescription": "Boosts grass moves when HP is low. When Venusaur's health dwindles, its connection with nature intensifies, supercharging its grass-type moves.",
            "type": "Grass",
            "weakness": "Fire",
            "move": "Solar Beam",
            "movementDescription": "Absorbs light and releases a powerful beam in one turn."
        ],
        [
            "image": "15",
            "name": "Linea",
            "points": "90",
            "ability": "Unknown",
            "abilityDescription": "No description available. This Pokémon's ability remains a mystery, leaving its strategic advantages up to speculation.",
            "type": "Normal",
            "weakness": "Fighting",
            "move": "Tackle",
            "movementDescription": "A basic physical attack using its body."
        ],
        [
            "image": "16",
            "name": "Slowbro",
            "points": "140",
            "ability": "Oblivious",
            "abilityDescription": "Prevents infatuation and status changes. Slowbro's calm demeanor protects it from status effects, allowing it to focus on defense and counterattacks.",
            "type": "Water",
            "weakness": "Grass",
            "move": "Water Gun",
            "movementDescription": "Shoots water to damage the opponent."
        ],
        [
            "image": "17",
            "name": "Dewgong",
            "points": "130",
            "ability": "Thick Fat",
            "abilityDescription": "Reduces damage from fire moves. This natural insulation minimizes the harm from intense heat, making Dewgong more resilient in fiery battles.",
            "type": "Water",
            "weakness": "Grass",
            "move": "Ice Beam",
            "movementDescription": "Fires a beam of freezing energy to chill the target."
        ],
        [
            "image": "18",
            "name": "Spearow",
            "points": "60",
            "ability": "Keen Eye",
            "abilityDescription": "Prevents loss of accuracy. Spearow maintains exceptional focus, ensuring its quick strikes rarely miss their mark.",
            "type": "Normal",
            "weakness": "Fighting",
            "move": "Peck",
            "movementDescription": "Pecks the enemy quickly with its beak."
        ],
        [
            "image": "19",
            "name": "Wigglytuff",
            "points": "80",
            "ability": "Cute Charm",
            "abilityDescription": "May cause infatuation. Wigglytuff's adorable appearance can distract opponents, lowering their guard during combat.",
            "type": "Normal",
            "weakness": "Fighting",
            "move": "Sing",
            "movementDescription": "Sings a lullaby that may put the opponent to sleep."
        ],
        [
            "image": "20",
            "name": "Scyther",
            "points": "120",
            "ability": "Technician",
            "abilityDescription": "Boosts the power of weaker moves. Even moves with modest power gain a noticeable boost, making Scyther a threat despite its size.",
            "type": "Bug",
            "weakness": "Rock",
            "move": "Slash",
            "movementDescription": "Slashes the foe with its sharp scythes."
        ],
        [
            "image": "21",
            "name": "Golduk",
            "points": "110",
            "ability": "Swift Swim",
            "abilityDescription": "Boosts speed in rain. When the weather turns rainy, Golduk's speed increases dramatically, allowing it to outmaneuver opponents.",
            "type": "Water",
            "weakness": "Grass",
            "move": "Bubble Beam",
            "movementDescription": "Shoots bubbles that damage the opponent."
        ],
        [
            "image": "22",
            "name": "Lapras",
            "points": "150",
            "ability": "Water Absorb",
            "abilityDescription": "Heals when hit by water moves. Lapras can convert incoming water attacks into restorative energy, prolonging its endurance in battle.",
            "type": "Water",
            "weakness": "Grass",
            "move": "Ice Shard",
            "movementDescription": "Launches sharp ice fragments at high speed."
        ],
        [
            "image": "23",
            "name": "Sandshrew",
            "points": "70",
            "ability": "Sand Veil",
            "abilityDescription": "Boosts evasion in a sandstorm. The swirling sands obscure Sandshrew from view, significantly increasing its chance to avoid attacks.",
            "type": "Ground",
            "weakness": "Water",
            "move": "Dig",
            "movementDescription": "Burrows underground to strike unexpectedly."
        ]
    ]


    func fetch() {
        for pokemon in pokemonsArray {
            self.pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemons() -> [Pokemon] {
        return pokemons
    }
    
    func getPokemon(at index: Int) -> Pokemon? {
        guard index >= 0 && index < pokemons.count else {
            return nil
        }
        return pokemons[index]
    }
    
    func count() -> Int {
        return pokemons.count
    }
}
