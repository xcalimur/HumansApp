//
//  DetailView.swift
//  HumansApp
//
//  Created by Cami Mata on 11/13/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            background
            
            ScrollView {
                VStack(alignment: .leading, spacing: 18) {
                    Group {
                        generalInfo
                        link
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 18)
                    .background(Theme.detailBackground, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                    
                }
                .padding()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

private extension DetailView {
    
    var background: some View {
        Theme.background
            .ignoresSafeArea(edges: .top)
    }
    
    var link: some View {
        Link(destination: .init(string: "https://reqres.in/#support-heading")!) {
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Support Reqres")
                    .foregroundColor(Theme.text)
                    .font (
                        .system(.body, design: .rounded)
                        .weight(.semibold)
                    )
                
                Text("https://reqres.in/#support-heading")
            }
            
            Spacer()
            
            Symbols
                .link
                .font(.system(.title3, design: .rounded))
            
        }
    }
    
}

private extension DetailView {
    
    @ViewBuilder var generalInfo: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            PillView(id: 0)
            
            Group {
                firstname
                lastname
                email
            }
            .foregroundColor(Theme.text)
            
        }
    }
    
    @ViewBuilder var firstname: some View {
        Text("First Name")
            .foregroundColor(Theme.text)
            .font (
                .system(.body, design: .rounded)
                .weight(.semibold)
            )
        
        Text("<First Name>")
            .foregroundColor(Theme.text)
            .font (
                .system(.subheadline, design: .rounded)
            )
        
        Divider()
    }
    
    @ViewBuilder var lastname: some View {
        Text("Last Name")
            .foregroundColor(Theme.text)
            .font (
                .system(.body, design: .rounded)
                .weight(.semibold)
            )
        
        Text("<Last Name>")
            .foregroundColor(Theme.text)
            .font (
                .system(.subheadline, design: .rounded)
            )
        
        Divider()
    }
    
    @ViewBuilder var email: some View {
        Text("Email")
            .foregroundColor(Theme.text)
            .font (
                .system(.body, design: .rounded)
                .weight(.semibold)
            )
        
        Text("<Email>")
            .foregroundColor(Theme.text)
            .font (
                .system(.subheadline, design: .rounded)
            )
    }
}
