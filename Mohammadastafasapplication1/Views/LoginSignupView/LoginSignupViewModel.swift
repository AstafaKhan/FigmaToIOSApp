import Foundation
import SwiftUI

class LoginSignupViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formText: String = ""
    @Published var isValidFormText: Bool = true
}
