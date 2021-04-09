--Get joint wheels handle
--In 'sysCall_init'
left_wheel=sim.getObjectHandle('left_joint')
right_wheel=sim.getObjectHandle('right_joint')
--set an angular velocity
--In 'sysCall_actuation'
sim.setJointTargetVelocity(left_wheel, 0)
sim.setJointTargetVelocity(right_wheel, 0)