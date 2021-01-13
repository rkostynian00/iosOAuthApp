//
//  ContentView.swift
//  iosOAuthApp
//
//  Created by Rostyslav Kostynian on 12.01.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var _login:String = "";
    @State private var _password:String = "";
    @State private var _ssoCenterUrl:String = "";
    
    
    var body: some View {
        
        VStack{
            TextField("Login", text: $_login).padding(5)
            TextField("Password", text: $_password).padding(5)
            TextField("SSO center url", text: $_ssoCenterUrl).padding(5)
            
            
            Button(action: {
                let login = $_login.wrappedValue
                let password = $_password.wrappedValue
                let ssoCenterUrl = $_ssoCenterUrl.wrappedValue
                iosOAuthAppApp.ssoCenterApi.login(username: login, password: password, ssoCenterUrl: ssoCenterUrl)
            })
            {
                Text("Sign in")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding(10)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .padding(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
