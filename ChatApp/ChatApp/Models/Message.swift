//
//  Message.swift
//  ChatApp
//
//  Created by Arnav Goel on 12/23/23.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var recipient: Bool
    var timestamp: Date
}
