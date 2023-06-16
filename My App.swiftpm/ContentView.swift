import Subsonic
import SwiftUI

struct ContentView: View {
    let names = ["IPad", "IPhone", "Mac", "Watch"]
    let coloums = [
        GridItem(.adaptive(minimum: 250))
        ]
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: coloums){
                    ForEach(names, id: \.self) { name in 
                        Button{
                            play(sound: "\(name).mp3")
                        } label: {
                            Image(name)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(25)
                                .padding(.horizontal)
                        }
                    }  
                }
            }
            .navigationTitle("Friendface")
        }
        .navigationViewStyle(.stack)
    }
}
