//
//  first.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 12/08/1445 AH.
//

import SwiftUI


struct first: View {
    @State private var animate = false
    @State private var navigate = false

    
    var body: some View {
        if navigate {
            startPageOne()
        } else {
            GeometryReader { _ in
                ZStack {
                    Image("first").resizable().ignoresSafeArea()
                    
                    Button(action: {
                       
                        self.navigate = true
                    }) {
                        Image("readMe").offset(y: animate ? -5 : 5)
                            .animation(Animation.easeIn(duration: 1).repeatForever(autoreverses: true), value: animate)
                            .onAppear {
                                animate = true
                                
                            }
                            .padding(.bottom, 100)
                    }
                }
            }
        }
    }
    
    
}

struct first_Previews: PreviewProvider {
    static var previews: some View {
        first().previewInterfaceOrientation(.landscapeLeft)
    }
}
