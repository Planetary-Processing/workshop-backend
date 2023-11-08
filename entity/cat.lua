local function init(e)
  print(e)
  e.Chunkloader = true
  e.Data.target = {x=math.random(100),y=math.random(100)}
end

local function update(e, dt)
  x, y, _ = e:GetPosition()
  local dx = e.Data.target.x - x
  local dy = e.Data.target.y - y
  if dx*dx < 4 and dy*dy < 4 then
    e.Data.target = {x=math.random(-250,250),y=math.random(-250, 250)}
  else
    if dx*dx > dy*dy then
      dx = dx < 0 and -1 or 1
      dy = 0
    elseif dy*dy > dx*dx then
      dy = dy < 0 and -1 or 1
      dx = 0
    else
      dx = dx < 0 and -1 or 1
      dy = dy < 0 and -1 or 1
    end
    e:Move(dx*dt, dy*dt, 0)
  end
end

local function message(e, msg)
end

return {init=init,update=update,message=message}
