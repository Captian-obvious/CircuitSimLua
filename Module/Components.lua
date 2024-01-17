local comp={}

function comp.Init(self)
    if self.isInitialized~=true then
        self.isInitialized=true
        self.rules=self.deps.circuitSimulationRules.new()
    end
end

function comp.handleSimulation(self,componentTable)
    if (self.rules~=nil) then
        --will implement later.
    end
end

return comp
