//
//  RemoteImage_12.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/20/24.
//

import SwiftUI

struct RemoteImage_12: View {
    @State private var remoteImage : UIImage? = nil
       let placeholderOne = UIImage(named: "Picture")
       
       var body: some View {
           Image(uiImage: self.remoteImage ?? placeholderOne!)
               .onAppear(perform: fetchRemoteImage)
       }
       
       func fetchRemoteImage()
       {
           guard let url = URL(string: "https://images.unsplash.com/photo-1609858416787-d90ddd60053c") else { return }
           URLSession.shared.dataTask(with: url){ (data, response, error) in
               if let image = UIImage(data: data!){
                   self.remoteImage = image
               }
               else{
                   print(error ?? "")
               }
           }.resume()
       }
}

#Preview {
    RemoteImage_12()
}
