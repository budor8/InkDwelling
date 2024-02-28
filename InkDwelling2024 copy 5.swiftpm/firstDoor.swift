//
//  firstDoor.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 08/08/1445 AH.
//

import SwiftUI

struct firstDoor: View {
    @State private var showPoem = false
    @State private var showHint = false
    @State private var navigate = false
    
    var body: some View {
       
        if navigate {
            
            firstKey()
        } else {
            GeometryReader{_ in
                ZStack {
                    Image("room1").resizable().scaledToFit().padding(.horizontal,20)
                    
                    
                    
                   
                    Button(action: {
                        
                        self.showPoem.toggle()
                        if showPoem { self.showHint = false }
                    }) {
                        Image("paper")
                    }
                    .padding(.trailing, 800)
                    .padding(.top, 150)
                    
                   
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
                        Image("poem1")
                            .transition(.opacity).padding(.leading,50) 
                    }
                    if showHint {
                        Image("hint1")
                            .transition(.opacity)
                    }
                    
                    
                    
                    
                    Button(action: {
                        self.navigate = true
                        
                    }) {
                        
                        Color.clear
                            .frame(width: 150, height: 130) 
                    }.padding(.bottom,350).padding(.leading,300)
                }
                
            }
            
        }
    }
    
    struct  firstDoor_Previews: PreviewProvider {
        static var previews: some View {
            firstDoor()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
