enum DataError : Error {
    case invalidResponse
    case invalidURL
    case invalidDecoding
    case invalidData
    case network(Error?)
}

