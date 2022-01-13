//
//  ContentView.swift
//  FirstApp
//
//  Created by Lan Nagashima  on 2022/1/11.
//

import SwiftUI

struct ContentView: View {
    let unitSelection = ["seconds","minutes","hours","days"]
    @State private var originSelectedItem = "seconds"
    @State private var selectedItem = "seconds"
    @State private var amount = 0
    var body: some View {
        NavigationView{
        Form{
            Picker("Original Unit", selection: $originSelectedItem){
                ForEach(unitSelection, id: \.self){
                    Text($0)
                }
            }
            TextField("Amount",value: $amount, format: .number)
            Picker("Unit to be converted", selection:$selectedItem){
                ForEach(unitSelection, id: \.self){
                    Text($0)
                }
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
