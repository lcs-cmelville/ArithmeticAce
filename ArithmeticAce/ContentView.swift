//
//  ContentView.swift
//  ArithmeticAce
//
//  Created by Claire Coding Account on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored properties
    let multiplicand = Int.random(in: 1...12)
    let mutltiplier = Int.random(in: 1...12)
    @State var inputGiven = ""
    
    // Has an answer been checked?
    @State var answerChecked = false
    
    // Was the answer given correct?
    @State var answerCorrect = false
    
    //MARK: Computed properties
    var correctProduct: Int {
        return multiplicand * mutltiplier
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack{
                
                Text("✕")
                
                Spacer()

                VStack(alignment: .trailing) {
                    Text("\(multiplicand)")
                    
                    Text("\(mutltiplier)")
                }
            }
            Divider()
            
            HStack {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                //            CONDITION     true  false
                    .opacity(answerCorrect ? 1.0 : 0.0)
                
                Spacer()
                
                TextField("",
                          text: $inputGiven)
                    .multilineTextAlignment(.trailing)
                
            }
            
            Button(action: {
                
                // Answer has been checked
                answerChecked = true
                
                // Convert the unput given to an integerm if possible
                guard let productGiven = Int(inputGiven) else {
                    // Not a number
                    answerCorrect = false
                    return
                }
                
                // Check the answer
                // if the inputed answer equals the multiplicand x the multiplier than it's correct, if not it's incorrect
                if productGiven == correctProduct {
                    // Celebrate
                    answerCorrect = true
                } else {
                    // Not the correct number
                    answerCorrect = false
                }
            }, label: {
                Text("Check Answer")
                    .font(.largeTitle)
            })
                .padding()
                .buttonStyle(.bordered)
            
            Spacer()
        }
        .padding(.horizontal)
        .font(.system(size: 72))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

