import XCTest
@testable import ViewModelExample

final class ViewModelExampleTests: XCTestCase {
    func testViewModel() throws {
        let viewModel = ContentViewModel(title: "Test")

        XCTAssertEqual(viewModel.title, "Test")

        viewModel.welcomeAction()

        XCTAssertEqual(viewModel.title, "Welcome Test")

        viewModel.welcomeAction()

        XCTAssertEqual(viewModel.title, "Welcome Welcome Test")
    }
}
