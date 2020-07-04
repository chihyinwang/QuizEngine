//
//  Router.swift
//  QuizEngine
//
//  Created by chihyin wang on 2020/7/4.
//  Copyright © 2020 chihyinwang. All rights reserved.
//

import Foundation

public protocol Router {
    associatedtype Question: Hashable
    associatedtype Answer
    
    typealias AnswerCallback = (Answer) -> Void
    func routeTo(question: Question, answerCallback: @escaping AnswerCallback)
    func routeTo(result: Result<Question, Answer>)
}
