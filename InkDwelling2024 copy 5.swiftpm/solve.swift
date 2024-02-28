//
//  solve.swift
//  InkDwelling2024
//
//  Created by Budoor Alharbi on 10/08/1445 AH.
//

import SwiftUI




struct solve: View {
    @State private var letterSlots: [LetterSlot] = [
        LetterSlot(id: 0, correctLetter: "T"),
        LetterSlot(id: 1, correctLetter: "R"),
        LetterSlot(id: 2, correctLetter: "E"),
        LetterSlot(id: 3, correctLetter: "E")
    ]
    @State private var availableLetters = ["E", "R", "T", "E"]
    @State private var isSolved = false
    @State private var showMessage = false
    @State private var navigate = false
    
    var body: some View {
        
        if navigate {
            
            chooseTree()
        } else {
            GeometryReader{_ in
                
                ZStack{
                    
                    Image("start2").resizable().scaledToFit().padding(.horizontal,20)
                    Image("solve")
                    
                    
                    
                    
                    
                    
                    VStack(spacing: 20) {
                        
                        HStack(spacing: 10) {
                            ForEach(availableLetters, id: \.self) { letter in
                                Text(letter)
                                    .frame(width: 50, height: 50)
                                    .font(.title)
                                    .foregroundColor(.black)
                                
                                    .onTapGesture {
                                        addLetterToSlot(letter)
                                    }
                            }
                        }
                        
                        
                        HStack(spacing: 10) {
                            ForEach(letterSlots) { slot in
                                Text(slot.currentLetter ?? "")
                                    .frame(width: 50, height: 50)
                                    .font(.title)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color.white, lineWidth: 2)
                                    )
                            }
                        }
                        
                        if showMessage {
                            Text("Incorrect letter")
                                .foregroundColor(.red)
                                .padding()
                                .transition(.opacity)
                                .onAppear {
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        withAnimation {
                                            showMessage = false
                                        }
                                    }
                                }
                        }
                        
                        if isSolved {
                            Button(" Go to Tree ", action: navigateToChooseTree)
                                .foregroundColor(.white)
                                .padding(20)
                                .background(Color.black)
                                .cornerRadius(20)
                        }
                    }
                    .padding()
                }
                
            }
        }
    }
    
    private func addLetterToSlot(_ letter: String) {
        if let nextSlotIndex = letterSlots.firstIndex(where: { $0.currentLetter == nil }) {
            if letterSlots[nextSlotIndex].correctLetter == letter {
                letterSlots[nextSlotIndex].currentLetter = letter
                if let indexToRemove = availableLetters.firstIndex(of: letter) {
                    availableLetters.remove(at: indexToRemove)
                }
                checkSolution()
            } else {
                withAnimation {
                    showMessage = true
                }
            }
        }
    }
    
    private func checkSolution() {
        isSolved = letterSlots.allSatisfy { $0.currentLetter == $0.correctLetter }
    }
    
    private func navigateToChooseTree() {
        // Implement the navigation to your ChooseTree view
        self.navigate = true

    }
    
    
    
    
    
    struct  solve_Previews: PreviewProvider {
        static var previews: some View {
            solve()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
