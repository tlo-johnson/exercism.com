// TODO: define the 'LogLevel' enum, its `init`, and its `shortFormat` method
enum LogLevel: Int {
  case trace, debug, info = 4, warning, error, fatal, unknown = 42

  init(_ log: String) {
    if log.hasPrefix("[TRC]") { self = .trace }
    else if log.hasPrefix("[DBG]") { self = .debug }
    else if log.hasPrefix("[INF]") { self = .info }
    else if log.hasPrefix("[WRN]") { self = .warning }
    else if log.hasPrefix("[ERR]") { self = .error }
    else if log.hasPrefix("[FTL]") { self = .fatal }
    else { self = .unknown }
  }

  func shortFormat(message: String) -> String {
    "\(self.rawValue):\(message)"
  }
}
