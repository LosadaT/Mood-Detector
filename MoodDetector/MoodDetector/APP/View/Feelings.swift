import SwiftUI

struct Feelings: View {
    var feeling: String
    
    var color: Color{
        switch(feeling){
        case "Sadness":
            return .sadness
        case "Fear":
            return .fear
        case "Joy":
            return .joy
        case "Anger":
            return .anger
        case "Love":
            return .love
        case "Surprise":
            return .surprise
        default:
            return .fundoNeutro
        }
    }
    
    var text: String{
        switch(feeling){
            case "Sadness":
                return "I see you may look a bit sad recently, but don't worry baby, be happy!"
            case "Fear":
                return "When the night comes and fear hit on your door, you can call miqueias, he will certainly protect you and all your family"
            case "Joy":
                return "Feeling happy lately? enjoy the moment because i guarantee to you that it's gonna be over soon"
            case "Anger":
                return "Everytime you feel mad about something, remember that someone is flirting on linkedin"
            case "Love":
                return "you dont know how to talk to someone, remember, linkend is always there for you!"
            case "Surprise":
                return "I've been cut from teams, an illegal immigrant, had family problems, low grades in college, broken bones, been kicked out of the Brazilian National Team, fired from a national broadcaster, rejected by publishers... what for many people would be the end, for me was just a bump in the road."
            default:
                return "That's all for our creativity"
        }
    }
    
    var body: some View {
        ZStack(){
            BackgroundFeeling(backgroundColor: color)
            VStack{
                Image(feeling)
                    .resizable()
                    .frame(width: 230, height: 230)
                    .foregroundColor(.white)
                    .opacity(0.3)
                    .padding()
                Text(braileConvert(texto: text))
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .opacity(0.3))
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    Feelings(feeling: "Fear")
}
