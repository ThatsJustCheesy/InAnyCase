import XCTest
@testable import InAnyCase

final class InAnyCaseTests: XCTestCase {
    
    func test_toCamel_casePreserve() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .camel, case: .preserve), "camelStyle")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .camel, case: .preserve), "superLongCamelStyle")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .camel, case: .preserve), "SuperLongCamelStyle")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .camel, case: .preserve), "snakestyle")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .camel, case: .preserve), "superlongsnakestyle")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .camel, case: .preserve), "SUPERLONGSNAKESTYLE")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .camel, case: .preserve), "kebabstyle")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .camel, case: .preserve), "superlongkebabstyle")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .camel, case: .preserve), "SUPERLONGKEBABSTYLE")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .camel, case: .preserve), "spacestyle")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .camel, case: .preserve), "superlongspacestyle")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .camel, case: .preserve), "SUPERLONGSPACESTYLE")
    }
    
    func test_toSnake_casePreserve() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .snake, case: .preserve), "camel_Style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .snake, case: .preserve), "super_Long_Camel_Style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .snake, case: .preserve), "Super_Long_Camel_Style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .snake, case: .preserve), "snake_style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .snake, case: .preserve), "super_long_snake_style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .snake, case: .preserve), "SUPER_LONG_SNAKE_STYLE")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .snake, case: .preserve), "kebab_style")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .snake, case: .preserve), "super_long_kebab_style")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .snake, case: .preserve), "SUPER_LONG_KEBAB_STYLE")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .snake, case: .preserve), "space_style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .snake, case: .preserve), "super_long_space_style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .snake, case: .preserve), "SUPER_LONG_SPACE_STYLE")
    }
    
    func test_toKebab_casePreserve() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .kebab, case: .preserve), "camel-Style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .kebab, case: .preserve), "super-Long-Camel-Style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .kebab, case: .preserve), "Super-Long-Camel-Style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .kebab, case: .preserve), "snake-style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .kebab, case: .preserve), "super-long-snake-style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .kebab, case: .preserve), "SUPER-LONG-SNAKE-STYLE")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .kebab, case: .preserve), "kebab-style")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .kebab, case: .preserve), "super-long-kebab-style")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .kebab, case: .preserve), "SUPER-LONG-KEBAB-STYLE")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .kebab, case: .preserve), "space-style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .kebab, case: .preserve), "super-long-space-style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .kebab, case: .preserve), "SUPER-LONG-SPACE-STYLE")
    }
    
    func test_toSpace_casePreserve() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .space, case: .preserve), "camel Style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .space, case: .preserve), "super Long Camel Style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .space, case: .preserve), "Super Long Camel Style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .space, case: .preserve), "snake style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .space, case: .preserve), "super long snake style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .space, case: .preserve), "SUPER LONG SNAKE STYLE")
        
        XCTAssertEqual("kebab style".transformed(from: .kebab, to: .space, case: .preserve), "kebab style")
        XCTAssertEqual("super long kebab style".transformed(from: .kebab, to: .space, case: .preserve), "super long kebab style")
        XCTAssertEqual("SUPER LONG KEBAB STYLE".transformed(from: .kebab, to: .space, case: .preserve), "SUPER LONG KEBAB STYLE")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .space, case: .preserve), "space style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .space, case: .preserve), "super long space style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .space, case: .preserve), "SUPER LONG SPACE STYLE")
    }
    
    func test_toCamel_caseCaps() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .camel, case: .caps), "CAMELSTYLE")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .camel, case: .caps), "SUPERLONGCAMELSTYLE")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .camel, case: .caps), "SUPERLONGCAMELSTYLE")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .camel, case: .caps), "SNAKESTYLE")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .camel, case: .caps), "SUPERLONGSNAKESTYLE")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .camel, case: .caps), "SUPERLONGSNAKESTYLE")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .camel, case: .caps), "KEBABSTYLE")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .camel, case: .caps), "SUPERLONGKEBABSTYLE")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .camel, case: .caps), "SUPERLONGKEBABSTYLE")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .camel, case: .caps), "SPACESTYLE")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .camel, case: .caps), "SUPERLONGSPACESTYLE")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .camel, case: .caps), "SUPERLONGSPACESTYLE")
    }
    
    func test_toSnake_caseCaps() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .snake, case: .caps), "CAMEL_STYLE")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .snake, case: .caps), "SUPER_LONG_CAMEL_STYLE")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .snake, case: .caps), "SUPER_LONG_CAMEL_STYLE")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .snake, case: .caps), "SNAKE_STYLE")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .snake, case: .caps), "SUPER_LONG_SNAKE_STYLE")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .snake, case: .caps), "SUPER_LONG_SNAKE_STYLE")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .snake, case: .caps), "KEBAB_STYLE")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .snake, case: .caps), "SUPER_LONG_KEBAB_STYLE")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .snake, case: .caps), "SUPER_LONG_KEBAB_STYLE")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .snake, case: .caps), "SPACE_STYLE")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .snake, case: .caps), "SUPER_LONG_SPACE_STYLE")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .snake, case: .caps), "SUPER_LONG_SPACE_STYLE")
    }
    
    func test_toKebab_caseCaps() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .kebab, case: .caps), "CAMEL-STYLE")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .kebab, case: .caps), "SUPER-LONG-CAMEL-STYLE")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .kebab, case: .caps), "SUPER-LONG-CAMEL-STYLE")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .kebab, case: .caps), "SNAKE-STYLE")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .kebab, case: .caps), "SUPER-LONG-SNAKE-STYLE")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .kebab, case: .caps), "SUPER-LONG-SNAKE-STYLE")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .kebab, case: .caps), "KEBAB-STYLE")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .kebab, case: .caps), "SUPER-LONG-KEBAB-STYLE")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .kebab, case: .caps), "SUPER-LONG-KEBAB-STYLE")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .kebab, case: .caps), "SPACE-STYLE")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .kebab, case: .caps), "SUPER-LONG-SPACE-STYLE")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .kebab, case: .caps), "SUPER-LONG-SPACE-STYLE")
    }
    
    func test_toSpace_caseCaps() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .space, case: .caps), "CAMEL STYLE")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .space, case: .caps), "SUPER LONG CAMEL STYLE")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .space, case: .caps), "SUPER LONG CAMEL STYLE")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .space, case: .caps), "SNAKE STYLE")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .space, case: .caps), "SUPER LONG SNAKE STYLE")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .space, case: .caps), "SUPER LONG SNAKE STYLE")
        
        XCTAssertEqual("kebab style".transformed(from: .kebab, to: .space, case: .caps), "KEBAB STYLE")
        XCTAssertEqual("super long kebab style".transformed(from: .kebab, to: .space, case: .caps), "SUPER LONG KEBAB STYLE")
        XCTAssertEqual("SUPER LONG KEBAB STYLE".transformed(from: .kebab, to: .space, case: .caps), "SUPER LONG KEBAB STYLE")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .space, case: .caps), "SPACE STYLE")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .space, case: .caps), "SUPER LONG SPACE STYLE")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .space, case: .caps), "SUPER LONG SPACE STYLE")
    }
    
    func test_toCamel_caseUpper() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .camel, case: .upper), "CamelStyle")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .camel, case: .upper), "SuperLongCamelStyle")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .camel, case: .upper), "SuperLongCamelStyle")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .camel, case: .upper), "SnakeStyle")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .camel, case: .upper), "SuperLongSnakeStyle")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .camel, case: .upper), "SuperLongSnakeStyle")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .camel, case: .upper), "KebabStyle")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .camel, case: .upper), "SuperLongKebabStyle")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .camel, case: .upper), "SuperLongKebabStyle")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .camel, case: .upper), "SpaceStyle")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .camel, case: .upper), "SuperLongSpaceStyle")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .camel, case: .upper), "SuperLongSpaceStyle")
    }
    
    func test_toSnake_caseUpper() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .snake, case: .upper), "Camel_Style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .snake, case: .upper), "Super_Long_Camel_Style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .snake, case: .upper), "Super_Long_Camel_Style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .snake, case: .upper), "Snake_Style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .snake, case: .upper), "Super_Long_Snake_Style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .snake, case: .upper), "Super_Long_Snake_Style")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .snake, case: .upper), "Kebab_Style")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .snake, case: .upper), "Super_Long_Kebab_Style")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .snake, case: .upper), "Super_Long_Kebab_Style")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .snake, case: .upper), "Space_Style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .snake, case: .upper), "Super_Long_Space_Style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .snake, case: .upper), "Super_Long_Space_Style")
    }
    
    func test_toKebab_caseUpper() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .kebab, case: .upper), "Camel-Style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .kebab, case: .upper), "Super-Long-Camel-Style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .kebab, case: .upper), "Super-Long-Camel-Style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .kebab, case: .upper), "Snake-Style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .kebab, case: .upper), "Super-Long-Snake-Style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .kebab, case: .upper), "Super-Long-Snake-Style")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .kebab, case: .upper), "Kebab-Style")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .kebab, case: .upper), "Super-Long-Kebab-Style")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .kebab, case: .upper), "Super-Long-Kebab-Style")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .kebab, case: .upper), "Space-Style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .kebab, case: .upper), "Super-Long-Space-Style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .kebab, case: .upper), "Super-Long-Space-Style")
    }
    
    func test_toSpace_caseUpper() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .space, case: .upper), "Camel Style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .space, case: .upper), "Super Long Camel Style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .space, case: .upper), "Super Long Camel Style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .space, case: .upper), "Snake Style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .space, case: .upper), "Super Long Snake Style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .space, case: .upper), "Super Long Snake Style")
        
        XCTAssertEqual("kebab style".transformed(from: .kebab, to: .space, case: .upper), "Kebab Style")
        XCTAssertEqual("super long kebab style".transformed(from: .kebab, to: .space, case: .upper), "Super Long Kebab Style")
        XCTAssertEqual("SUPER LONG KEBAB STYLE".transformed(from: .kebab, to: .space, case: .upper), "Super Long Kebab Style")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .space, case: .upper), "Space Style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .space, case: .upper), "Super Long Space Style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .space, case: .upper), "Super Long Space Style")
    }
    
    func test_toCamel_caseLowerUpper() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .camel, case: .lowerUpper), "camelStyle")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .camel, case: .lowerUpper), "superLongCamelStyle")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .camel, case: .lowerUpper), "superLongCamelStyle")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .camel, case: .lowerUpper), "snakeStyle")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .camel, case: .lowerUpper), "superLongSnakeStyle")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .camel, case: .lowerUpper), "superLongSnakeStyle")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .camel, case: .lowerUpper), "kebabStyle")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .camel, case: .lowerUpper), "superLongKebabStyle")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .camel, case: .lowerUpper), "superLongKebabStyle")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .camel, case: .lowerUpper), "spaceStyle")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .camel, case: .lowerUpper), "superLongSpaceStyle")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .camel, case: .lowerUpper), "superLongSpaceStyle")
    }
    
    func test_toSnake_caseLowerUpper() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .snake, case: .lowerUpper), "camel_Style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .snake, case: .lowerUpper), "super_Long_Camel_Style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .snake, case: .lowerUpper), "super_Long_Camel_Style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .snake, case: .lowerUpper), "snake_Style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .snake, case: .lowerUpper), "super_Long_Snake_Style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .snake, case: .lowerUpper), "super_Long_Snake_Style")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .snake, case: .lowerUpper), "kebab_Style")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .snake, case: .lowerUpper), "super_Long_Kebab_Style")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .snake, case: .lowerUpper), "super_Long_Kebab_Style")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .snake, case: .lowerUpper), "space_Style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .snake, case: .lowerUpper), "super_Long_Space_Style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .snake, case: .lowerUpper), "super_Long_Space_Style")
    }
    
    func test_toKebab_caseLowerUpper() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .kebab, case: .lowerUpper), "camel-Style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .kebab, case: .lowerUpper), "super-Long-Camel-Style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .kebab, case: .lowerUpper), "super-Long-Camel-Style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .kebab, case: .lowerUpper), "snake-Style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .kebab, case: .lowerUpper), "super-Long-Snake-Style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .kebab, case: .lowerUpper), "super-Long-Snake-Style")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .kebab, case: .lowerUpper), "kebab-Style")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .kebab, case: .lowerUpper), "super-Long-Kebab-Style")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .kebab, case: .lowerUpper), "super-Long-Kebab-Style")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .kebab, case: .lowerUpper), "space-Style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .kebab, case: .lowerUpper), "super-Long-Space-Style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .kebab, case: .lowerUpper), "super-Long-Space-Style")
    }
    
    func test_toSpace_caseLowerUpper() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .space, case: .lowerUpper), "camel Style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .space, case: .lowerUpper), "super Long Camel Style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .space, case: .lowerUpper), "super Long Camel Style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .space, case: .lowerUpper), "snake Style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .space, case: .lowerUpper), "super Long Snake Style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .space, case: .lowerUpper), "super Long Snake Style")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .space, case: .lowerUpper), "kebab Style")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .space, case: .lowerUpper), "super Long Kebab Style")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .space, case: .lowerUpper), "super Long Kebab Style")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .space, case: .lowerUpper), "space Style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .space, case: .lowerUpper), "super Long Space Style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .space, case: .lowerUpper), "super Long Space Style")
    }
    
    func test_toCamel_caseLower() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .camel, case: .lower), "camelstyle")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .camel, case: .lower), "superlongcamelstyle")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .camel, case: .lower), "superlongcamelstyle")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .camel, case: .lower), "snakestyle")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .camel, case: .lower), "superlongsnakestyle")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .camel, case: .lower), "superlongsnakestyle")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .camel, case: .lower), "kebabstyle")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .camel, case: .lower), "superlongkebabstyle")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .camel, case: .lower), "superlongkebabstyle")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .camel, case: .lower), "spacestyle")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .camel, case: .lower), "superlongspacestyle")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .camel, case: .lower), "superlongspacestyle")
    }
    
    func test_toSnake_caseLower() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .snake, case: .lower), "camel_style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .snake, case: .lower), "super_long_camel_style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .snake, case: .lower), "super_long_camel_style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .snake, case: .lower), "snake_style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .snake, case: .lower), "super_long_snake_style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .snake, case: .lower), "super_long_snake_style")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .snake, case: .lower), "kebab_style")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .snake, case: .lower), "super_long_kebab_style")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .snake, case: .lower), "super_long_kebab_style")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .snake, case: .lower), "space_style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .snake, case: .lower), "super_long_space_style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .snake, case: .lower), "super_long_space_style")
    }
    
    func test_toKebab_caseLower() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .kebab, case: .lower), "camel-style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .kebab, case: .lower), "super-long-camel-style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .kebab, case: .lower), "super-long-camel-style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .kebab, case: .lower), "snake-style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .kebab, case: .lower), "super-long-snake-style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .kebab, case: .lower), "super-long-snake-style")
        
        XCTAssertEqual("kebab-style".transformed(from: .kebab, to: .kebab, case: .lower), "kebab-style")
        XCTAssertEqual("super-long-kebab-style".transformed(from: .kebab, to: .kebab, case: .lower), "super-long-kebab-style")
        XCTAssertEqual("SUPER-LONG-KEBAB-STYLE".transformed(from: .kebab, to: .kebab, case: .lower), "super-long-kebab-style")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .kebab, case: .lower), "space-style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .kebab, case: .lower), "super-long-space-style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .kebab, case: .lower), "super-long-space-style")
    }
    
    func test_toSpace_caseLower() {
        XCTAssertEqual("camelStyle".transformed(from: .camel, to: .space, case: .lower), "camel style")
        XCTAssertEqual("superLongCamelStyle".transformed(from: .camel, to: .space, case: .lower), "super long camel style")
        XCTAssertEqual("SuperLongCamelStyle".transformed(from: .camel, to: .space, case: .lower), "super long camel style")
        
        XCTAssertEqual("snake_style".transformed(from: .snake, to: .space, case: .lower), "snake style")
        XCTAssertEqual("super_long_snake_style".transformed(from: .snake, to: .space, case: .lower), "super long snake style")
        XCTAssertEqual("SUPER_LONG_SNAKE_STYLE".transformed(from: .snake, to: .space, case: .lower), "super long snake style")
        
        XCTAssertEqual("kebab style".transformed(from: .kebab, to: .space, case: .lower), "kebab style")
        XCTAssertEqual("super long kebab style".transformed(from: .kebab, to: .space, case: .lower), "super long kebab style")
        XCTAssertEqual("SUPER LONG KEBAB STYLE".transformed(from: .kebab, to: .space, case: .lower), "super long kebab style")
        
        XCTAssertEqual("space style".transformed(from: .space, to: .space, case: .lower), "space style")
        XCTAssertEqual("super long  space  style".transformed(from: .space, to: .space, case: .lower), "super long space style")
        XCTAssertEqual("SUPER LONG  SPACE  STYLE".transformed(from: .space, to: .space, case: .lower), "super long space style")
    }
    
    func test_fromMixed() {
        XCTAssertEqual("camelStyle_and_also_snakeStyle".transformed(from: [.camel, .snake], to: .camel, case: .lowerUpper), "camelStyleAndAlsoSnakeStyle")
        XCTAssertEqual("snake_kebab-and_also space-style".transformed(from: [.snake, .kebab, .space], to: .camel, case: .upper), "SnakeKebabAndAlsoSpaceStyle")
        XCTAssertEqual("all the styles: camelStyle snake_style kebab-style space style".transformed(from: [.camel, .snake, .kebab, .space], to: .camel, case: .lowerUpper), "allTheStyles:CamelStyleSnakeStyleKebabStyleSpaceStyle")
        
        XCTAssertEqual("camelStyle_and_also_snakeStyle".transformed(from: [.camel, .snake], to: .snake, case: .lower), "camel_style_and_also_snake_style")
        XCTAssertEqual("snake_kebab-and_also space-style".transformed(from: [.snake, .kebab, .space], to: .snake, case: .upper), "Snake_Kebab_And_Also_Space_Style")
        XCTAssertEqual("all the styles: camelStyle snake_style kebab-style space style".transformed(from: [.camel, .snake, .kebab, .space], to: .snake, case: .lower), "all_the_styles:_camel_style_snake_style_kebab_style_space_style")
        
        XCTAssertEqual("camelStyle_and_also_snakeStyle".transformed(from: [.camel, .snake], to: .kebab, case: .lower), "camel-style-and-also-snake-style")
        XCTAssertEqual("snake_kebab-and_also space-style".transformed(from: [.snake, .kebab, .space], to: .kebab, case: .upper), "Snake-Kebab-And-Also-Space-Style")
        XCTAssertEqual("all the styles: camelStyle snake_style kebab-style space style".transformed(from: [.camel, .snake, .kebab, .space], to: .kebab, case: .lower), "all-the-styles:-camel-style-snake-style-kebab-style-space-style")
        
        XCTAssertEqual("camelStyle_and_also_snakeStyle".transformed(from: [.camel, .snake], to: .space, case: .lower), "camel style and also snake style")
        XCTAssertEqual("snake_kebab-and_also space-style".transformed(from: [.snake, .kebab, .space], to: .space, case: .upper), "Snake Kebab And Also Space Style")
        XCTAssertEqual("all the styles: camelStyle snake_style kebab-style space style".transformed(from: [.camel, .snake, .kebab, .space], to: .space, case: .lower), "all the styles: camel style snake style kebab style space style")
    }
    
    static var allTests = [
        ("test_toCamel_casePreserve", test_toCamel_casePreserve),
        ("test_toSnake_casePreserve", test_toSnake_casePreserve),
        ("test_toKebab_casePreserve", test_toKebab_casePreserve),
        ("test_toSpace_casePreserve", test_toSpace_casePreserve),
        ("test_toCamel_caseCaps", test_toCamel_caseCaps),
        ("test_toSnake_caseCaps", test_toSnake_caseCaps),
        ("test_toKebab_caseCaps", test_toKebab_caseCaps),
        ("test_toSpace_caseCaps", test_toSpace_caseCaps),
        ("test_toCamel_caseUpper", test_toCamel_caseUpper),
        ("test_toSnake_caseUpper", test_toSnake_caseUpper),
        ("test_toKebab_caseUpper", test_toKebab_caseUpper),
        ("test_toSpace_caseUpper", test_toSpace_caseUpper),
        ("test_toCamel_caseLowerUpper", test_toCamel_caseLowerUpper),
        ("test_toSnake_caseLowerUpper", test_toSnake_caseLowerUpper),
        ("test_toKebab_caseLowerUpper", test_toKebab_caseLowerUpper),
        ("test_toSpace_caseLowerUpper", test_toSpace_caseLowerUpper),
        ("test_toCamel_caseLower", test_toCamel_caseLower),
        ("test_toSnake_caseLower", test_toSnake_caseLower),
        ("test_toKebab_caseLower", test_toKebab_caseLower),
        ("test_toSpace_caseLower", test_toSpace_caseLower),
        ("test_fromMixed", test_fromMixed),
    ]
    
}
