//
//  AboutUs.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 02/02/2023.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
        VStack(alignment:.center){
            Image("lalpurjanepal")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .padding(.top,20)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .multilineTextAlignment(.leading)
                .padding(20)
                .font(.title2)
            
            Spacer()
        }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
