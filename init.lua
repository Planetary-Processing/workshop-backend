-- init is called every time a chunk is loaded, if the chunk has been loaded before then chunk.Generated will be true, else it will be false
function init()
  -- do this block of code if the chunk is at (0,0) in chunk space and has not been generated yet
  if chunk.X == 1 and chunk.Y == 1 and not chunk.Generated then
    for i=1,20 do
      -- create entity with parameters: type, x, y, z, data
      -- type must match the name of one of the lua files in entity folder of this repo
      -- data is an arbitrary lua table
      api.entity.Create("cat", -35, 25, 0, {name="jar jar "..i})
    end
  end
  if not chunk.Generated then
    for i=1,chunk.Size,8 do
      for j=1,chunk.Size,8 do
        if math.random() < 0.1 then
          -- create some tree entities at random locations, 'math' and other standard lua library functions (excluding io/os operations) are included
          api.entity.Create("tree", chunk.X*chunk.Size + i + math.random() - 0.5, chunk.Y*chunk.Size + j + math.random() -0.5, 0, {})
        end
      end
    end
  end
end
