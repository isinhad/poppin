//
//  Home.swift
//  testes
//
//  Created by Maria Eduarda Alves on 05/09/23.
//

import SwiftUI

struct HomeView: View {
    @State var searchText = ""
    
    @State var imageName: String = ""
    
    @State var selectedTab = "Eventos"
    
    var nomesComunidade: [String] = ["Academy", "Swiftie", "Geral"]
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .center, spacing: 16) {
                    BubbleStackView(bubblePressed: { namePressed in
                        self.imageName = namePressed
                    })
                    HStack (spacing: 14){
                        if selectedTab == "Eventos" {
                            Text("Eventos")
                                .font(.title2)
                                .foregroundColor(.blue)
                                .onTapGesture {
                                    selectedTab = "Eventos"
                                }
                            
                            Text("Mural")
                                .font(.title2)
                                .foregroundColor(.black)
                                .onTapGesture {
                                    selectedTab = "Mural"
                                }
                        }
                        
                        else {
                            Text("Eventos")
                                .font(.title2)
                                .foregroundColor(.black)
                                .onTapGesture {
                                    selectedTab = "Eventos"
                                }
                            
                            Text("Mural")
                                .font(.title2)
                                .foregroundColor(.blue)
                                .onTapGesture {
                                    selectedTab = "Mural"
                                }
                        }
                        Spacer()
                        //                        Image(systemName: "line.3.horizontal.decrease.circle.fill")
                        //                            .foregroundColor(.blue)
                    }
                    ScrollView {
                        if selectedTab == "Mural" {
                            if imageName == "bubble" {
                                MuralView()
                                    .navigationTitle("Início")
                            } else if imageName == "ada" {
                                AdaMuralView()
                                    .navigationTitle(nomesComunidade[0])
                            } else if imageName == "taylor" {
                                SwiftieMuralView()
                                    .navigationTitle(nomesComunidade[1])
                            }
                        } else {
                            if imageName == "ada" {
                                AdaView()
                                    .navigationTitle("Academy")
                            } else if imageName == "taylor" {
                                SwiftieView()
                                    .navigationTitle("Swiftie")
                            } else {
                                EventView()
                                    .navigationTitle("Início")
                            }
                        }
                    }
//                    .padding()
                }
                .searchable(text: $searchText) {
                    ForEach(0..<10, id: \.self) { index in
                        Text("Search Result \(index)")
                    }
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink( destination: CriarView(nomeComunidade: getNomeComunidade())) {
                            ZStack {
                                Circle()
                                    .frame(width: 64, height: 64.0)
                                    .background(Color.blue)
                                    .cornerRadius(100)
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .background(Color.blue)
                                    .foregroundColor(Color.white)
                            }
                        }
                    }
                }
                .padding()
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image("image 1")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
//                ToolbarItem(placement: .principal) {
//                                    Text("🫧")
//                        .font(.system(size: 32))
//                                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "line.3.horizontal")
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func getNomeComunidade() -> String {
        if imageName == "ada"  {
            return nomesComunidade[0]
        } else if imageName == "taylor"{
            return nomesComunidade[1]
        } else {
            return nomesComunidade[2]
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

