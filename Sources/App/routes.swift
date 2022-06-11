import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "develop in 🇩🇪"
    }

    app.get("hallo") { req -> String in
        return "Hallo!!"
    }

    app.get("fibo") { req -> String in
        fibo()
    }

    func fibo(_ i: Int = 100) -> String {
        var result = ""
        var m = 1
        var n = 1
        for num in 1...i {
            if num == 1 { 
                result += " \(m)" 
            } else if num == 2 {
                result += " \(n)"
            } else {
                let o = m + n
                result += " \(o)"
                m = n
                n = 0
            }
        }

        return result
    }
}
