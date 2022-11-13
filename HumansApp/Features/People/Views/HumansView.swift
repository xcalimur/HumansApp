//
//  HumansView.swift
//  HumansApp
//
//  Created by Cami Mata on 11/12/22.
//

import SwiftUI

struct HumansView: View {
    
    private let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    @State private var users: [User] = []
    
    var body: some View {
        NavigationView {
            ZStack {
                background
                    
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(users, id: \.id){ user in
                            HumanItemView(user: user)
                        }
                        
                        
                    }
                    .padding()
                    
                }
            }
            .navigationTitle("Humans")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    create
                }
            }
            .onAppear {
                do {
                    let res =  try StaticJSONMapper.decode(file: "UsersStaticData", type: UsersResponse.self)
                    users = res.data
                } catch {
                    print(error)
                }
            }
        }
    }
}

struct HumansView_Previews: PreviewProvider {
    static var previews: some View {
        HumansView()
    }
}

private extension HumansView {
    
    var background: some View {
        Theme.background
            .ignoresSafeArea(edges: .top)
    }
    
    var create: some View {
        Button {
            
        } label: {
            Symbols.plus
                .font(
                    .system(.headline, design: .rounded)
                    .bold()
                )
        }
    }
    
}
