//
//  ContentView.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 20/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var user_name:String = ""
    @State private var contact:String = ""
    var body: some View {
        NavigationView{
            VStack(spacing:40){
                TextField("User_name", text: $user_name, prompt: Text("Enter Your Name"))
                    .frame(width: 320,height: 60)
                    .font(.title)
                    .padding(.leading,30)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray.opacity(0.4),lineWidth: 2))
                    .disableAutocorrection(true)
                TextField("Contact", text: $contact, prompt: Text("Mobile Number"))
                    .frame(width: 320,height: 60)
                    .font(.title)
                    .padding(.leading,30)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray.opacity(0.4),lineWidth: 2))
                    .disableAutocorrection(true)
            Button{
                }label:{
                    Text("Submit")
                        .frame(width: 240,height: 70)
                        .background(.blue)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                }
                NavigationLink(destination: EditProfile(), label: {
                    Text("Privacy Policy")
                        .font(.title2)
                })
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
