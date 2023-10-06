local function init(e)
  e.Chunkloader = true
  e.Data.target = {x=math.random(100),y=math.random(100)}
end

local function update(e, dt)
  print(e)
  x, y, _ = e:GetPosition()
  local dx = e.Data.target.x - x
  local dy = e.Data.target.y - y
  if dx*dx < 4 and dy*dy < 4 then
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
