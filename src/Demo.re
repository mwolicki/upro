let code = "test(X,Y).
test(aaa,bbb) :- test(aaa,bbb), test(aaa,bbb).
";

let t = "test(X,Y).
";

let executeCode = (code) => {
    Test.text (code);
};

Js.log(executeCode (code));
Js.log(executeCode (t));


