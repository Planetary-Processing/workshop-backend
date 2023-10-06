local function init(e)
  e.Chunkloader = true
  e.Data.target = {x=math.random(100),y=math.random(100)}
end

local function update(e, dt)
  x, y, _ = e:GetPosition()
  local dx = e.Data.target.x - x
  local dy = e.Data.target.y - y
  if dx < 2 and dy < 2 then
    e.Data.target = {x=math.random(500),y=math.random(500)}
  else
    if dx > dy then
      dx = 1
      dy = 0
    elseif dy > dx then
      dy = 1
      dx = 0
    else
      dx = 1
      dy = 1
    end
    e:Move(dx, dy, 0)
  end
end

return {init=init,update=update}
