Sierpinski ← {
    ⍝ Initial triangle piece
    itri ← ↑(1 2 1) (2 2 2)
    isp ← (2 2⍴1)
    isph ← (2 1⍴1)
    build ← {
        tri ← ↑⍵[2]
        sp ← ↑⍵[3]
        sph ← ↑⍵[4]
        i ← ↑⍵[1]
        i≤0: tri
        ⍝ Build new triangle
        tri ← (sp , tri , sp) ⍪ (tri , sph , tri)
        sp ← (2 × ⍴sp) ⍴ sp ⍝ Enlarge space
        sph ← (⊃2×1↑⍴sph) 1 ⍴ sph ⍝ Enlarge sph
        ∇ (i-1) tri sp sph
    }
    ⎕ ← ⍺[build ⍵ itri isp isph]
}