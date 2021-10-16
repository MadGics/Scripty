local Values = {
    NoRecoil = true,
    AutomaticWeapons = true,
    InfiniteBulletPunch = true,
    InfiniteRange = true, -- NOT TESTED ON THE FLAMETHROWER. USE THIS ON THE FLAMETHROWER AT YOUR OWN RISK!
    InfiniteAmmoPickup = true,
    FastAnimations = true
}

for i,v in next, getgc(true) do
if type(v) == "table" and rawget(v, "VerticleRecoil") then
if Values.NoRecoil == true then
v.RecoilShake = 0
v.VerticleRecoil = math.rad(0)
v.HorizontalRecoil = math.rad(0)
end

if Values.AutomaticWeapons == true then
v.Type = "Auto"
end

if Values.InfiniteBulletPunch == true then
v.MaxPen = 9999
end

if Values.InfiniteRange == true then
v.Distance = 9999
end

if Values.InfiniteAmmoPickup == true then
v.AmmoPickup = 9999
end
end
end
