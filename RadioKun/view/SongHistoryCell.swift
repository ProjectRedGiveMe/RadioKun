//
//  SongCell.swift
//  RadioKun
//
//  Created by Nico on 01/10/2018.
//  Copyright © 2018 olym.yin. All rights reserved.
//

import UIKit

class SongHistoryCell: SongCell {
    
    @IBOutlet weak var songLbl: UILabel!
    @IBOutlet weak var bandLbl: UILabel!
    @IBOutlet weak var timestampLbl: UILabel!
    
    // Constructor - Configuration of how the cell will be populated
    override func configure(_ song: Song){
        
        songLbl.text = song.name;
        bandLbl.text = song.band;
        // Date configurations
        // Initialize the date formatter and set the style
        let formatter = DateFormatter();
        formatter.dateFormat = "dd/M/yy HH:mm";
        // Parse Date -> String
        timestampLbl.text = formatter.string(from: song.time_recog!);
    }
    
    // Add to favorite or remove from there
    // Depend on the state of the favorite the icon will change(filled <-> empty)
    @IBAction func favoriteAction(_ sender: Any) {
    
    }
    
    
    @IBAction func facebookAction(_ sender: Any) {
        // Vlad - at phase 4 add function to share the selected song
    }
}