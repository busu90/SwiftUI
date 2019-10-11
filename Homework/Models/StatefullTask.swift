import Foundation
import SwiftUI

struct StatefullTask: Codable, Identifiable {
    var status: CompletionState
    var task: Task
    //do not use task since the hashed value is used and if any of its params get changed
    //then the id here would be different
    var id: String {task.id}
}
