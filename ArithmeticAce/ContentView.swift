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
    
    //MARK: Computed properties
    
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
                
                Spacer()
                
                TextField("",
                          text: $inputGiven)
                    .multilineTextAlignment(.trailing)
                
            }
            
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

