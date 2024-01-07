import Foundation
import SwiftUI

class AccountFormViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var formText: String = ""
    @Published var isValidFormText: Bool = true
    @Published var formoneText: String = ""
    @Published var isValidFormoneText: Bool = true
    @Published var formtwoText: String = ""
    @Published var isValidFormtwoText: Bool = true
    @Published var formthreeText: String = ""
    @Published var isValidFormthreeText: Bool = true
}
