//
//  ContentView.swift
//  HumansApp
//
//  Created by Cami Mata on 11/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World!")
            .padding()
            .onAppear {
                print("Users Response")
                
                dump (
                    try? StaticJSONMapper.decode(file: "UsersStaticData", type: UsersResponse.self)
                )
                
                print("Single User Response")
                
                dump (
                    try? StaticJSONMapper.decode(file: "SingleUserData", type: UserDetailResponse.self)
                )
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
