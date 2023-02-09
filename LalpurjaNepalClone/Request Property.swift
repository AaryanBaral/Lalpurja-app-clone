//
//  Request Property.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 05/02/2023.
//

import SwiftUI

struct Request_Property: View {
    @State private var name:String = ""
    @State private var phone:String = ""
    @State private var email:String = ""
    @State private var negotiable:String = ""
    @State private var message:String = ""
    @State private var selected:Int = 1
    var body: some View {
        ScrollView{
            VStack{
                
                ExtractedView(name:$name,title: "Full Name",placeholder: "Full Name")
                ExtractedView(name:$name,title: "Phone Number",placeholder: "eg. 9841456789")
                ExtractedView(name:$name,title: "Email",placeholder: "Enter Email Address")
                ExtractedView(name:$name,title: "Full Name",placeholder: "Full Name")
                VStack(alignment: .leading){
                    Text("Purpose")
                        .foregroundColor(.black)
                        .font(.title2)
                    Picker(selection: $selected, content: {
                        Text("Buy").tag(1)
                        Text("Sell").tag(2)
                        Text("Lease").tag(3)
                    },label: {
                        Text("Purpose")
                        
                    })
                }
                .padding(.leading,10)
                .padding()
                .pickerStyle(.segmented)
                MessageView(name:$message,title: "Message",placeholder: "Provide us additional details")
                
                Button{
                    
                }label:{
                    Text("Submit")
                        .frame(width: 210,height:60)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(.top,30)
                        
                }
            }
            .padding(.top,40)
            
        }
    }
}

struct Request_Property_Previews: PreviewProvider {
    static var previews: some View {
        Request_Property()
    }
}


struct MessageView: View {
    @Binding var name:String
    @State var title:String
    @State var placeholder:String
    var body: some View {
        VStack(alignment:.leading){
            Text(title)
                .font(.title2)
            TextField("name", text: $name, prompt: Text(placeholder).foregroundColor(.black.opacity(0.7)),axis: .vertical)
                .frame(width: 320,height: 180)
                .padding(.leading,10)
                .background(.gray.opacity(0.18))
                .cornerRadius(10)
                .lineLimit(8)
                .disableAutocorrection(true)
            
        }
    }
}
