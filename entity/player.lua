local function init(p)
end

local function update(p, dt)
end

local function message(e, msg)
  print(e)
  e:Move(e.Data.x,e.Data.y,0)
end

return {init=init,update=update,message=message}
