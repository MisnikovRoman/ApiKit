import Foundation
import PromiseKit

public class ApiKit {
	public init() {}

	public func fetchData(from url: URL) -> Promise<Data> {
		return Promise<Data> { sink in
			URLSession.shared.dataTask(with: url) { data, _, error in
				sink.resolve(data, error)
			}
		}
	}
}
