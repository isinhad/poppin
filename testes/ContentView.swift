//
//  ContentView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 05/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Início")
                }
                .tag(1)
            
//            Text("agenda")
//                .tabItem {
//                    Image(systemName: "calendar")
//                    Text("Agenda")
//                }
//                .tag(2)
            
            Text("notificações")
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Notificações")
                }
                .tag(2)
            
//            Text("perfil")
//                .tabItem {
//                    Image(systemName: "person.crop.circle.fill")
//                    Text("Perfil")
//                }
//                .tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
