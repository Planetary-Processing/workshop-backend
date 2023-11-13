local function init(p)
end

local function update(p, dt)
end

local function message(e, msg)
  print(msg)
  e:Move(e.x,e.y,0)
end

return {init=init,update=update,message=message}
