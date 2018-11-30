module ImportAll

macro importall(moduleIn, verbose=false)
    modName = @eval($(moduleIn))
    out = []
    for name in names(modName)
        #if(name == :exp || name == :sqrt || name == :+)
            symbolname = @eval $(name)
            #expression  = Expr(:import, modName.symbolname) 
            expression = :(import $(moduleIn): $(name))
            push!(out, expression)
        #end
        
    end
    #@show out
    ret = Expr(:block,out...)
	return ret
    #return quote
    #        $out
    #end
end

export @importall

end
