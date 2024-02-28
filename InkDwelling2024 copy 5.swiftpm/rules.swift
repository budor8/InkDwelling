//
//  firstDoor.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 08/08/1445 AH.
//

import SwiftUI

struct rules: View {
    
    @State private var navigate = false
    
    var body: some View {
        
        if navigate {
           
            firstDoor()
        } else {
            GeometryReader{_ in
                ZStack{
                    Image("rules").resizable().scaledToFit().padding(.horizontal,20)
                    
                    
                    
                    
                    Button(action: {
                        
                        self.navigate = true
                    }) {
                        Image("start")
                        
                    }.padding(.top, 600)
                }
                
            }
            
        }
    }
    
    struct  rules_Previews: PreviewProvider {
        static var previews: some View {
            rules()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
