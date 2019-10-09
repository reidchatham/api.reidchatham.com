import Vapor
import Leaf
import Authentication
import FluentPostgreSQL

/// Called before your application initializes.
public func configure(_ config: inout Config, _ env: inout Environment, _ services: inout Services) throws {

    // Register routes to the router
    let router = EngineRouter.default()
    try routes(router)
    services.register(router, as: Router.self)

    // Register providers first
    let leafProvider = LeafProvider()
    try services.register(leafProvider)
    try services.register(FluentPostgreSQLProvider())
    config.prefer(LeafRenderer.self, for: ViewRenderer.self)

    // Configure a PostgreSQL database
    let pgConfig = PostgreSQLDatabaseConfig(
        hostname: Environment.get("POSTGRES_HOST") ?? "127.0.0.1",
        port: {
                if let param = Environment.get("POSTGRES_PORT"), let newPort = Int(param) {
                    return newPort
                } else {
                    return 5432
                }
            }(),
        username: Environment.get("POSTGRES_USER") ?? "test",
        database: Environment.get("POSTGRES_DB") ?? "test",
        password: Environment.get("POSTGRES_PASSWORD")
    )
    let pgsql = PostgreSQLDatabase(config: pgConfig)

    // Register the configured PostgreSQL database to the database config.
    var databases = DatabasesConfig()
    databases.add(database: pgsql, as: .psql)
    services.register(databases)

    // Configure migrations
    var migrations = MigrationConfig()
    migrations.add(model: Todo.self, database: .psql)
    migrations.add(model: User.self, database: .psql)  // changed
    services.register(migrations)

    try services.register(AuthenticationProvider())

    // Register middleware
    var middlewares = MiddlewareConfig.default() // Create _empty_ middleware config
    // middlewares.use(FileMiddleware.self) // Serves files from `Public/` directory
    middlewares.use(ErrorMiddleware.self) // Catches errors and converts to HTTP response
    middlewares.use(SessionsMiddleware.self)
    services.register(middlewares)

    config.prefer(MemoryKeyedCache.self, for: KeyedCache.self)

    let nio = NIOServerConfig.default(port: {
            if let param = Environment.get("EXPOSED_PORT"), let newPort = Int(param) {
                return newPort
            } else {
                return 8080
            }
        }())
    services.register(nio)
}
