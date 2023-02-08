//
//  QuestionFactoryProtocol.swift
//  MovieQuiz
//
//  Created by Vadim Nuretdinov on 15.01.2023.
//

import Foundation

protocol QuestionFactoryProtocol {
    var delegate: QuestionFactoryDelegate? { get set }
    func requestNextQuestion()
    func loadData()
}
