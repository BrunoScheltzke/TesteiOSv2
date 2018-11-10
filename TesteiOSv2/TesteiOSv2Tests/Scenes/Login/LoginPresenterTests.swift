//
//  LoginPresenterTests.swift
//  TesteiOSv2
//
//  Created by Bruno on 09/11/18.
//  Copyright (c) 2018 Bruno Scheltzke. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import TesteiOSv2
import XCTest

class LoginPresenterTests: XCTestCase
{
  // MARK: Subject under test
  
  var sut: LoginPresenter!
  
  // MARK: Test lifecycle
  
  override func setUp()
  {
    super.setUp()
    setupLoginPresenter()
  }
  
  override func tearDown()
  {
    super.tearDown()
  }
  
  // MARK: Test setup
  
  func setupLoginPresenter()
  {
    sut = LoginPresenter()
  }
  
  // MARK: Test doubles
  
  class LoginDisplayLogicSpy: LoginDisplayLogic
  {
    var displaySomethingCalled = false
    
    func displaySomething(viewModel: Login.Something.ViewModel)
    {
      displaySomethingCalled = true
    }
  }
  
  // MARK: Tests
  
  func testPresentSomething()
  {
    // Given
    let spy = LoginDisplayLogicSpy()
    sut.viewController = spy
    let response = Login.Something.Response()
    
    // When
    sut.presentSomething(response: response)
    
    // Then
    XCTAssertTrue(spy.displaySomethingCalled, "presentSomething(response:) should ask the view controller to display the result")
  }
}
