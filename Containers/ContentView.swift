//
//  ContentView.swift
//  Containers
//
//  Created by Mickael Mas on 27/02/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var align: HorizontalAlignment = .center
    
    var body: some View {
        
        TabView {
            ZStackView()
                .tabItem { VStack {
                    Image(systemName: "1.circle")
                    Text("ZStack")
                    }
                }
            
            VStack {
                ColorVStackView(align: $align)
                
                Button("Leading") {
                    withAnimation {
                        self.align = .leading
                    }
                }
                
                Button("Center") {
                    withAnimation {
                        self.align = .center
                    }
                }
                
                Button("Trailing") {
                    withAnimation {
                        self.align = .trailing
                    }
                }
            }.tabItem { VStack {
                    Image(systemName: "2.circle")
                    Text("VStack")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ZStackView: View {
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

struct ColorVStackView: View {
    
    @Binding var align: HorizontalAlignment
    
    var body: some View {
        VStack(alignment: align, spacing: 20) {
            RoundedRectangle(cornerRadius: 10).fill(Color.red).frame(width: 70, height: 30)
            
            RoundedRectangle(cornerRadius: 10).fill(Color.orange).frame(width: 200, height: 30)
            
            RoundedRectangle(cornerRadius: 10).fill(Color.yellow).frame(width: 100, height: 30)
            
        }.padding(20)
            
    }
}
