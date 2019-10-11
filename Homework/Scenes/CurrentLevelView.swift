import SwiftUI

struct CurrentLevelView: View {
    var currentLevel: CurrentLevel
    var body: some View {
        Form{
            List {
                NavigationLink(
                    destination: AllLevelsScene()
                        .environmentObject(AllLevelsViewModel())
                ) {
                    CurrentLevelCellView(title: "\(currentLevel.level.level.title) - \(currentLevel.level.level.level)")
                }
                Text("NEXT LEVEL")
                    .font(.system(size: 15))
                    .bold()
                    .padding(.top, 10)
                    .padding(.leading, 15)
                    .foregroundColor(.gray)
                    .background(Color.clear)
                .listRowBackground(Color(UIColor.systemGroupedBackground))
                ForEach(currentLevel.level.tasks) { task in
                    SelectableCellView(title: task.task.title)
                }
                Text(currentLevel.level.level.reward ?? "No reward")
                    .font(.system(size: 12))
                    .bold()
                    .padding(.leading, 15)
                    .foregroundColor(.gray)
                    .background(Color.clear)
                    .listRowBackground(Color(UIColor.systemGroupedBackground))
                Text("REFERALS")
                    .font(.system(size: 15))
                    .bold()
                    .padding(.top, 25)
                    .padding(.leading, 15)
                    .foregroundColor(.gray)
                    .listRowBackground(Color(UIColor.systemGroupedBackground))
                ReferalCellView(count: currentLevel.status.referals)
            }
        }.listRowBackground(Color(UIColor.systemGroupedBackground))
            .background(Color(UIColor.systemGroupedBackground))
    }
}

#if DEBUG
struct CurrentLevelView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentLevelView(currentLevel: CurrentLevel(level: StatefullLevel(level: Level(level: 2, title: "Title", description: nil, reward: nil), status: .completed, tasks: [StatefullTask(status: .completed, task: Task(title: "First task", description: nil)), StatefullTask(status: .completed, task: Task(title: "Second task", description: nil)), StatefullTask(status: .completed, task: Task(title: "Third task", description: nil))]), status: Status(id: "asdasd", referals: 2, level: 2, key: nil, addresses: nil)))
    }
}
#endif
