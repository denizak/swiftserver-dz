import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "develop in 🇩🇪"
    }

    app.get("hallo") { req -> String in
        return "Hallo!!"
    }
}
