//
//  ContentView.swift
//  FirstApp
//
//  Created by Lan Nagashima  on 2022/1/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        Form{
        Section {
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
        Section{
            Text("OTHER")
        }
        }
        .navigationTitle("TEST")
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
