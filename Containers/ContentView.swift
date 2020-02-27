//
//  ContentView.swift
//  Containers
//
//  Created by Mickael Mas on 27/02/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray
            
            RoundedRectangle(cornerRadius: 50)
                .fill(Color.white)
                .frame(width: 300, height: 300)
            
            Circle()
                .fill(Color.blue)
                .frame(width: 150, height: 150)
            
            Text("Bravo")
                .font(.largeTitle)
                .foregroundColor(Color.white)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
