//
//  ContentView.swift
//  API hackwitch
//
//  Created by Student on 2/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            NavigationView {
                List(jokes) { joke in
                    NavigationLink(
                        destination: Text(joke.punchline)
                            .padding(),
                        label: {
                            Text(joke.setup)
                        })
                }
                .navigationTitle("Programming Jokes")
            }
            .onAppear(perform: {
                getJokes()
            })
        }
    }
    
    func getJokes() {
        let apiKey = "?rapidapi-key=ccbe24b966msh00f19017580b48bp12c43fjsn104ce1c9f318"
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    struct Joke: Identifiable {
        let id = UUID()
        var setup: String
        var punchline: String
    }
    
    
    
}
