//
//  TestTableViewCell.swift
//  Demo_Fundamental
//
//  Created by Chi Tak Liu on 24/5/2022.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    static let cellID = "cellID"
    
    @IBOutlet weak var numLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setContext(number: String, name: String) {
        numLabel.text = number
        nameLabel.text = name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
