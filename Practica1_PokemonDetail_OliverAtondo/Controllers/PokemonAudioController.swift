//
//  PokemonAudioController.swift
//  Practica1_PokemonDetail_OliverAtondo
//
//  Created by Oliver Atondo on 03/03/25.
//

import AVFoundation
import Foundation

class PokemonAudioController {
    
    static let shared = PokemonAudioController()
    
    private var audioPlayer: AVAudioPlayer?

    private init() {}
    
    func playSound(named soundName: String) {
        if let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()
            } catch {
                print(error)
            }
        } else {
            print("Null")
        }
    }
}
