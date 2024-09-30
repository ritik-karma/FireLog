//
//  ContentView.swift
//  FireLog
//
//  Created by Ritik Karma on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            
            //MARK: Make this button code in Component❗️
            Button{
                //Button Logic
            } label: {
                Text("Login")
                    .frame(width: 350, height: 50)
                    .background(.purple)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
            }
            
            HStack{
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.gray)
                Text("Or")
                    .font(.headline)
                    .foregroundColor(Color.gray)
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(Color.gray)
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
