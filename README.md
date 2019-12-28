# InAnyCase

Micro-library that converts between different identifier casing styles. e.g., "camelCasedString" → "camel\_cased\_string".

Supported join styles:

* camelStyle (`JoinStyle.camel`)
* snake\_style (`.snake`)
* kebab-style (`.kebab`)
* space style (`.space`)

Supported case styles:

* Preserve—don't modify case (`CaseStyle.preserve`)
* CAPSSTYLE (`.caps`)
* UpperStyle (`.upper`)
* lowerUpperStyle (`.lowerUpper`)
* lowerstyle (`.lower`)

You can implement extra join styles by conforming to `WordJoinStyle`: implement a split function and specify a join separator. 

You can implement extra case styles using `WordCaseSimpleTransformer` and/or `WordCaseTransformer`. `WordCaseTransformer`s transform one word at a time given the current index. `WordCaseSimpleTransformer` is an implementation of `WordCaseTransformer` that applies another `WordCaseTransformer` for the first word, and then yet another for all subsequent words. `WordCase` implements the basic CAPS, Upper and lower transformations, or you can create your own.

See tests in `Tests/InAnyCaseTests/InAnyCaseTests.swift` for usage examples.

## Licensing

Available under the MIT License. See [`LICENSE.txt`](LICENSE.txt).

This library uses [sharplet/Regex], which is also provided by its author under the MIT License.

[sharplet/Regex]: https://github.com/sharplet/Regex
