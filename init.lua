function init()
  if chunk.X == 1 and chunk.Y == 1 and not chunk.Generated then
    for i=1,20 do
      api.CreateEntity("cat", 35, 25, 1, {name="jar jar "..i})
    end
  end
  if not chunk.Generated then
    for i=1,math.random(10) do
      api.CreateEntity("tree", chunk.X*chunk.Size + math.random()*chunk.Size, chunk.Y*chunk.Size + math.random()*chunk.Size, 1, {})
    end
  end
end
