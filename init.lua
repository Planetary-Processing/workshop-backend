function init()
  if chunk.x == 1 and chunk.y == 1 and not chunk.generated then
    for i=1,20 do
      api.createEntity("cat", 35, 25, 1, {name="jar jar "..i})
    end
  end
  if not chunk.generated then
    api.createEntity("tree", chunk.x*chunk.size + math.random()*chunk.size, chunk.y*chunk.size + math.random()*chunk.size, 1)
  end
end
