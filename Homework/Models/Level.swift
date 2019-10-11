import Foundation
import SwiftUI
struct Level: Codable, Identifiable {
    var level: Int
    var title: String
    var description: String?
    var reward: String?
    var id: Int {level}
}
