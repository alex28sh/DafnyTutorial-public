// Here, we changed the order of function `sum`. Still we want to prove the equality between `sum` and `sum_method`.
// Fill in the invariants, prove the lemma and use them inside the method.

function sum(s: seq<int>) : int {
    if |s| == 0 then 0 else s[0] + sum(s[1..])
}

lemma sum_prop(s: seq<int>)
    requires |s| > 0
    ensures sum(s) == sum(s[..|s| - 1]) + s[ |s| - 1 ]
{
    // fill in the proof
}

method sum_method(numbers: seq<int>) returns (s : int)
    ensures s == sum(numbers)
 {
    s := 0;
    for i := 0 to |numbers|
        // add invariants
    {
        // here, you can write auxiliary assertions about the sum and product
        s := s + numbers[i];
    }

    return s;
}
