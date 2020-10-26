//
//  Player.swift
//  Tenang
//
//  Created by Wisnu Sanjaya on 20/08/20.
//

import Foundation
import AVKit
import MediaPlayer

class Player {
    
    var track: Track?
    
    let player: AVPlayer = {
        let avPlayer = AVPlayer()
        avPlayer.automaticallyWaitsToMinimizeStalling = false
        return avPlayer
    }()

}

extension Player {
    
    func play(track: Track) {
        self.track = track

        guard let url = track.audioURL()  else { return }
        let playerItem = AVPlayerItem(url: url)
        player.replaceCurrentItem(with: playerItem)
        player.play()
    }
    
}
