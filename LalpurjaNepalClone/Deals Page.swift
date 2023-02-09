//
//  Deals Page.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 25/01/2023.
//

import SwiftUI

struct Deals_Page: View {
    var body: some View {
        ScrollView{
                Text("Discounted properties")
                    .font(.title)
                    .padding(.top,10)
                    .fontWeight(.semibold)
            ForEach(0..<10){ item in
                VStack{
                    Image("image2")
                        .resizable()
                        .frame(width: 350,height: 200)
                    Text("Home-FOR SALE-OFFER")
                        .frame(width: 300,height: 40)
                        .background(.black.opacity(0.5))
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding(.top,-123)
                    VStack(alignment: .leading,spacing:10){
                        HStack(spacing:40){
                            Text("Rs 4500000")
                                .foregroundColor(.blue)
                                .fontDesign(.rounded)
                                .strikethrough()
                                
                                
                            Text("Rs 4000000")
                        }
                        .padding(.leading,30)
                        .padding(.top,10)
                        HStack{
                            Image(systemName: "phone")
                            Text("9886055166")
                            Image(systemName: "location")
                            Text("Kapan Marga Bansbari Kathmandu")
                        }
                        .frame(width: 350)
                        .padding(.bottom,20)
                    }
                    .background(.white)
                    .padding(.top,-90)
                    
                }
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray.opacity(0.6),lineWidth: 5))
                .cornerRadius(10)
                .padding()
            }
        }
    }
}

struct Deals_Page_Previews: PreviewProvider {
    static var previews: some View {
        Deals_Page()
    }
}
