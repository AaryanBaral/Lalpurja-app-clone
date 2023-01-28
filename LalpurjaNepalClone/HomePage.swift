//
//  HomePage.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 22/01/2023.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ScrollView{
            
        }
    }
}
    


struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

struct LocationCard: View {
    @State var location:String
    var body: some View {
        VStack{
            Image("Image")
                .resizable()
                .scaledToFit()
                .frame(width: 140)
            Text(location)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.bottom,10)
                .multilineTextAlignment(.center)
            
        }
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(.black,lineWidth: 2))
        .cornerRadius(10)
    }
}
