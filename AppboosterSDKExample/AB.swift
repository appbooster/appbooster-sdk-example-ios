//
//  AB.swift
//  AppboosterSDKExample
//
//  Created by Appbooster on 31.07.2020.
//  Copyright © 2020 Appbooster. All rights reserved.
//

import Foundation
import AppboosterSDK

struct AB {
  
  enum ButtonColor: String {
    case red
    case blue

    var color: UIColor {
      switch self {
      case .red: return .red
      case .blue: return .blue
      }
    }
  }

  static private let ab: AppboosterSDK = AppboosterSDK(
    sdkToken: "4CNBOP4RAPMM-HMY",
    appId: "653",
    defaults: [
      "buttonColor": ButtonColor.blue.rawValue
    ]
  )

  static func fetch(completion: @escaping (_ error: AppboosterABError?) -> Void) {
    ab.fetch(completion: completion)
  }

  static var experiments: [String: Any] {
    return ab.experiments
  }

  static var buttonColor: ButtonColor {
    let rawValue: String? = ab.value(#function)

    if let rawValue = rawValue,
      let buttonColor = ButtonColor(rawValue: rawValue) {
      return buttonColor
    }

    return .blue
  }

}
