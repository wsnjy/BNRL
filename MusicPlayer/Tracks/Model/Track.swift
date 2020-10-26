//
//  Track.swift
//  Tenang
//
//  Created by Wisnu Sanjaya on 20/08/20.
//

import Foundation

struct Track: Identifiable {
    var id = UUID().uuidString
    var title: String
    var artist: String
    var isPlaying: Bool
    var audio: String
    var art: String
    
    func audioURL() -> URL? {
        return URL(string: audio)
    }
    
    func artURL() -> URL {
        return URL(string: art)!
    }
}
