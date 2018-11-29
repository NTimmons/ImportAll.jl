module ImportAll

export importall
    macro importall(name, verbose=false)
        for name in names(Base)
            eval(quote
                    import Base.$(name)
                 end)
            if verbose
                println("importing $(name)")
            end
        end
    end
end
