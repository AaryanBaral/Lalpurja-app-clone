//
//  Our Requirements.swift
//  LalpurjaNepalClone
//
//  Created by Aaryan Baral on 28/01/2023.
//

import SwiftUI

struct Our_Requirements: View {
    var body: some View {
        ScrollView(){
            VStack(spacing:30){
                ForEach(0..<10) { item in
                    VStack(alignment:.trailing, spacing:30){
                        Text("Adfkjhakjdhfbvalsjdbv kjah foahfdnkj uhfoe akjhsfouehfljdncbcuboewbv ljdncoaue[bvjdnajbd ouheoncaljdsncoaewocinad ")
                            .multilineTextAlignment(.leading)
                            .font(.title3)
                            .padding(.top,5)
                        
                        HStack{
                            Text("0012")
                                .frame(width: CGFloat(70),height: CGFloat(50))
                                .background(.blue.opacity(0.9))
                                .cornerRadius(10)
                            
                        }
                        
                    }
                    .padding(15)
                    .frame(width: CGFloat(350))
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(.gray.opacity(0.6),lineWidth: 7))
                    .cornerRadius(10)
                }
            }
        }
    }
}

struct Our_Requirements_Previews: PreviewProvider {
    static var previews: some View {
        Our_Requirements()
    }
}
