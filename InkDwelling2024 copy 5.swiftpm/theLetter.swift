//
//  theLetter.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 11/08/1445 AH.
//

import SwiftUI

struct theLetter: View {
    @State private var navigate = false
    
    var body: some View {
       
        if navigate {
            
            final()
        } else {
            GeometryReader{_ in
        ZStack{
            
            

            
            Image("insideChest").resizable().scaledToFit().padding(.horizontal,20)
            
            Image("The Letter")
            
            Button(action: {
                
                self.navigate = true
            }) {
                Image("play 1")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: 60, height: 60).padding(.leading, 950).padding(.top, 600)
            
            
            
        }
                    }
                            }

                    }
                    }

struct  TheLetter_Previews: PreviewProvider {
    static var previews: some View {
        theLetter()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
