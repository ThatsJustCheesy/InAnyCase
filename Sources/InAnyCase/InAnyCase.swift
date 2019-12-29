// InAnyCase: programmer case style conversion library.
// © ThatsJustCheesy, licensed under MIT License. See LICENSE.txt.

import Foundation
import Regex

extension String {
    
    public func transformed(from fromJoinStyle: JoinStyle, to toJoinStyle: JoinStyle, case: CaseStyle) -> String {
        transformed(from: [fromJoinStyle], to: toJoinStyle, case: `case`)
    }
    
    public func transformed(from fromJoinStyle: WordJoinStyle, to toJoinStyle: WordJoinStyle, case: WordCaseTransformer) -> String {
        transformed(from: [fromJoinStyle], to: toJoinStyle, case: `case`)
    }
    
    public func transformed(from fromJoinStyles: [JoinStyle], to toJoinStyle: JoinStyle, case: CaseStyle) -> String {
        transformed(from: fromJoinStyles, to: toJoinStyle, case: `case` as WordCaseTransformer)
    }
    
    public func transformed(from fromJoinStyles: [WordJoinStyle], to toJoinStyle: WordJoinStyle, case: WordCaseTransformer) -> String {
        fromJoinStyles
            .reduce([Substring(self)]) { result, style in result.flatMap { style.split($0) } }
            .enumerated()
            .map(`case`.transform(pair:))
            .joined(separator: toJoinStyle.joinSeparator)
    }
    
}

public protocol WordJoinStyle {
    
    func split(_ string: Substring) -> [Substring]
    var joinSeparator: String { get }
    
}

public enum JoinStyle: WordJoinStyle {
    
    /// camelCase
    case camel
    /// snake_case
    case snake
    /// kebab-case
    case kebab
    /// space case
    case space
    
    public func split(_ string: Substring) -> [Substring] {
        switch self {
        case .camel:
            return String(string).split(by: Regex("(?<!\\p{Lu})(?=\\p{Lu})"))
        case .snake:
            return string.split(separator: "_")
        case .kebab:
            return string.split(separator: "-")
        case .space:
            return string.split(separator: " ")
        }
    }
    
    public var joinSeparator: String {
        switch self {
        case .camel:
            return ""
        case .snake:
            return "_"
        case .kebab:
            return "-"
        case .space:
            return " "
        }
    }
}

private extension String {
    
    func split(by regex: Regex) -> [Substring] {
        split(by: regex.allMatches(in: self).map { $0.range })
    }
    
    func split(by ranges: [Range<String.Index>]) -> [Substring] {
        guard !ranges.isEmpty else {
            return [Substring(self)]
        }
        
        var result: [Substring] = []
        
        var lastRange = ranges.first!
        result.append(self[..<lastRange.lowerBound])
        for range in ranges.dropFirst() {
            result.append(self[lastRange.upperBound..<range.lowerBound])
            lastRange = range
        }
        result.append(self[lastRange.upperBound...])
        
        result.removeAll { $0.isEmpty }
        return result
    }
    
}

public protocol WordCaseTransformer {
    
    func transform(_ word: Substring, at index: Int) -> String
    
}

private extension WordCaseTransformer {
    
    func transform(pair: (index: Int, word: Substring)) -> String {
        transform(pair.word, at: pair.index)
    }
    
}

public enum CaseStyle: WordCaseTransformer {
    
    /// Preserves existing case.
    case preserve
    /// CAPSCAPSCAPS…
    case caps
    /// UpperUpperUpper…
    case upper
    /// lowerUpperUpper…
    case lowerUpper
    /// lowerlowerlower…
    case lower
    
    public func transform(_ word: Substring, at index: Int) -> String {
        transformer.transform(word, at: index)
    }
    
    private var transformer: WordCaseTransformer {
        switch self {
        case .preserve:
            return WordCaseNoOpTransformer()
        case .caps:
            return WordCaseSimpleTransformer(first: .caps, subsequent: .caps)
        case .upper:
            return WordCaseSimpleTransformer(first: .upper, subsequent: .upper)
        case .lowerUpper:
            return WordCaseSimpleTransformer(first: .lower, subsequent: .upper)
        case .lower:
            return WordCaseSimpleTransformer(first: .lower, subsequent: .lower)
        }
    }
    
}

public struct WordCaseNoOpTransformer: WordCaseTransformer {
    
    public func transform(_ word: Substring, at index: Int) -> String {
        String(word)
    }
    
}

public enum WordCase: WordCaseTransformer {
    
    /// CAPS
    case caps
    /// Upper
    case upper
    /// lower
    case lower
    
    public func transform(_ word: Substring, at index: Int) -> String {
        switch self {
        case .caps:
            return word.uppercased()
        case .upper:
            return word.capitalized // from Foundation
        case .lower:
            return word.lowercased()
        }
    }
    
}

public struct WordCaseSimpleTransformer: WordCaseTransformer {
    
    public let first: WordCaseTransformer
    public let subsequent: WordCaseTransformer
    
    public init(first: WordCase, subsequent: WordCase) {
        self.init(first: first as WordCaseTransformer, subsequent: subsequent as WordCaseTransformer)
    }
    
    public init(first: WordCaseTransformer, subsequent: WordCaseTransformer) {
        self.first = first
        self.subsequent = subsequent
    }
    
    public func transform(_ word: Substring, at index: Int) -> String {
        (index == 0 ? first : subsequent).transform(word, at: index)
    }
    
}
