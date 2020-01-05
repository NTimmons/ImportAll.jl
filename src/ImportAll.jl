module ImportAll

macro importall(moduleIn, verbose=false)
    quote
        try
            $(esc(moduleIn))
        catch
            import $(moduleIn)
        end
        for name in names($(esc(moduleIn)))
            @eval import .$(moduleIn): $(Expr(:$, :name))
        end
    end
end

export @importall

end
