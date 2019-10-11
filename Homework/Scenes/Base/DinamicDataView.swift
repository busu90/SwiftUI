import SwiftUI
import Combine

internal typealias ObservableDataFetchingViewModel = ObservableObject & DataFetchingViewModel
protocol DinamicDataView: View {
    associatedtype ViewModel: ObservableDataFetchingViewModel
    var viewModel: ViewModel {get}
    
    func getDataView() -> AnyView
}

extension DinamicDataView {
    var content: some View {
        switch viewModel.state {
        case .loading:
            return AnyView(LoadingView())
        case .error(let error):
            return AnyView(ErrorView(error: error) {
                self.viewModel.fetch()
            })
        case .noData:
            return AnyView(NoDataView() {
                self.viewModel.fetch()
            })
        case .data:
            return getDataView()
        }
    }
}
