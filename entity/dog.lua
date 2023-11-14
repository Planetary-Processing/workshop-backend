-- init called on creation of entity
local function init(e)
  -- e.Data is an arbitrary table, this is persisted, populated here with target coordinates
  e.Data.target = {x=math.random(-64,64),y=math.random(-64,64)}
  -- we have not set this entity to a chunkloader so it will not force its chunk to remain loaded (unlike cat, which is a chunkloader)
end

-- updated called each simulation step, with dt being the number of seconds since last step (float)
local function update(e, dt)
  -- position must be fetched using GetPosition method, x, y and z are privat
  x, y, _ = e:GetPosition()
  -- calculate distance from target on x and y axis
  local dx = e.Data.target.x - x
  local dy = e.Data.target.y - y
  -- if we're close enough then consider ourselves successful
  if dx*dx < 4 and dy*dy < 4 then
    e.Data.target = {x=math.random(-96,96),y=math.random(-96, 96)}
  else
    -- determine largest direction of motion
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
    -- e:Move(dx, dy, dz) moves relative to current position
    -- by multiplying by dt we move at a constant speed regardless of performance
    -- we also have e:MoveTo(x, y, z) which moves to an absolute position
    -- note that z is left as 0 as this is a 2D game
    e:Move(dx*dt, dy*dt, 0)
  end
end

-- called when this entity receives a message
local function message(e, msg)
end

-- entity file must return table of this format
return {init=init,update=update,message=message}
