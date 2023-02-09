//
//  Contact US.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 28/01/2023.
//

import SwiftUI

struct Contact_US: View {
    var body: some View {
        ZStack(alignment: .top){
            VStack(spacing:80){
                VStack(){
                    Text("Get In Touch")
                        .font(.system(size: 60,weight: .semibold ,design: .rounded))
                    
                    
                }
                VStack(alignment: .leading,spacing:30){
                    
                    LocationView(icon:"location",text:"Nayabzar,Kathmandu, Nepal")
                    LocationView(icon:"envelope",text:"lalpurjanepal@gmail.com")
                    LocationView(icon:"globe",text:"https://lalpurjanepal.com.np")
                    LocationView(icon:"phone",text:"+977-9860635590")
                }
                Spacer()
            }
            .padding(.top,100)
        
        }
    }
}

struct Contact_US_Previews: PreviewProvider {
    static var previews: some View {
        Contact_US()
    }
}

struct LocationView: View {
    @State var icon:String
    @State var text:String
    var body: some View {
        HStack(spacing:20){
            Image(systemName: icon)
                .font(.title)
            Text(text)
                .font(.title2)
                .fontDesign(.rounded)
                .fontWeight(.medium)
        }

    }
}
