import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ApiKitTests.allTests),
    ]
}
#endif