# Hackage Package Versioning Policy

* Version number should have the form `A.B.C[.D]`
* `A.B` must be greater when there are deletion, deprecation & modification on existing things
* `A.B.C` must be greater when new things are introduced

See [Package versioning policy](http://www.haskell.org/haskellwiki/Package_versioning_policy)
for detail.

# Profiling (GHC document 7.16.4)

Error message would be like:

> Dynamic linking required, but this is a non-standard build (eg. prof).
> You need to build the program twice: once the dynamic way, and then
> in the desired way using -osuf to set the object file suffix.

Need to compile executable twice:

1. `ghc -rtsopts -fforce-recomp -main-is Foo Foo.hs`
2. `ghc -rtsopts -fforce-recomp -prof -auto-all -caf-all -main-is Foo Foo.hs -osuf p_o` ("in the desired way using -osuf to set the object file suffix")
