//  Created by Pazylov Toichubek on 5/4/26.

import Foundation
import Combine

class SignUpViewModel: ObservableObject {
    @Published var fname: String = ""
    @Published var lname: String = ""
    @Published var mail: String = ""
    @Published var password: String = ""
}
