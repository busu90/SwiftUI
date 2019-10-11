import SwiftUI

struct ReferalCellView: View {
    var count: Int
    var body: some View {
        HStack {
            Text("Friends Invited")
                .font(.system(size: 20))
                .bold()
            Spacer()
            Text("\(count)")
                .font(.system(size: 20))
                .foregroundColor(.gray)
                .bold()
        }.padding()
    }
}

#if DEBUG
struct ReferalCellView_Previews: PreviewProvider {
    static var previews: some View {
        ReferalCellView(count: 3)
    }
}
#endif

