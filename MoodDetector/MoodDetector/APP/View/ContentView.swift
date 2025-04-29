import SwiftUI
import PhotosUI

struct ContentView: View {
    @State public var submitted: Bool = false
    
    @State private var textFeeling: String = ""
    @State private var feeling: String = ""
    
    var coreMLViewModel = CoreMLViewModel()
    
    var body: some View{
        NavigationStack{
            VStack{
                Text("Mood Detector")
                    .font(.custom("Roboto", size: 42))
                    .fontWeight(.bold)
                    .padding(.top, 50)
                    .foregroundColor(.black)
                Spacer()
                Image(systemName: "smiley")
                    .font(.system(size: 250))
                    .foregroundColor(.gray)
                Spacer()
                Text("How are you feeling?")
                    .font(.custom("Roboto", size: 30))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                
                HStack{
                    TextField("Type here...", text: $textFeeling)
                        .bold()
                        .onSubmit {
                            feeling = coreMLViewModel.textClassifier(textFeeling)
                            submitted = true
                        }
                        .submitLabel(.done)
                        .padding()
                        .background(.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .shadow(radius: 100)
                    //Maneira antiga de se declarar
                    NavigationLink("", destination: Feelings(feeling: feeling), isActive: $submitted)
                }
            }
            .padding(.horizontal)
            .background(.fundoNeutro)
        }
    }
}

#Preview {
    ContentView()
}

