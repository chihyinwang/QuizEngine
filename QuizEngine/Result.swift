//
//  Result.swift
//  QuizEngine
//
//  Created by chihyin wang on 2020/7/4.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

struct Result <Question: Hashable, Answer> {
    let answers: [Question: Answer]
    let score: Int
}
