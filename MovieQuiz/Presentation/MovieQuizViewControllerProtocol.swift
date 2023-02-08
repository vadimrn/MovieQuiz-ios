//
//  MovieQuizViewControllerProtocol.swift
//  MovieQuiz
//
//  Created by Vadim Nuretdinov on 01.02.2023.
//

import Foundation

protocol MovieQuizViewControllerProtocol: AnyObject {
    func show(quiz step:QuizStepViewModel)
    func showAlert(quiz result: QuizResultsViewModel)
    
    func highlightImageBorder(isCorrect: Bool)
    
    func showLoadingIndicator()
    func hideLoadingIndicator()
    
    func showNetworkError(message: String)
    func enableButtons()
    
    }

