import SwiftUI

struct AllLevelsView: View {
    var levels: [StatefullLevel]
    var body: some View {
        List {
            ForEach(levels) { level in
                Text("\(level.level.title) - \(level.level.level)")
                    .font(.system(size: 15))
                    .bold()
                    .padding(.leading, 15)
                    .foregroundColor(.gray)
                .listRowBackground(Color(UIColor.systemGroupedBackground))
                ForEach(level.tasks) { task in
                    SelectableCellView(title: task.task.title)
                }
                Text(level.level.reward ?? "No reward")
                    .font(.system(size: 12))
                    .bold()
                    .padding(.leading, 15)
                    .padding(.bottom, 20)
                    .foregroundColor(.gray)
                .listRowBackground(Color(UIColor.systemGroupedBackground))
            }
        }
    }
}

#if DEBUG
struct AllLevelsView_Previews: PreviewProvider {
    static var previews: some View {
        AllLevelsView(levels: [StatefullLevel(level: Level(level: 2, title: "Title", description: nil, reward: nil), status: .completed, tasks: [StatefullTask(status: .completed, task: Task(title: "First task", description: nil)), StatefullTask(status: .completed, task: Task(title: "Second task", description: nil)), StatefullTask(status: .completed, task: Task(title: "Third task", description: nil))]), StatefullLevel(level: Level(level: 2, title: "Title", description: nil, reward: nil), status: .completed, tasks: [StatefullTask(status: .completed, task: Task(title: "First task", description: nil)), StatefullTask(status: .completed, task: Task(title: "Second task", description: nil)), StatefullTask(status: .completed, task: Task(title: "Third task", description: nil))])])
    }
}
#endif

