enum DataFetchingViewModelState {
    case loading
    case error(Error)
    case noData
    case data
}
protocol DataFetchingViewModel {
    var state: DataFetchingViewModelState {get}
    func fetch()
}
