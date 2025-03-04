//
//  ViewController.swift
//  Practica1_PokemonDetail_OliverAtondo
//
//  Created by Oliver Atondo on 02/03/25.
//

import UIKit
import Foundation
import SwiftUI

class PokemonViewController: UIViewController {
    
    @State var isModalPresented = false
    var selectedPokemon: Pokemon?
    
    let dataManager = PokemonDataManager()
    
    @IBOutlet weak var pokemonStuffTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonStuffTable.dataSource = self
        pokemonStuffTable.delegate = self
        
        dataManager.fetch()
    }
}

extension PokemonViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokecell", for: indexPath) as! PokemonCell
        if let pokemon = dataManager.getPokemon(at: indexPath.row) {
            cell.pokeImage.image = UIImage(named: pokemon.image)
            cell.pokeLabel.text = pokemon.name
            return cell
        }
        else {
            cell.pokeImage.image = UIImage(named: "0")
            cell.pokeLabel.text = "Default text"
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerContainer = UIView()
        headerContainer.backgroundColor = .clear
        
        let titleLabel = UILabel()
        titleLabel.text = "Who's that Pokemon?"
        titleLabel.font = .systemFont(ofSize: 24, weight: .bold)
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textColor = UIColor(named: "CommonText")
        
        guard let logoImage = UIImage(named: "Pokemon") else { return headerContainer }
        let imageView = UIImageView(image: logoImage)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        headerContainer.addSubview(titleLabel)
        headerContainer.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: headerContainer.topAnchor, constant: 8),
            titleLabel.centerXAnchor.constraint(equalTo: headerContainer.centerXAnchor),
            
            imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            imageView.centerXAnchor.constraint(equalTo: headerContainer.centerXAnchor),
            
            imageView.widthAnchor.constraint(equalToConstant: 180),
            imageView.heightAnchor.constraint(equalToConstant: 80),
            
            imageView.bottomAnchor.constraint(equalTo: headerContainer.bottomAnchor, constant: -8)
        ])
        return headerContainer
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        pokemonStuffTable.deselectRow(at: indexPath, animated: true)
        
        selectedPokemon = dataManager.getPokemon(at: indexPath.row)
        
        PokemonAudioController.shared.playSound(named: "Card")
        
        performSegue(withIdentifier: "ModalSegue", sender: tableView)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! PokemonCardModalViewController
        destinationVC.selectedPokemon = self.selectedPokemon
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        PokemonAudioController.shared.playSound(named: "Launch")
    }
}
