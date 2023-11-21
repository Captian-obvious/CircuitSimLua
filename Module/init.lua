local ca={
    isInitialized=false,
}

function cs:Init()
    if (cs.isInitialized~=true) then
        cs.isInitialized=true
    end
end

return cs
