//
//  ViewController.swift
//  AppboosterSDKExample
//
//  Created by Appbooster on 31.07.2020.
//  Copyright © 2020 Appbooster. All rights reserved.
//

import UIKit
import AppboosterSDK

class ViewController: UIViewController {

  @IBOutlet private weak var button: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()

    AB.fetch { abError in
      if let error = abError {
        print(error.error)
        // log error
        // send error to analytics
      } else {
        // send to analytics user experiments values: AB.experiments
      }

      self.button.backgroundColor = AB.buttonColor.color
    }
  }

}
