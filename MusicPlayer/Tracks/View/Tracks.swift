//
//  Tracks.swift
//  MusicPlayer
//
//  Created by Wisnu Sanjaya on 20/08/20.
//

import SwiftUI

struct Tracks: View {
    var body: some View {
        Details()
    }
}

struct Tracks_Previews: PreviewProvider {
    static var previews: some View {
        Tracks()
    }
}

struct Details: View {
    
    @ObservedObject var viewModel = TracksViewModel()
    @State var showPlayer: Bool = false
    
    let player = Player()
    
    var body: some View {
        ZStack {
            Color("Color")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack{
                Text("Above & Beyond")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .padding(.bottom)
                
                HStack(alignment: .center, spacing: 25){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.gray)
                            .padding(.all, 16)
                            .background(Color("Color"))
                            .clipShape(Circle())
                            .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                            .padding(.leading)

                    })
                    
                    Image("track")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 22)
                        .clipShape(Circle())
                        .padding(.all, 8)
                        .background(Color("Color").opacity(0.6))
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.3), radius: 8, x: 8, y: 8)
                        .shadow(color: Color.white, radius: 10, x: -10, y: -10)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.gray)
                            .padding(.all, 22)
                            .background(Color("Color"))
                            .clipShape(Circle())
                            .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                            .padding(.trailing)
                    })
                }
                .padding(.bottom, 32)
                
                ForEach(viewModel.tracks) { track in
                    TrackCard(track: track, isPlaying: track.isPlaying)
                        .onTapGesture{
                            guard track.isPlaying else { return }
                            self.showPlayer.toggle()
                            self.player.play(track: track)
                        }
                }
                
                Spacer(minLength: 0)
            }
        }
        .sheet(isPresented: $showPlayer, content: {
            PlayerView(showPlayer: $showPlayer)
        })
    }
}

struct TrackCard: View {
    
    var track: Track
    @State var isPlaying: Bool
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading){
                    Text(track.title)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    Text(track.artist)
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                Spacer(minLength: 0)
                
                ZStack {
                    if isPlaying {
                        Button(action: {
                            isPlaying.toggle()
                        }, label: {
                            Image(systemName: "pause.fill")
                                .foregroundColor(.white)
                                .padding(.all, 16)
                                .background(Color("Color1"))
                                .clipShape(Circle())
                                .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                                .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                        })
                    } else {
                        Button(action: {
                            isPlaying.toggle()
                        }, label: {
                            Image(systemName: "play.fill")
                                .foregroundColor(.gray)
                                .padding(.all, 16)
                                .background(Color("Color"))
                                .clipShape(Circle())
                                .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                                .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                        })
                    }
                }
            }
            .padding()
            .background(Color("Color1").opacity( isPlaying ? 0.1 : 0))
            .cornerRadius(isPlaying ? 20 : 0)
            .padding(.horizontal)
        }
    }
}
