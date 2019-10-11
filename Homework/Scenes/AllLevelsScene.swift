import SwiftUI

struct AllLevelsScene: DinamicDataView {
    @EnvironmentObject var viewModel: AllLevelsViewModel
    typealias ViewModel = AllLevelsViewModel
    
    func getDataView() -> AnyView {
        return AnyView(AllLevelsView(levels: viewModel.levels))
    }
    
    var body: some View {
        content.navigationBarTitle("Levels")
    }
}

#if DEBUG
struct AllLevelsScene_Previews: PreviewProvider {
    static var previews: some View {
        AllLevelsScene().environmentObject(AllLevelsViewModel())
    }
}
#endif
