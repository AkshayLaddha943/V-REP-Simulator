--In 'sysCall_init'
ir_sensor = sim.getObjectHandle('tcrt5000_sensor')
linecolour = 0

--In 'sysCall_sensing'
lineColour = getLineColour()

--Anywhere in code
function getLineColour()
  value = sim.getVisionSensorImage(ir_sensor+sim.handleflag_greyscale)
  return value[1]
end
