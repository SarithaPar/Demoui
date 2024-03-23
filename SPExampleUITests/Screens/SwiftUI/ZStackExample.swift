//
//  ZStackExample.swift
//  Demoui
//
//  Created by Saritha Parsoya on 3/6/24.
//

import SwiftUI

struct ZStackExample: View {
    var body: some View {
        ZStack {
            Image("background").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                VStack(alignment: .center, spacing: 20){
                    Image("myImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    
                    
                }
            }
        }
    }
}

#Preview {
    ZStackExample()
}
