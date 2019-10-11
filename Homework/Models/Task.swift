import Foundation
import SwiftUI
struct Task: Codable, Identifiable {
    var title: String
    var description: String?
    var id: String {title}
}
