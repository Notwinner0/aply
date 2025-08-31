vision ← {
    size ← 3⊃⍴⍵
    res ← ((↑1⊃⍴⍵) (2⊃⍴⍵))⍴⍳0
    repick ← {
        i ← ↑⍵[1]
        nres ← ↑⍵[2]
        act ← ↑⍵[3]
        i<1: nres ⍝ output result
        section ← ↑i⊃↓↓act
        res ← nres ⌈ section
        ∇ (i-1) res act
    }
    ⎕ ← repick size res ⍵
}