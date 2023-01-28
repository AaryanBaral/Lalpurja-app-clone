//
//  Edit.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 27/01/2023.
//

import SwiftUI

struct EditProfile: View {
    @State var name:String = ""
    @State var contact:String = ""
    @State var email:String = ""
    @State var address:String = ""

    var body: some View {
        VStack(spacing: 10){
            VStack{
                Image("my image")
                    .resizable()
                    .frame(width: 130,height: 130)
                    .cornerRadius(500)
                    .overlay(
                        Button{
                            
                        }
                        label:{
                            Image(systemName: "camera")
                                .frame(width: 50,height: 50)
                                .background(.gray)
                                .cornerRadius(500)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                        }
                        
                    )
            }
            .padding(.bottom,30)
            .padding(.top,20)
                
            ExtractedView(name: $name,title: "Your Name",placeholder: "Enter Your name",identifier: "name")
            ExtractedView(name: $contact,title: "Phone Number",placeholder: "Enter Your contact",identifier: "contact")
            ExtractedView(name: $email,title: "Your Email",placeholder: "Enter Your email",identifier: "email")
            ExtractedView(name: $address,title: "Home Address",placeholder: "Enter Your address",identifier: "address")
            
            Button{
                
            }label: {
               Text("Save")
                    .padding()
                    .frame(width: 220,height: 60)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)

            }
            .padding(.top)
            Spacer()
                
                
            }
            
    }
}

struct Edit_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}

struct ExtractedView: View {
    @Binding var name:String
    @State var title:String
    @State var placeholder:String
    @State var identifier:String
    
    var body: some View {
        VStack(alignment:.leading){
            Text(title)
                .font(.title2)
            TextField("name", text: $name, prompt: Text(placeholder).foregroundColor(.black.opacity(0.7)))
                .frame(width: 320,height: 60)
                .padding(.leading,10)
                .background(.gray.opacity(0.18))
                .cornerRadius(10)
                .disableAutocorrection(true)

        }
    }
}
