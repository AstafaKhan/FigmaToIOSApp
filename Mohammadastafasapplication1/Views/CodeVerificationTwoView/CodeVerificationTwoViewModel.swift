import Foundation
import SwiftUI

class CodeVerificationTwoViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var otpviewOTP1: String = ""
}
