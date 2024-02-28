//
//  tree.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 11/08/1445 AH.
//

import SwiftUI

struct tree: View {
    let text = "■ oh my god! what is this? i must come closer "
    @State private var animatedText = ""
    @State private var counter = 0
    @State private var timer: Timer?
    @State private var navigate = false
    
    var body: some View {
        
        if navigate {
            
            chest()
        } else {
            GeometryReader{_ in
        ZStack{
            Image("chest").resizable().scaledToFit().padding(.horizontal,20)
            
          

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

struct  tree_Previews: PreviewProvider {
    static var previews: some View {
        tree()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
