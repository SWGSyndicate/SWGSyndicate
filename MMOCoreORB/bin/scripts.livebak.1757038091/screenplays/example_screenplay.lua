ExampleScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
}

--True here tells the server to load this screenplay at server load. False tells it to wait until explicitly started.
registerScreenPlay("ExampleScreenPlay", true)

--This gets executed automatically when the screenplay is started
function ExampleScreenPlay:start()
	self:spawnMobiles()
end

--Put all the initial spawning of mobiles in a nice method like this.
function ExampleScreenPlay:spawnMobiles()
end
-- ==== SAFETY: auto-added guard for autostarted screenplay 'ExampleScreenPlay' ====
if not ExampleScreenPlay then ExampleScreenPlay = ScreenPlay:new{ numberOfActs = 0 } end
if type(ExampleScreenPlay.start) ~= "function" and type(start) ~= "function" then
  function ExampleScreenPlay:start()
    -- no-op: allows DirectorManager autostart to proceed without errors
    return true
  end
end
-- ==== /SAFETY ====
