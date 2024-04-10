//
//  ContentView.swift
//  swiftcard
//
//  Created by ROTSEVENKOV, MATVEY V. on 4/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var showCardFront = false
//    @State var selectedCard =
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background()
            VStack {
                Text("Select a card")
                
                LazyVGrid(columns: [GridItem()], content: {
                    /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
