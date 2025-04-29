import SwiftUI

struct BackgroundFeeling: View {
    var backgroundColor: Color
    
    var body: some View {
        VStack{
            LinearGradient(
                colors: [backgroundColor],
                startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    BackgroundFeeling(backgroundColor: .sadness)
}
