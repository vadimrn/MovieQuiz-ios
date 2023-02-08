//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by Vadim Nuretdinov on 16.01.2023.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didRecieveNextQuestion(question: QuizQuestion?)
    func didLoadDataFromServer() // сообщение об успешной загрузке
    func didFailToLoadData(with error: Error) // сообщение об ошибке загрузки
    }
