//
//  FCFront.swift
//  swiftcard
//
//  Created by SANDERS, CADEN P. on 4/10/24.
//

import SwiftUI

struct FCFront: View {
    @State var BackCard = false
    @State var Contentview = false
    var body: some View {
        VStack{
            Text("Here is your flashcard Question")
            
            Button(action: {
                BackCard.toggle()
            }, label: {
                Text("Flip Card")
            })
            .sheet(isPresented: $BackCard, content: {
                NavigationStack {
                    FCBack()
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
    FCFront()
}
