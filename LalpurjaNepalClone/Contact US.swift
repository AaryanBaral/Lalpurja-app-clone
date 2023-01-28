//
//  Contact US.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 28/01/2023.
//

import SwiftUI

struct Contact_US: View {
    var body: some View {
        ZStack{
            VStack(){
                Text("Get In Touch")
                    .font(.system(size: 40,weight: .semibold ,design: .rounded))
                    .frame(width: 400,height: 40)
                    .background(.blue.opacity(0.3))
            }
            Spacer()

        }
    }
}

struct Contact_US_Previews: PreviewProvider {
    static var previews: some View {
        Contact_US()
    }
}
