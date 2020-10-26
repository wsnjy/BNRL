//
//  TrakcsViewModel.swift
//  Tenang
//
//  Created by Wisnu Sanjaya on 20/08/20.
//

import Foundation

class TracksViewModel: ObservableObject {
    
    @Published var tracks: [Track] = [Track]()
    
    init() {
        tracks = [
            Track(title: "We Are All We Need", artist: "Above & Beyond ft Zoe Johnstone", isPlaying: false, audio: "https://www.kozco.com/tech/piano2-CoolEdit.mp3", art: "https://www.magneticmag.com/.image/c_limit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_615/MTMzMDU4Mzg5NjI1NDU2NjUw/album-announcement-above--beyond-announce-we-are-all-we-need.jpg"),
            Track(title: "Sticky Finger", artist: "Above & Beyond ft Alex Vargaz", isPlaying: false, audio: "https://www.kozco.com/tech/piano2-CoolEdit.mp3", art: "https://www.magneticmag.com/.image/c_limit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_615/MTMzMDU4Mzg5NjI1NDU2NjUw/album-announcement-above--beyond-announce-we-are-all-we-need.jpg"),
            Track(title: "Sun & Moon", artist: "Above & Beyond ft Richard Bedford", isPlaying: false, audio: "https://www.kozco.com/tech/piano2-CoolEdit.mp3", art: "https://www.magneticmag.com/.image/c_limit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_615/MTMzMDU4Mzg5NjI1NDU2NjUw/album-announcement-above--beyond-announce-we-are-all-we-need.jpg"),
            Track(title: "Blue Sky Action", artist: "Above & Beyond ft Alex Vargaz", isPlaying: true, audio: "https://www.kozco.com/tech/piano2-CoolEdit.mp3", art: "https://www.magneticmag.com/.image/c_limit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_615/MTMzMDU4Mzg5NjI1NDU2NjUw/album-announcement-above--beyond-announce-we-are-all-we-need.jpg"),
            Track(title: "Indonesia", artist: "Above & Beyond", isPlaying: false, audio: "https://www.kozco.com/tech/piano2-CoolEdit.mp3", art: "https://www.magneticmag.com/.image/c_limit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_615/MTMzMDU4Mzg5NjI1NDU2NjUw/album-announcement-above--beyond-announce-we-are-all-we-need.jpg"),
        ]
    }
    
}
