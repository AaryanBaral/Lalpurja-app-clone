//
//  setting page.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 23/01/2023.
//

import SwiftUI

struct setting_page: View {
    var body: some View {
        VStack{
            Form{
                Section(){
                    HStack(){
                        Image("my image")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 80,height: 80)
                        VStack(spacing:10){
                            Text("Aaryan Baral")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .font(.system(size: 20, weight: .light))
                            Text("9886055166")
                                .font(.system(size: 13, weight: .light))
                            Text("Logout")
                        }
                        Text("Edit")
                        
                    }
                }
                Section(header:Text("Explore")){
                    ProfileComponents(image:"house",name:"Request Property")
                    ProfileComponents(image:"house",name:"Sell Property")
                    ProfileComponents(image:"calendar.badge.clock",name:"Schedile an Appointment")
                    ProfileComponents(image:"rupeesign",name:"Home Loans")
                    ProfileComponents(image:"house",name:"EMI Calculator")
                    ProfileComponents(image:"doc.on.doc",name:"Our Requirements")
                }
                Section(header:Text("Support")){
                    ProfileComponents(image:"i.circle",name:"About Us")
                    ProfileComponents(image:"doc.on.doc",name:"Privacy Policy")
                    ProfileComponents(image:"phone",name:"Contact Us")
                    ProfileComponents(image:"arrowshape.turn.up.right",name:"Share this app")
                }
                
            }
        }
    }
}

struct setting_page_Previews: PreviewProvider {
    static var previews: some View {
        setting_page()
    }
}

struct ProfileComponents: View {
    @State var image:String
    @State var name:String
    var body: some View {
        HStack(spacing:20){
            Image(systemName: image)
            Text(name)
        }
    }
}
