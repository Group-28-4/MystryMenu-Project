::: mermaid
erDiagram
    Users {
        INT user_id PK
        VARCHAR firstName
        VARCHAR lastName
        enum gender "Male, Female"
        enum profession "Chef, Baker, Cake Decorator, Bartender"
        VARCHAR email "user email"
        VARCHAR password
        enum usertype "Admin, User"
        VARCHAR user_pic
    }
    
    Recipe {
        INT  recipe_id PK
        VARCHAR name
        enum type "Breakfast, Lunch, Dinner, Vegetarian, Sweets, Drinks, Cakes"
        TEXT ingredient
        TEXT method
        VARCHAR image
        UUID user_id FK
    }
    
    Comments {
        INT commentid PK
        UUID user_id FK
        UUID recipe_id FK
        TEXT comment
    }
    
    SaveRecipe {
        INT recipe_id FK
        INT user_id FK
        timestamp saved_at
    }

    Hearts {
        INT user_id FK
        INT recipe_id FK
    }

    PoisonousIngredients {
        INT id PK
        VARCHAR name
        TEXT description
    }

    PoisonousRecipes {
        INT poisonous_recipe_id PK
        VARCHAR name
        VARCHAR type
        TEXT ingredient
        TEXT method
        VARCHAR image
        UUID user_id FK
        enum poisonous "yes, no, unknown"
        enum status "pending, approved, rejected"
    }

    
    Users ||--o{ Comments : "can give"
    Users ||--o{ SaveRecipe : "can save"
    Users ||--o{ Recipe : "create"
    Recipe ||--o{ Comments : "can have"
    Recipe ||--o{ SaveRecipe : "can be saved"
    Recipe ||--o{ Hearts : "can have"
    Recipe ||--o{ PoisonousRecipes : "can be in"
    PoisonousIngredients ||--o{ PoisonousRecipes : "can be in"
:::