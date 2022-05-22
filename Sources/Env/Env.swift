//
//  Env.swift
//
//
//  Created by Dongdong Zhang on 2022/5/22.
//

import SwiftUI

public class Env: ObservableObject {
  public private(set) static var shared: Env!

  public static func initialize(router: Router = Router()) -> Env {
    if shared != nil {
      return shared
    }

    shared = Env(router: router)
    return shared
  }

  init(router: Router) {
    self.router = router
  }

  public let router: Router
}
