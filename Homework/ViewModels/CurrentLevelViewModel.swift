import Combine
import SwiftUI

final class CurrentLevelViewModel: ObservableDataFetchingViewModel {
    @Published var state: DataFetchingViewModelState = .loading
    var currLevel: CurrentLevel?

    init() {
        fetch()
    }
    
    func fetch() {
        state = .loading
        currLevel = nil
        
        URLSession.shared.dataTaskPublisher(for: URL(string: "http://www.mocky.io/v2/5d9ceebd31000016c92fc89c")!)
        .map { $0.data }
        .decode(type: CurrentLevel.self, decoder: JSONDecoder())
        .eraseToAnyPublisher()
        .receive(on: DispatchQueue.main)
        .sink(receiveCompletion:{[weak self] completion in
            if case let .failure(error) = completion{
                self?.state = .error(error)
            }
        }) { [weak self] viewModel in
            self?.state = .data
            self?.currLevel = viewModel
        }
    }
}
