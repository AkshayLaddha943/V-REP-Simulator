--Get sensor handle
--In 'sysCall_init'
sonar = sim.getObjectHandle('sonar')
max_dist=1
--Get distance
--In 'sysCall_sensing'
dist = getDistance(sonar, max_dist)

--Anywhere in the code
function getDistance (sensor)
  local detected, distance
  detected, distance = sim.readProximitySensor(sensor)
  if (detected<1) then
    distance=max_dist
  end
  return distance
end
