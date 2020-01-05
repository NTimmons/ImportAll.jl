using Test

module A
    const y = 2
    function foo end
    export y, foo
end

module B
    using ImportAll
    import ..A
    @importall A
    foo(x) = x + 2
end

module C
    using ImportAll
    @importall Base
    struct A end
    iterate(::A) = nothing
    length(::A) = 0
end

@testset "import all" begin
    @test B.y == 2
    @test A.foo(1) == 3
    @test collect(C.A()) == []
end
