-- Safe stub: if ObjectMenuComponent isn't defined on this fork, shim it.
if ObjectMenuComponent == nil then
  ObjectMenuComponent = {}
  function ObjectMenuComponent:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
  end
end

-- Minimal, no-op component to satisfy snapshot tangibles
sabolIntelSearchMenuComponent = ObjectMenuComponent:new {}

function sabolIntelSearchMenuComponent:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
  return 0
end

function sabolIntelSearchMenuComponent:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
  return 0
end
