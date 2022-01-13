//
//  ContentView.swift
//  FirstApp
//
//  Created by Lan Nagashima  on 2022/1/11.
//

import SwiftUI

struct ContentView: View {
    let unitSelection = ["seconds","minutes","hours"]
    @State private var selectedItem = "seconds"
    @State private var amount = 0
    var result: Int{
        let amo = amount
        let selected = selectedItem
        switch selected{
        case "seconds":
            return amo
        case "minutes":
            return amo/60
        case "hours":
            return amo/3600
        default:
            return amo
        }
    }
    var body: some View {
        NavigationView{
        Form{
            TextField("Amount",value: $amount, format: .number)
                .keyboardType(.decimalPad)
            Picker("Unit to be converted", selection:$selectedItem){
                ForEach(unitSelection, id: \.self){
                    Text($0)
                }
            }
            Section{
                Text(result, format: .number)
            }header: {
                Text("Result")
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
