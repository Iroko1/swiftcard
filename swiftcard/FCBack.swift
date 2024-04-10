//
//  FCBack.swift
//  swiftcard
//
//  Created by SANDERS, CADEN P. on 4/10/24.
//

import SwiftUI

struct FCBack: View {
    @State var FrontCard = false
    @State var Contentview = false
    var body: some View {
        VStack{
            Text("Here is your flashcard Question")
            
            Button(action: {
                FrontCard.toggle()
            }, label: {
                Text("Flip Card")
            })
            .sheet(isPresented: $FrontCard, content: {
                NavigationStack {
                    FCFront()
                }
            })
            
            Button(action: {
                Contentview.toggle()
            }, label: {
                Text("Go Back to all Cards")
            })
            .sheet(isPresented: $Contentview, content: {
                NavigationStack {
                    ContentView()
                }
            })
        }
        
    }
}

#Preview {
    FCBack()
}
