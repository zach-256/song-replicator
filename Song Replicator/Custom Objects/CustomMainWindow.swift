//
//  CustomMainWindow.swift
//  Song Replicator
//
//  Created by Zachary Whitten on 7/29/17.
//  Copyright © 2017 16^2. All rights reserved.
//

import Cocoa

class CustomMainWindow: NSWindow {
    
    @IBOutlet weak var iTunesSongs: iTunesSongs!
    @IBOutlet weak var finderSongs: FinderSongs!
    
    override func keyDown(with anEvent: NSEvent) {
        //If the delete key (key code 51) is pressed call the delete function
        if(anEvent.keyCode == 51){
            finderSongs.deleteShows()
            iTunesSongs.deleteShows()
        }
            //Else just do what would have been expected
        else{
            super.keyDown(with: anEvent)
        }
    }
}
