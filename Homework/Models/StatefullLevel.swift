import Foundation
import SwiftUI

struct StatefullLevel: Codable, Identifiable {
    var level: Level
    var status: CompletionState
    var tasks: [StatefullTask]
    //do not use level since the hashed value is used and if any of its params get changed
    //then the id here would be different
    var id: Int {level.id}
}
