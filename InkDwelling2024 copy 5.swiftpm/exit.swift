//
//  exit.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 10/08/1445 AH.
//

import SwiftUI

struct exit: View {
    let text = "■ that's weird.. all the poems have a little bolded letter"
    @State private var animatedText = ""
    @State private var counter = 0
    @State private var timer: Timer?
    @State private var currentIndex = 0
    let images = ["paper1", "paper2", "paper3", "paper4"]
    @State private var navigate = false
    
    var body: some View {
        
        if navigate {
            
            solve()
        } else {
            GeometryReader{_ in
        ZStack{
            Image("start2").resizable().scaledToFit().padding(.horizontal,20)
            
            
            
            
            ZStack {
                Image(images[currentIndex])
                
                
                HStack {
                  
                    Button(action: {
                       
                        currentIndex -= 1
                    }) {
                        Image("back") 
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    .opacity(currentIndex > 0 ? 1 : 0)
                    .disabled(currentIndex == 0)

                    Spacer().frame(width: 470)
                    
                  
                    Button(action: {
                      
                        currentIndex += 1
                    }) {
                        Image("next") 
                            .resizable()
                            .frame(width: 100, height: 100)
                    }
                    .opacity(currentIndex < images.count - 1 ? 1 : 0)
                    .disabled(currentIndex == images.count - 1)
                }
                .frame(minWidth: 0, maxWidth: .infinity) 
                
            }
                
                
                
            VStack {
                Spacer().frame(height: 540)
                ZStack(alignment: .center) {
                    Rectangle()
                        .frame(width: 1060, height: 180)
                        .foregroundColor(.black)
                        .opacity(0.7)
                        .overlay(
                            HStack {
                                Text(animatedText)
                                    .font(.system(size: 30)) 
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading, 30) 
                                
                                Spacer()
                                
                                Button(action: {
                                    
                                    self.navigate = true
                                }) {
                                    Image("play 1")
                                        .resizable()
                                        .scaledToFit()
                                }
                                .frame(width: 60, height: 60)
                                .padding(.leading, -90)
                            }
                        )
                }
                
            }
        }
        .onAppear {
            timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { _ in
                if counter < text.count {
                    animatedText += String(text[text.index(text.startIndex, offsetBy: counter)])
                    counter += 1
                } else {
                    timer?.invalidate()
                }
            }
            }
                    }
                            }

                    }
                    }


struct  exit_Previews: PreviewProvider {
    static var previews: some View {
        exit()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
