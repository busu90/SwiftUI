import Foundation
import SwiftUI
struct Status: Codable, Identifiable {
    var id: String
    var referals: Int
    var level: Int
    var key: String?
    var addresses: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case referals = "number_of_invitees"
        case level
        case key
        case addresses
    }
}
