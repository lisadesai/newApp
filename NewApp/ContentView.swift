//
//  ContentView.swift
//  NewApp
//
//  Created by Bellatrix Lestrange on 1/30/25.
//

import SwiftUI

struct ContentView: View {
    @State private var startDate = Date()
    @State private var endDate = Date()
    var body: some View {
        VStack {
        
            HStack(spacing: 300){
                Text("Start")
                
                Text("End")
            
            }
            
            HStack{
                DatePicker(selection: $startDate,  displayedComponents: [.date], label: { Text("") })
                    .datePickerStyle(CompactDatePickerStyle())
                    .labelsHidden()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .accentColor(.orange)
                DatePicker(selection: $endDate, displayedComponents: [.date], label: { Text("") })
                    .datePickerStyle(CompactDatePickerStyle())
                    .labelsHidden()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .accentColor(.orange)
                 
            }.padding()
            
            
        }
        .padding(10)
    }
}

#Preview {
    ContentView()
}
