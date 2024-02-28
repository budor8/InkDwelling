//
//  chest.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 11/08/1445 AH.
//

import SwiftUI

struct chest: View {
    @State private var navigate = false
    
    var body: some View {
       
        if navigate {
           
            insideChest()
        } else {
            GeometryReader{_ in

        
        ZStack{
          
            Image("chest").resizable().scaledToFit().padding(.horizontal,20)
            
           
            
                
            Image("press mysterious object to come closer").padding(.top, -275).padding(.trailing, 0)
            
            
            Button(action: {
                self.navigate = true
                        }) {
                           
                            Color.clear
                                .frame(width: 900, height: 500) 
                        }.padding(.top, 50).padding(.leading, 60)
                
               
            
        }
                    }
                            }

                    }
                    }
struct  chest_Previews: PreviewProvider {
    static var previews: some View {
        chest()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
