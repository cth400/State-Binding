//
//  ContentView.swift
//  State-Binding
//
//  Created by TAEHYUNG CHOI on 17/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text = "test"
    
    var body: some View {
        VStack{
            
            Text(self.text)
                .padding()
            Button(action: {
                self.text = "change text"
            }, label: {
                Text("Button")
            })
            TestButtonView(text: $text)
        }
    }
}



struct TestButtonView : View {
    
    @Binding var text : String
    
    var body: some View {
        Button(action: {
            text = "change Text"
        }, label: {
            Text("TestButton")
        })
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
