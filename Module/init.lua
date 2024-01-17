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
    end
end

return cs
