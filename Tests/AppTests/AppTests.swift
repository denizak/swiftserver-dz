@testable import App
import XCTVapor

final class AppTests: XCTestCase {
    func testHelloWorld() throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try configure(app)

        try app.test(.GET, "hallo", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(res.body.string, "Hallo!!")
        })
    }

    func testFibo() throws {
       let app = Application(.testing)
        defer { app.shutdown() }
        try configure(app)

        try app.test(.GET, "fibo/7", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(res.body.string, " 1 1 2 3 5 8 13")
        }) 
    }
}
