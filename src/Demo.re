let code = "parent(iwona,marcin).
parent(iwona,tomek).
sibling(X,Y) :- parent(Z, X), parent (Z, Y).
?- siblings (W,M).";

let t = "test(X,Y).
";

let executeCode = (code) => {
    Test.text (code);
};

Js.log(executeCode (code));
