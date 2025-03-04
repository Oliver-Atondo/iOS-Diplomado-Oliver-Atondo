//
//  PokemonCardModalViewController.swift
//  Practica1_PokemonDetail_OliverAtondo
//
//  Created by Oliver Atondo on 03/03/25.
//

import UIKit
import SwiftUI
import AVFoundation

class PokemonCardModalViewController: UIViewController {
    
    var selectedPokemon: Pokemon?
    
    var audioPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear
        
        isModalInPresentation = true
        
        let pokemonCard = PokemonCardModalView(
            name: selectedPokemon?.name ?? "",
            points: selectedPokemon?.points ?? 0,
            ability: selectedPokemon?.ability ?? "",
            abilityDescription: selectedPokemon?.abilityDescription ?? "",
            image: selectedPokemon?.image ?? "",
            type: selectedPokemon?.type ?? "",
            weakness: selectedPokemon?.weakness ?? "",
            movement: selectedPokemon?.movement ?? "",
            movementDescription: selectedPokemon?.movementDescription ?? "",
            onDismiss: { [weak self] in
                self?.dismiss(animated: true, completion: nil)
            }
        )
        
        let segueModalView = UIHostingController(rootView: pokemonCard)
        
        segueModalView.view.backgroundColor = .clear
        
        addChild(segueModalView)
        segueModalView.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segueModalView.view)
        segueModalView.didMove(toParent: self)
        
        NSLayoutConstraint.activate([
            segueModalView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            segueModalView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            segueModalView.view.topAnchor.constraint(equalTo: view.topAnchor),
            segueModalView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
