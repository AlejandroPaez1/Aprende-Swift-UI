import SwiftUI

@main
struct MyApp: App {
    
    @Environment(\.scenePhase) private var scenePhase

    init(){
        inicio()
    }
    
    var body: some Scene {

        WindowGroup {
            ContentView()
           // pantallaCarga()
        }.onChange(of: scenePhase) { (phase) in
            switch phase{
            case.active:
                print("esta activo")
            case.inactive:
                print("esta inactivo")
            case.background:
                print("Esta background")

            @unknown default:
                print("algo salio mal")
            }
        }

  
    }
}

func inicio(){
    print("el primero en ejecutarse")
}
