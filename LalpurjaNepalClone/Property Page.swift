//
//  Property Page.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 29/01/2023.
//

import SwiftUI

struct Property_Page: View {
    @State var Search:String = ""
    @State private var IsPopUp:Bool = false
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment:.leading){
                    HStack(spacing:10){
                        Image("lalpurjanepal")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80)
                            .font(.title)
                        TextField("Search", text: $Search, prompt: Text("Enter City").foregroundColor(.black))
                            .padding()
                            .frame(width: 220,height: 45)
                            .background(.gray.opacity(0.3))
                            .cornerRadius(8)
                            .autocorrectionDisabled(true)
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                    }
                .padding(.leading,5)
                    HStack{
                        Text("Property Listing")
                            .font(.title2)
                            .padding()
                        Spacer()
                        Button{
                            IsPopUp.toggle()
                        }
                    label:{
                        HStack{
                            Image(systemName: "house")
                                .font(.title3)
                            Text("Sort")
                                .font(.title2)
                        }
                        .frame(width: 90,height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray.opacity(0.4),lineWidth: 7))
                        .cornerRadius(10)
                        .padding()
                        .foregroundColor(.black)
                    }.popover(isPresented: $IsPopUp){
                        Text("This is your pop over scressn.")
                    }
                    
                
                    
                }
                ForEach(0..<10) { item in
                        VStack(alignment:.leading,spacing: 30){
                            HStack{
                                Image("image2")
                                    .resizable()
                                    .frame(width: 130,height:130)
                                    .cornerRadius(15)
                                VStack(spacing:10){
                                    Text("Home | For SALE")
                                        .font(.title3)
                                    Text("Rs. 14000000")
                                        .font(.title2)
                                        .foregroundColor(.blue)
                                        .fontWeight(.semibold)
                                    HStack(spacing:10){
                                        Image(systemName: "location")
                                        Text("Kamalpokhari")
                                    }
                                    .padding(.leading,1)
                                }
                            }
                            HStack(spacing:10){
                                Text("Details")
                                    .font(.title3)
                                    .frame(width: 100,height:50)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray.opacity(0.4),lineWidth: 5))
                                    .cornerRadius(10)
                                Spacer()
                                Text("Contact")
                                    .font(.title3)
                                    .frame(width: 100,height:50)
                                    .overlay(RoundedRectangle(cornerRadius: 10)
                                        .stroke(.gray.opacity(0.4),lineWidth: 5))
                                    .cornerRadius(10)
                            }
                        }
                        .padding()
                        .frame(width: 350)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(.gray.opacity(0.4),lineWidth:4))
                        .cornerRadius(10)
                        Spacer()
                    }
                .padding(.leading,20)
                    .padding(.top,5)
                }
                .padding(.top,20)

            }
        }
    }
}

struct Property_Page_Previews: PreviewProvider {
    static var previews: some View {
        Property_Page()
    }
}
