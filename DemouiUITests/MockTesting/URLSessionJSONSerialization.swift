//
//  URLSessionJSONSerialization.swift
//  DemouiUITests
//
//  Created by Saritha Parsoya on 1/12/25.
//

import Foundation
import UIKit
import Network
import MapKit

class URLSessionJSONSerialization: NSObject {
    func getData() {
        let session = URLSession.shared
        let url = URL(string: "https://abc.org/get")!
        let task = session.dataTask(with: url) { data, response, error in
//            let httpRespose = response as? HTTPURLResponse
//            if httpResponse?.statusCode == 200  {
//              .. go to line 27
//            }
            guard let data = data else {
                print("Error: \(error!.localizedDescription)")
                return
            }
            do {
                // JSON serializatopm
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                print(json)
                
                let decoder = JSONDecoder()
                let response = try decoder.decode(Response.self, from: data)
                print(response)
            }
        }
        task.resume()   // It tells to app, that you continue when we have data, we will resume and process the data.
    }
}
