if SERVER then
    SWEP.Weight = 5
    SWEP.AutoSwitchTo = true
    SWEP.AutoSwitchFrom = true
    AddCSLuaFile("shared.lua")
end

if CLIENT then
SWEP.Slot					= 1			                        -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos				= 73			                    -- Position in the slot	                       
end
-- Variables that are used on both client and server
SWEP.Category				= "TFA Customs" --Category where you will find your weapons
SWEP.MuzzleAttachment			= "1" 	-- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment			= "shell" 	-- Should be "2" for CSS models or "1" for hl2 models
SWEP.Manufacturer = "AMT" --Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author				= ""
SWEP.Contact				= ""
SWEP.Purpose				= ""
SWEP.Instructions				= ""
SWEP.PrintName				= "Silverballer" -- Weapon name (Shown on HUD)	
SWEP.Slot				= 1				-- Slot in the weapon selection menu
SWEP.SlotPos				= 3			-- Position in the slot
SWEP.DrawAmmo				= true		-- Should draw the default HL2 ammo counter
SWEP.DrawWeaponInfoBox		= false		-- Should draw the weapon info box
SWEP.BounceWeaponIcon   	= false		-- Should the weapon icon bounce?
SWEP.DrawCrosshair			= true		-- set false if you want no crosshair
SWEP.Weight					= 35		-- rank relative ot other weapons. bigger is better
SWEP.AutoSwitchTo			= true		-- Auto switch to if we pick it up
SWEP.AutoSwitchFrom			= true		-- Auto switch from if you pick up a better weapon
SWEP.HoldType 				= "pistol"		-- how others view you carrying the weapon
-- normal melee melee2 fist knife smg ar2 pistol rpg physgun grenade shotgun crossbow slam passive 
-- you're mostly going to use ar2, smg, shotgun or pistol. rpg makes for good sniper rifles

local hudcolor = Color(255, 255, 255, 255)

if killicon and killicon.Add then
	killicon.Add("tfa_silverballer", "vgui/hud/kill/tfa_silverballer", hudcolor)
end

SWEP.ViewModelFOV			= 54
SWEP.ViewModelFlip			= false
SWEP.ViewModel				= "models/weapons/v_silverballer.mdl"	-- Weapon view model
SWEP.WorldModel				= "models/weapons/w_silverballer.mdl"	-- Weapon world model
SWEP.Base				= "tfa_gun_base" --the Base this weapon will work on. PLEASE RENAME THE BASE! 
SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true
SWEP.FiresUnderwater = false
SWEP.ShowWorldModel			= true
SWEP.UseHands = true

SWEP.Primary.Sound = Sound("SilverBaller.Fire") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.LongSound = Sound("SilverBaller.FireLS") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound = Sound("SilverBaller.FireSD") -- This is the sound of the weapon, when silenced.
SWEP.Primary.RPM			= 575			-- This is in Rounds Per Minute
SWEP.Primary.ClipSize			= 7		-- Size of a clip
SWEP.Primary.DefaultClip		= 0		-- Bullets you start with
SWEP.Primary.KickUp			= 0.85		-- Maximum up recoil (rise)
SWEP.Primary.KickDown			= 0.1		-- Maximum down recoil (skeet)
SWEP.Primary.KickHorizontal		= 0.007		-- Maximum up recoil (stock)
SWEP.Primary.Automatic			= false	-- Automatic = true; Semi Auto = false
SWEP.Primary.Ammo			= "pistol"			-- pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, AirboatGun
-- Pistol, buckshot, and slam always ricochet. 
--Use AirboatGun for a light metal peircing shotgun pellets
SWEP.SelectiveFire		= false
SWEP.CanBeSilenced		= true

SWEP.Secondary.IronFOV			= 70		-- How much you 'zoom' in. Less is more! 	

SWEP.data 				= {}				--The starting firemode

SWEP.Primary.Damage		= 44.5	-- Base damage per bullet
SWEP.Primary.Spread		= .02321	-- Define from-the-hip accuracy 1 is terrible, .0001 is exact)
SWEP.Primary.IronAccuracy = .01840 -- Ironsight accuracy, should be the same for shotguns

SWEP.SightsPos = Vector( -1.8500, 0.0000, 0.5100 )
SWEP.SightsAng = Vector( 0.3165, 0.0346, 7.09 )

SWEP.IronSightsPos_AltSlide = Vector( -1.8500, 0.0000, 0.5100 )
SWEP.IronSightsAng_AltSlide = Vector( 0.3165, 0.0346, 7.09 )

SWEP.InspectPos = Vector(7.76, -5.178, 0.016)
SWEP.InspectAng = Vector(1, 37.277, 3.2)

--Procedural world model animation, defaulted for CS:S purposes.
SWEP.Offset = {
	Pos = {
		Up = -1.8,
		Right = 0.964,
		Forward = 5.1
	},
	Ang = {
		Up = 0,
		Right = -5.844,
		Forward = 180
	},
	Scale = 0.9
}

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_LUA -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation

SWEP.ThirdPersonReloadDisable=false --Disable third person reload?  True disables.

SWEP.Sights_Mode = TFA.Enum.LOCOMOTION_HYBRID -- ANI = mdl, HYBRID = lua but continue idle, Lua = stop mdl animation
SWEP.Idle_Mode = TFA.Enum.IDLE_BOTH --TFA.Enum.IDLE_DISABLED = no idle, TFA.Enum.IDLE_LUA = lua idle, TFA.Enum.IDLE_ANI = mdl idle, TFA.Enum.IDLE_BOTH = TFA.Enum.IDLE_ANI + TFA.Enum.IDLE_LUA
SWEP.Sprint_Mode = TFA.Enum.LOCOMOTION_ANI -- ANI = mdl, HYBRID = ani + lua, Lua = lua only

SWEP.SprintAnimation = {
	["loop"] = {
		["type"] = TFA.Enum.ANIMATION_SEQ, --Sequence or act
		["value"] = "base_sprint", --Number for act, String/Number for sequence
		["value_empty"] = "empty_sprint",
		["is_idle"] = true
	}
}

SWEP.MuzzleAttachmentSilenced = 5
SWEP.MuzzleAttachmentExt = 6

SWEP.Blowback_Only_Iron = true --Only do blowback on ironsights
SWEP.Blowback_PistolMode = false --Do we recover from blowback when empty?
SWEP.Blowback_Shell_Enabled = true --Shoot shells through blowback animations
SWEP.Blowback_Shell_Effect = "ShellEject"--Which shell effect to use
SWEP.LuaShellEject = true --Enable shell ejection through lua?
SWEP.LuaShellEjectDelay = 0 --The delay to actually eject things
SWEP.LuaShellEffect = "PistolShellEject" --The effect used for shell ejection; Defaults to that used for blowback

SWEP.Attachments = {
	[1] = { offset = { 0, 0 }, atts = { "sb_long", "sb_supp" }, order = 1 },
	[2] = { offset = { 0, 0 }, atts = { "sb_x300" }, order = 2 },
	[3] = { offset = { 0, 0 }, atts = { "sb_skblk" }, order = 3 },
}