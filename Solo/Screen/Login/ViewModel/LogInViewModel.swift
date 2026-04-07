//  Created by Pazylov Toichubek on 7/4/26.

import Foundation
import Combine

class LogInViewModel: ObservableObject {
    @Published var mail: String = ""
    @Published var password: String = ""
}



