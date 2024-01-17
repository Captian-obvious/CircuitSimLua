local cs={
    isInitialized=false,
    cHandlerLoadAutoRetried=false,
    sRulesLoadAutoRetried=false,
}

function cs.Init(self)
    if (self.isInitialized~=true) then
        self.isInitialized=true
    end
end

function cs.loadDependencies(self)
    if (self.deps~=nil) then
        
    end
end

function cs.onComponentHandlerLoaded(self)
    print('component_handler_loaded')
    self.deps.component:Init()
end

function cs.onComponentHandlerLoadError(self)
    print('component_handler_load_error')
    if self.cHandlerLoadAutoRetried~=true then
        
    end
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
