Sierpinski ← {
    ⍝ Initial triangle piece
    itri ← ↑(1 2 1) (2 2 2)
    isp ← (2 1⍴1)
    isph ← isp
    build ← {
        tri ← ↑⍵[2]
        sp ← ↑⍵[3]
        sph ← ↑⍵[4]
        i ← ↑⍵[1]
        ⍝ Build new triangle
        a ← (sp , sp , tri , sp , sp) ⍪ (tri , sph , tri)
        sp ← (2 × ⍴sp) ⍴ sp ⍝ Enlarge space
        sph ← (⊃2×1↑⍴sph) 1 ⍴ sph ⍝ Enlarge sph
        i≤0: a
        ∇ (i-1) a sp sph
    }
    ⎕ ← ⍺[build ⍵ itri isp isph]
}