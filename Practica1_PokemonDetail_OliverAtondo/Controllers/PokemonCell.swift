//
//  PokemonCellTableViewCell.swift
//  MVC
//
//  Created by Oliver Atondo on 22/02/25.
//

import UIKit

class PokemonCell: UITableViewCell {
    
    @IBOutlet weak var pokeImage: UIImageView!
    
    @IBOutlet weak var pokeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
