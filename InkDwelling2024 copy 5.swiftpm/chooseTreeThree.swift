//
//  chooseTreeThree.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 11/08/1445 AH.
//

import SwiftUI

struct chooseTreeThree: View {
    @State private var navigate = false
    
    var body: some View {
        
        if navigate {
            
            tree()
        } else {
            GeometryReader{_ in
        
        ZStack{
          
            Image("start2").resizable().scaledToFit().padding(.horizontal,20)
            
            
            Button(action: {
               
                self.navigate = true
            }) {
                Image("goToTree")
                    
            }.padding(.top, 650)
            
        }
                    }
                            }

                    }
                    }


struct  chooseTreeThree_Previews: PreviewProvider {
    static var previews: some View {
        chooseTreeThree()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
