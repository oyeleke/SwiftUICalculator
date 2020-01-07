//
//  ContentView.swift
//  SwiftUICalculator
//
//  Created by user on 06/01/2020.
//  Copyright © 2020 user. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let button = [
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="]
    ]
    var body: some View {
        ZStack(alignment: .bottom){
            Color.black.edgesIgnoringSafeArea(.all)
            HStack{
                Spacer()
                Text("42")
                    .font(.system(size: 64))
                    .foregroundColor(.white)
            }.padding()
            VStack(spacing: 12){
                ForEach(button, id: \.self) {
                    row in
                    HStack (spacing: 12){
                        ForEach(row, id: \.self) {
                            button in
                            Text(button)
                                .font(.system(size: 32))
                                .frame(width: self.buttonwidth(), height: self.buttonwidth())
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(self.buttonwidth())
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
    
    func buttonwidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5*12) / 4
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
