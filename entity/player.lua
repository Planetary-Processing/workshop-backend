-- init called on creation of entity
local function init(p)
  -- set player to a chunkloader, thous this is technically unnecessary as the game engine will force this regardless
  p.Chunkloader = true
end

-- update called each simulation step, with dt being the number of seconds since last step (float)
local function update(p, dt)
end

-- called when this entity receives a message
-- as this is the player entity it can also receive messages from the game client
local function message(e, msg)
  -- print and error output can be viewed per-chunk in the control panel
  print(msg)
  -- if this is a client message (i.e. from a game client) then look in the message's Data table
  if msg.Client then
    local x, y, z = msg.Data.x, msg.Data.y, msg.Data.z
    if msg.Data.threedee then
      e:MoveTo(x,z,y) -- PP uses 'y' for depth in 3 dimensional games, and 'z' for height
    else
      e:Move(x,y,0)
    end
  end
end

-- entity file must return table of this format
return {init=init,update=update,message=message}
