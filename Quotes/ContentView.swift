//
//  ContentView.swift
//  Quotes
//
//  Created by Nicole on 2022/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("I am a quote")
                .font(.title)
                .multilineTextAlignment(.leading)
                .padding()
                .border(Color.black,width: 4)
                .padding(10)
                .padding()
            
            Image(systemName: "heart.circle")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(Color.red)
                
            
            Button(
                action: {
                    print("I've been pressed.")
                },
               
                label:{
                    Text("Another one!")
                }
            )
                .buttonStyle(.bordered)
                .padding()
                
            
            HStack{
                Text("Favourites")
                    .bold()
                Spacer()
            }
            
            List {
                Text("Nothing is a waste of time if you use the experience wisely.")
                Text("If your actions inspire others to dream more, learn more, do more and become more, you are a leader.")
            }
            Spacer()
        }
        .navigationTitle("Quotes")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ContentView()
        }
    }
}
