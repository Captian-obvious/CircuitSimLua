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

return cs
