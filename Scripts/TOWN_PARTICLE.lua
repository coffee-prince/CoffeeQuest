function TOWN_PARTICLE(posx,posy,id)
  local p = ParticleSystem();
  p.AttachToUnitID(Point(posx,posy),id)

  p.shape = 4
  p.sortOrder = 499
	p.emissionRate = 300
  p.material = 0
  p.startLifetime = 1.5
  p.startSpeed = 1
  p.startSize = 13
  --p.gravityModifier = -100
  p.angle = 10
  p.radius = 2000
  --p.shapeRotX = -90
  --p.shapeScaleZ = 13.5
  p.scale = 1
  p.sizeOverLifeTime = true
  p.sizeoVerLifeTimePrefab = 2
  p.arcMode = 3
  -- 파티클 불 설정
  p.colorOverLifeTime = true
  p.SetColorOverLifeTimeColor(0,Color(255, 149, 237,255))
  p.RemoveColorOverLifeTimeColor(1);
  p.SetColorOverLifeTimeColorAlpha(0,0)
  p.AddColorOverLifeTimeAlpha(0.5,255)

  p.SetMaterialTexture("Pictures/Dust.png","Pictures/Dust.png")

  local p2 = ParticleSystem();
  p.AddChild(p2)
  p2.visible = true

  p2.shape = 4
  p2.sortOrder = 500

  p2.material = 4
  p2.startLifetime = 1
  p2.startSpeed = 1
  p2.startSize = 15
  p2.gravityModifier = -10
  p2.angle = 50
  p2.scale = 2
  p2.radius = 7
  p2.shapeRotX = -90
  p2.shapeScaleZ = 13.5

  p2.sizeOverLifeTime = true
  p2.sizeoVerLifeTimePrefab = 2

  -- 파티클 불 설정
  p2.colorOverLifeTime = true
  p2.SetColorOverLifeTimeColor(0,Color(255,240,240,255))
  p2.RemoveColorOverLifeTimeColor(1);
  p2.SetColorOverLifeTimeColorAlpha(0,0)
  p2.AddColorOverLifeTimeAlpha(0.5,255)

  --불그림 설정
  p2.SetMaterialTexture("Pictures/Dust.png","Pictures/Dust.png")
end

