import SwiftUI

struct CurrentLevelScene: DinamicDataView {
    @EnvironmentObject var viewModel: CurrentLevelViewModel
    typealias ViewModel = CurrentLevelViewModel
    
    func getDataView() -> AnyView {
        return AnyView(CurrentLevelView(currentLevel: viewModel.currLevel!))
    }
    
    var body: some View {
        NavigationView {
            content.navigationBarTitle("", displayMode: .inline)
        }
    }
}

#if DEBUG
struct CurrentLevelScene_Previews: PreviewProvider {
    static var previews: some View {
        CurrentLevelScene().environmentObject(CurrentLevelViewModel())
    }
}
#endif
