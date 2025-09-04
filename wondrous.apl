wondrous ← {
    number ← ⍵
    ⎕ ← number
    number = 1: ⎕ ← number       ⍝ stop when 1
    (2|number) : ∇ ((3×number)+1)  ⍝ odd → 3n+1
    ∇ (number÷2)                 ⍝ even → n÷2
}