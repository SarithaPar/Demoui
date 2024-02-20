//
//  LoginResponse.swift
//  Demoui
//
//  Created by Saritha Parsoya on 2/18/24.
//

import Foundation


struct LoginResponse: Decodable {
    let data: LoginResponseData
}

struct LoginResponseData: Decodable {
    let accessToken: String
    let refreshToken: String
}
