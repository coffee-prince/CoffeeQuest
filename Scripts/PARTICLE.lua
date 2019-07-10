function PARTICLE_INIT()
    local p = ParticleSystem();
    p.AttachToUI(Point(Client.width / 2, Client.height / 2))
    p.sortOrder = 499
    p.radius = 200
    p.scale = 5
    p.emissionRate = 100
    p.startLifetime = 1.5
	p.arcMode = 0
	p.arcSpeed = 100
    p.sizeOverLifeTime = true
    p.sizeoVerLifeTimePrefab = 2
	p.shape = 4
    p.colorOverLifeTime = true
    p.SetColorOverLifeTimeColor(0,Color(255, 0, 0,255))
	p.randomizeDirection = 1
	p.SetMaterialTexture("Pictures/Dust.png","Pictures/Dust.png")
	p.sizeOverLifeTime = true
	p.emissionEnable = false

	local p2 = ParticleSystem();
    p2.AttachToUI(Point(Client.width / 2, Client.height / 2))
    p2.sortOrder = 498
    p2.radius = 200
    p2.scale = 6
    p2.emissionRate = 100
    p2.startLifetime = 1.5
	p2.arcMode = 0
	p2.arcSpeed = 100
    p2.sizeOverLifeTime = true
    p2.sizeoVerLifeTimePrefab = 2
	p2.shape = 4
    p2.colorOverLifeTime = true
    p2.SetColorOverLifeTimeColor(0,Color(0, 255, 0,255))
	p2.randomizeDirection = 1
	p2.SetMaterialTexture("Pictures/Dust.png","Pictures/Dust.png")
	p2.sizeOverLifeTime = true
	p2.emissionEnable = false

	local p3 = ParticleSystem();
    p3.AttachToUI(Point(Client.width / 2, Client.height / 2))
    p3.sortOrder = 497
    p3.radius = 200
    p3.scale = 7
    p3.emissionRate = 100
    p3.startLifetime = 1.5
	p3.arcMode = 0
	p3.arcSpeed = 100
    p3.sizeOverLifeTime = true
    p3.sizeoVerLifeTimePrefab = 2
	p3.shape = 4
    p3.colorOverLifeTime = true
    p3.SetColorOverLifeTimeColor(0,Color(0, 0, 255,255))
	p3.randomizeDirection = 1
	p3.SetMaterialTexture("Pictures/Dust.png","Pictures/Dust.png")
	p3.sizeOverLifeTime = true
	p3.emissionEnable = false

	local p4 = ParticleSystem();
    p4.AttachToUI(Point(Client.width / 2, Client.height / 2))
    p4.sortOrder = 496
    p4.radius = 200
    p4.scale = 3
    p4.emissionRate = 105
    p4.startLifetime = 1.5
	p4.arcMode = 0
	p4.arcSpeed = 100
    p4.sizeOverLifeTime = true
    p4.sizeoVerLifeTimePrefab = 2
	p4.shape = 4
    p4.colorOverLifeTime = true
    p4.SetColorOverLifeTimeColor(0,Color(255, 255, 0,255))
	p4.randomizeDirection = 1
	p4.SetMaterialTexture("Pictures/Dust.png","Pictures/Dust.png")
	p4.sizeOverLifeTime = true
	p4.emissionEnable = false

	local p5 = ParticleSystem();
    p5.AttachToUI(Point(Client.width / 2, Client.height / 2))
    p5.sortOrder = 495
    p5.radius = 200
    p5.scale = 5
    p5.emissionRate = 100
    p5.startLifetime = 1.5
	p5.arcMode = 0
	p5.arcSpeed = 100
    p5.sizeOverLifeTime = true
    p5.sizeoVerLifeTimePrefab = 2
	p5.shape = 4
    p5.colorOverLifeTime = true
    p5.SetColorOverLifeTimeColor(0,Color(0, 255, 255,255))
	p5.randomizeDirection = 1
	p5.SetMaterialTexture("Pictures/Dust.png","Pictures/Dust.png")
	p5.sizeOverLifeTime = true
	p5.emissionEnable = false

	local fn = {}

	fn.Show = function()
		p.emissionEnable = true
		p2.emissionEnable = true
		p3.emissionEnable = true
		p4.emissionEnable = true
		p5.emissionEnable = true
	end

	fn.Hide = function()
		p.emissionEnable = false
		p2.emissionEnable = false
		p3.emissionEnable = false
		p4.emissionEnable = false
		p5.emissionEnable = false
	end

	return fn
end

function P2ARTICLE_INIT()
    local p = ParticleSystem();
    p.AttachToUI(Point(Client.width / 2, Client.height / 2))

    p.shape = 4
    p.sortOrder = 499
    p.startSpeed = 1
    p.startSize = 13
    p.radius = 100

    p.scale = 11
    p.emissionRate = 255
    p.material = 0
    p.startLifetime = 1.5

    p.angle = 50
	p.arcMode = 2

	p.gravityModifier = 20
	p.arcSpeed = 100
    p.sizeOverLifeTime = true
    p.sizeoVerLifeTimePrefab = 2

    p.colorOverLifeTime = true
    p.SetColorOverLifeTimeColor(0,Color(255, 50, 25,255))

    p.RemoveColorOverLifeTimeColor(1);
    p.SetColorOverLifeTimeColorAlpha(0,0)
    p.AddColorOverLifeTimeAlpha(0.5,255)

	p.SetMaterialTexture("Pictures/Dust.png","Pictures/Dust.png")
	p.simulationSpace = 1


	p.Stop()


	local fn = {}

	fn.Show = function()
		p.Play()
	end

	fn.Hide = function()
		p.Stop()
	end

	return fn
end


