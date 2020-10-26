//
//  Player.swift
//  Tenang
//
//  Created by Wisnu Sanjaya on 20/08/20.
//

import SwiftUI

struct PlayerView: View {
    
    @State var value:  CGFloat = 50
    @Binding var showPlayer: Bool
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button(action: {
                        showPlayer.toggle()
                    }, label: {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.gray)
                            .padding(.all)
                            .background(Color("Color"))
                            .clipShape(Circle())
                            .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 5, x: -5, y: -5)

                    })
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "line.horizontal.3.decrease")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.gray)
                            .padding(.all)
                            .background(Color("Color"))
                            .clipShape(Circle())
                            .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    })

                }
                
                Text("Now Playing")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }
            
            Image("track")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 25)
                .clipShape(Circle())
                .padding(.all, 8)
                .background(Color("Color").opacity(0.6))
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.3), radius: 8, x: 8, y: 8)
                .shadow(color: Color.white, radius: 10, x: -10, y: -10)
                .padding(.top, 35)

            Text("We Are All We Need")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .padding(.top, 25)
            
            Text("Above & Beyond feat Zoe Johnstone")
                .font(.caption)
                .foregroundColor(.gray)
                .padding(.top, 8)
            
            HStack {
                Text("1:15")
                    .font(.caption2)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("1:15")
                    .font(.caption2)
                    .foregroundColor(.gray)

            }
            .padding(.top, 25)
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                Capsule()
                    .fill(Color.gray.opacity(0.2))
                    .frame(height: 6)
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .center)) {
                    Capsule()
                        .fill(Color("Color1").opacity(0.2))
                        .frame(width: value, height: 6)
                    
                    Circle()
                        .fill(Color("Color1").opacity(0.7))
                        .frame(width: 10, height: 10)
                        .padding(.all, 10)
                        .background(Color("Color"))
                        .clipShape(Circle())
                        .shadow(color: Color("Color1").opacity(0.6), radius: 10, x: 4, y: 2)
                }

            })
            .gesture(DragGesture().onChanged({ (value) in
                
                if value.location.x <= UIScreen.main.bounds.width - 30
                    && value.location.x >= 0 {
                    self.value = value.location.x
                }
            }))
            .padding(.top, 8)
            
            HStack(spacing: 20) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "backward.fill")
                        .foregroundColor(.gray)
                        .padding(.all, 25)
                        .background(Color("Color"))
                        .clipShape(Circle())
                        .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white, radius: 5, x: -5, y: -5)

                })
                
                Button(action: {}, label: {
                    Image(systemName: "pause.fill")
                        .foregroundColor(.white)
                        .padding(.all, 25)
                        .background(Color("Color1"))
                        .clipShape(Circle())
                        .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white, radius: 5, x: -5, y: -5)

                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.gray)
                        .padding(.all, 25)
                        .background(Color("Color"))
                        .clipShape(Circle())
                        .shadow(color: Color("Color1").opacity(0.6), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white, radius: 5, x: -5, y: -5)

                })
            }
            .padding(.top, 25)
            
            Spacer()
        }
        .padding(.all)
        .background(Color("Color").edgesIgnoringSafeArea(.all))
    }
}
