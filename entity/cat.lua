local function init(e)
  e.Data.dir = -0.5
end

local function update(e, dt)
  x, y, z = e:GetPosition()
  if x < -40 then
    e.Data.dir = 0.5
  elseif x > 40 then
    e.Data.dir = -0.5
  end
  e:Move(e.Data.dir, 0, 0)
end

return {init=init,update=update}
