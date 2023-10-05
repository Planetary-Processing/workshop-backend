function init()
  if chunk.id == 1 and not chunk.generated then
    api.createEntity("cat", 35, 25, 1, {name="jar jar"})
  end
  if math.random() < 0.1 then
    api.createEntity("tree", chunk.x*chunk.size + math.random()*chunk.size(), chunk.y*chunk.size + math.random()*chunk.size(), 1)
  end
end
