-- this script generates a borg cube by generating
-- a thousand random boxes of various sizes within
-- a 100 unit boundary
for i=1  to 1000 do(
  x = random -40 40
  y = random -40 40
  z = random -40 40
  sz = random 10 20
  if sz < 13 then(
    b=box length:sz width:sz height:sz pos:[x,y,z]
    b.wirecolor = green
  )
  else(
    b=box length:sz width:sz height:sz pos:[x,y,z]
    co = random 0 50
    b.wirecolor = color co co co
  )
)