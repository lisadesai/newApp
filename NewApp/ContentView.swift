//
//  ContentView.swift
//  NewApp
//
//  Created by Bellatrix Lestrange on 1/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20 ).fill(.white)
                .shadow(radius: 20)
                .frame(width: 400, height: 350)
           
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/,displayedComponents: [.date] , label: { Text("Date") })
                .datePickerStyle(GraphicalDatePickerStyle())
                .labelsHidden()
                .frame(maxWidth: .infinity)
                .padding(10)
                .accentColor(.green)
        }.padding(20)
        
    }
   
   
}

#Preview {
    ContentView()
}
