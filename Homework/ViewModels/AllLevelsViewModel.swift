import Combine
import SwiftUI

final class AllLevelsViewModel: ObservableDataFetchingViewModel {
    @Published var state: DataFetchingViewModelState = .loading
    var levels: [StatefullLevel] = []
    
    init() {
        fetch()
    }
    
    func fetch() {
        state = .loading
        levels = []
        
        URLSession.shared.dataTaskPublisher(for: URL(string: "http://www.mocky.io/v2/5d9ceeee3100009ea42fc89d")!)
        .map { $0.data }
        .decode(type: [StatefullLevel].self, decoder: JSONDecoder())
        .eraseToAnyPublisher()
        .receive(on: DispatchQueue.main)
        .sink(receiveCompletion:{[weak self] completion in
             if case let .failure(error) = completion{
                 self?.state = .error(error)
             }
        }) { [weak self] viewModel in
            if viewModel.isEmpty {
                self?.state = .noData
            } else {
                self?.state = .data
            }
            self?.levels = viewModel
        }
    }
}
