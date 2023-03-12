import SwiftUI

// The notification we'll send when a shake gesture happens.
extension UIDevice {
    static let deviceDidShakeNotification = Notification.Name(rawValue: "deviceDidShakeNotification")
}

//  Override the default behavior of shake gestures to send our notification instead.
extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            NotificationCenter.default.post(name: UIDevice.deviceDidShakeNotification, object: nil)
        }
    }
}

// A view modifier that detects shaking and calls a function of our choosing.
struct DeviceShakeViewModifier: ViewModifier {
    let action: () -> Void
    
    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.deviceDidShakeNotification)) { _ in
                action()
            }
    }
}

// A View extension to make the modifier easier to use.
extension View {
    func onShake(perform action: @escaping () -> Void) -> some View {
        self.modifier(DeviceShakeViewModifier(action: action))
    }
}

struct ContentView: View {
    @State var poke: CardModel? = DataSource.getCard(id: "pikachu");
    
    var body: some View {
            VStack(spacing: 20) {
                Text(poke!.title)
                    .font(.system(size: 60))
                    .foregroundColor(.black)
                Image(poke!.imageName)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .padding(10)
                    
                .cornerRadius(20, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                Text(poke!.text)
                    .font(.system(size: 24))
                    .padding(10)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(20, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .overlay( /// apply a rounded border
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.black, lineWidth: 5)
                    )                    
                    .frame(width: 270, height: 300, alignment: .center)
                    .onShake {
                        self.poke = chooseRandomPoke()
                    }
                         
                Text("Shake to change!")
                    .font(.system(size: 16))
                    .foregroundColor(.black)
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .center
            )
            .background(Image(poke!.backgroundImageName).resizable())
    }
    
    
    var images = ["pikachu", "charmander", "squirtle", "bulbasaur", "nidoran", "kingler", "magmar", "tangela", "electabuzz", "vaporeon", "machamp", "alakazam", "pinsir"]
    
    func chooseRandomPoke() -> CardModel {
        let array = images
        
        let result = array.randomElement()!
        
        return DataSource.getCard(id: result)
    }
}
