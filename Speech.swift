import Foundation
import AVFoundation

public class Speech {
    let synthesizer = AVSpeechSynthesizer()
    public func Speak(Text:String, Rate:Float) -> Void {
        let utterance = AVSpeechUtterance(string: Text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = Rate
        synthesizer.speak(utterance)
    }
    public func PauseSpeech() -> Void {
        synthesizer.pauseSpeaking(at: AVSpeechBoundary.immediate)
    }
   public func ResumeSpeech() -> Void {
        synthesizer.continueSpeaking()
    }
}
