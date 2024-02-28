//
//  inkDwelling.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 07/08/1445 AH.
//

import SwiftUI

struct inkDwelling: View {
    @State private var animate = false
    @State private var navigate = false
    
    var body: some View {
        
        if navigate {
            
            hallway()
        } else {
            GeometryReader{_ in
                ZStack{
                    Image("start2").resizable().scaledToFit().padding(.horizontal,20)
                    
                    
                    
                    Image("InkDwelling") .offset(y: animate ? -5 : 5).animation(Animation.easeIn(duration: 2).repeatForever(autoreverses: true), value: animate)
                        .onAppear {
                            animate = true
                        }.padding(.bottom, 300)
                    
                    
                    Button(action: {
                        
                        self.navigate = true
                    }) {
                        Image("enter")
                        
                    }.padding(.top, 650)
                }
                
            }
            
        }
    }
    
    
    struct  inkDwelling_Previews: PreviewProvider {
        static var previews: some View {
            inkDwelling()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
