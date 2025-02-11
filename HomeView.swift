//
//  SwiftUIView.swift
//  CharmGuard
//
//  Created by 佐伯小遥 on 2025/02/11.
//

import SwiftUI
import AVFoundation

struct HomeView: View {
    @State private var audioPlayer: AVAudioPlayer?
    
    
    var body: some View {
        Button(action: playBuzzerSound) {
            Text("Tap")
                .font(.largeTitle)
                .bold()
                .padding()
                .frame(width: 300, height: 300)
                .foregroundColor(Color.white)
                .background(Color.yellow)
                .clipShape(Circle())
        }
    }
    
    
    func playBuzzerSound() {
        if let soundURL = Bundle.module.url(forResource: "Warning", withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.play()
            } catch {
                print("エラー: 音が再生できません")
            }
        } else {
            print("soundURLが取得できません")
        }
    }

}

#Preview {
    HomeView()
}
