function init()
  if chunk.id == 1 and not chunk.generated then
    api.createEntity("cat", 35, 25, 1, {name="jar jar"})
  end
end
