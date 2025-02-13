//
//  ContentView.swift
//  NewApp
//
//  Created by Bellatrix Lestrange on 1/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20 ).fill(.white)
                    .shadow(radius: 7)
                    .frame(width: 350, height: 350)
                    .scaledToFit()
                    
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/,displayedComponents: [.date] , label: { Text("Date") })
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .labelsHidden()
                    .frame(maxWidth: .infinity)
                    .padding(10)
                    .accentColor(.green)
            }.padding(20)
        }.containerRelativeFrame([.horizontal, .vertical])
            .background(Color(red: 0.8196078431372549, green: 1.0, blue: 0.43529411764705883))
        
            
            
        
        Button(action: {CreateTripView = true}) {
            label: {
                Text("Add a trip")
                    .padding(20)
                    .background(.green)
                    .contentShape(Rectangle())
            }
        
    }
   
   
}

#Preview {
    ContentView()
}
