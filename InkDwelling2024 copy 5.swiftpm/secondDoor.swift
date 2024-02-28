//
//  secondDoor.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 10/08/1445 AH.
//

import SwiftUI

struct secondDoor: View {
    @State private var showPoem = false
    @State private var showHint = false
    @State private var navigate = false
    
    var body: some View {
        
        if navigate {
            
            secondKey()
        } else {
            GeometryReader{_ in
        ZStack {
            Image("room2").resizable().scaledToFit().padding(.horizontal,20)
            
            

           
            Button(action: {
               
                self.showPoem.toggle()
                if showPoem { self.showHint = false }
            }) {
                Image("paper")
            }
            .padding(.trailing, 860)
            .padding(.top, 230)

           
            Button(action: {
               
                self.showHint.toggle()
                if showHint { self.showPoem = false }
            }) {
                ZStack {
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 70, height: 70)
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 2)
                        )
                    Image(systemName: "lightbulb.max.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                }
            }
            .padding(.leading, 900)
            .padding(.bottom, 600)

           
            if showPoem {
                Image("poem2")
                    .transition(.opacity).padding(.leading,50) 
            }
            if showHint {
                Image("hint2")
                    .transition(.opacity)
            }
            
            
            
            
            Button(action: {
                self.navigate = true

                        }) {
                           
                            Color.clear
                                .frame(width: 200, height: 300)  
                        }.padding(.leading,850).padding(.bottom, 100)
        }
                    }
                            }

                    }
                    }

struct  secondDoor_Previews: PreviewProvider {
    static var previews: some View {
        secondDoor()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
