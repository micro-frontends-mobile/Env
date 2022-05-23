//
//  Env.swift
//
//
//  Created by Dongdong Zhang on 2022/5/22.
//

import SwiftUI

public class Env: ObservableObject {
  public private(set) static var shared: Env!

  public static func initialize(router: Router = Router(), configuration: Configuration = Configuration()) -> Env {
    if shared != nil {
      return shared
    }

    shared = Env(router: router, configuration: configuration)
    return shared
  }

  init(router: Router, configuration: Configuration) {
    self.router = router
    self.configuration = configuration
  }

  public let router: Router
  public let configuration: Configuration
}
