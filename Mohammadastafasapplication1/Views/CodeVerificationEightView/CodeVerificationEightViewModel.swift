import Foundation
import SwiftUI

class CodeVerificationEightViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var selectedText: String = ""
    @Published var notselectedText: String = ""
    @Published var selectedoneText: String = ""
    @Published var notselectedoneText: String = ""
}
