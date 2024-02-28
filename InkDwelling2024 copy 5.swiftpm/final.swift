//
//  final.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 12/08/1445 AH.
//

import SwiftUI

struct final: View {
    @State private var navigate = false
    
    var body: some View {
        
        if navigate {
           
            first()
        } else {
            GeometryReader{_ in
        
        ZStack{
            
            Image("final").resizable().scaledToFit().padding(.horizontal,20)
            
            

            
            Button(action: {
                self.navigate = true
                        }) {
                            
                            Color.clear
                                .frame(width: 800, height: 800) 
                        }.padding(.leading, 60)
            
        }
        
                    }
                            }

                    }
                    }

struct  Final_Previews: PreviewProvider {
    static var previews: some View {
        final()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
