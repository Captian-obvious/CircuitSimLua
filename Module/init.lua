local cs={
    isInitialized=false,
}

function cs.Init(self)
    if (self.isInitialized~=true) then
        self.isInitialized=true
    end
end

function cs.loadDependencies(self)
    
end

function cs.loadScript(self,path,onsuc,onerr)
    if (path~=nil) then
        local suc,res=pcall(function()
            return require(path)
        end)
        if (suc==true) then
            if (onsuc) then onsuc(res) end
        else
            if (onerr) then onerr(res) end
        end
    end
end

return cs
