//
//  ContentView.swift
//  ShowCreditScore
//
//  Created by Mani Yechuri on 2023/08/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    var body: some View {
        NavigationView {
            CreditScoreView()
                .onTapGesture {
                    
                   // isActive.toggle()
            }
        }
        .onTapGesture {
            isActive.toggle()
            print("It is printed")

            NavigationLink("", destination: CreditScoreDetailView(), isActive: $isActive)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
