//
//  Environment.swift
//
//
//  Created by Dongdong Zhang on 2022/5/22.
//

import SwiftUI

public class Environment: ObservableObject {
  public private(set) static var shared: Environment!

  public static func initialize(router: Router = Router()) -> Environment {
    if shared != nil {
      return shared
    }

    shared = Environment(router: router)
    return shared
  }

  init(router: Router) {
    self.router = router
  }

  public let router: Router
}
