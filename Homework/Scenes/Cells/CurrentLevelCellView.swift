import SwiftUI

struct CurrentLevelCellView: View {
    var title: String
    var body: some View {
        HStack {
            Text("Current level")
                .font(.system(size: 20))
                .bold()
            Spacer()
            Text(title)
                .font(.system(size: 20))
                .foregroundColor(.gray)
        }.padding()
    }
}

#if DEBUG
struct CurrentLevelCellView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentLevelCellView(title: "Do something")
    }
}
#endif

