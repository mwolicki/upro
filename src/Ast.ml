
type ast = [
        `Relation of string * [ 
            `Atom of string 
            | `Var of string 
        ] list 
    ] list