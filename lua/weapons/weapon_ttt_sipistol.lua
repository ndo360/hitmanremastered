
AddCSLuaFile()

SWEP.HoldType			= "pistol"

if CLIENT then
   SWEP.PrintName = "sipistol_name"
   SWEP.Slot = 6

   SWEP.EquipMenuData = {
      type = "item_weapon",
      desc = "sipistol_desc"
   };

   SWEP.Icon = "VGUI/ttt/icon_silenced"
end

SWEP.Base = "weapon_tttbase"
SWEP.Primary.Recoil	= 1.35
SWEP.Primary.Damage = 34
SWEP.Primary.Delay = 0.19
SWEP.Primary.Cone = 0.02
SWEP.Primary.ClipSize = 10
SWEP.Primary.Automatic = false
SWEP.Primary.DefaultClip = 10
SWEP.Primary.ClipMax = 10
SWEP.Primary.Ammo = "Pistol2"

SWEP.HeadshotMultiplier = 1337

SWEP.Kind = WEAPON_EQUIP
SWEP.CanBuy = {ROLE_TRAITOR} -- only traitors can buy
SWEP.WeaponID = AMMO_SIPISTOL

--SWEP.AmmoEnt = "item_ammo_pistol_ttt"

SWEP.IsSilent = true

SWEP.UseHands			= true
SWEP.ViewModelFlip		= false
SWEP.ViewModelFOV		= 54
SWEP.ViewModel			= "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_usp.mdl"

SWEP.Primary.Sound = Sound( "weapons/usp/usp1.wav" )
SWEP.Primary.SoundLevel = 50

SWEP.IronSightsPos = Vector( -5.91, -4, 2.84 )
SWEP.IronSightsAng = Vector(-0.5, 0, 0)

SWEP.PrimaryAnim = ACT_VM_PRIMARYATTACK_SILENCED
SWEP.ReloadAnim = ACT_VM_RELOAD_SILENCED

function SWEP:Deploy()
   self:SendWeaponAnim(ACT_VM_DRAW_SILENCED)
   return true
end

-- We were bought as special equipment, and we have an extra to give
function SWEP:WasBought(buyer)
   if IsValid(buyer) then -- probably already self.Owner
      buyer:GiveAmmo( 20, "Pistol" )
   end
end

