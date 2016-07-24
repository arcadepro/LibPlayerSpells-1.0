--[[
LibPlayerSpells-1.0 - Additional information about player spells.
(c) 2013-2014 Adirelle (adirelle@gmail.com)

This file is part of LibPlayerSpells-1.0.

LibPlayerSpells-1.0 is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

LibPlayerSpells-1.0 is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with LibPlayerSpells-1.0.  If not, see <http://www.gnu.org/licenses/>.
--]]

local lib = LibStub("LibPlayerSpells-1.0")
if not lib then return end
lib:__RegisterSpells("WARRIOR", 70000, 3, {
	COOLDOWN = {
		   6544, -- Heroic Leap
		 202168, -- Impending Victory
		[  6552] = "INTERRUPT", -- Pummel
		AURA = {
			PERSONAL = {
				  1719, -- Battle Cry
				 18499, -- Berserker Rage
				 23920, -- Spell Reflection
				107574, -- Avatar
				122510, -- Ultimatum
				132404, -- Shield Block
				202164, -- Bounding Stride
				227847, -- Bladestorm (Arms)
				SURVIVAL = {
					   871, -- Shield Wall
					 12975, -- Last Stand
					118038, -- Die by the Sword (Arms, Fury)
					227744, -- Ravager
				},
			},
			HELPFUL = {
				 97463, -- Commanding Shout
				223658, -- Safeguard
			},
			HARMFUL = {
				   355, -- Taunt (taunt)
				  1160, -- Demoralizing Shout
				  6343, -- Thunder Clap (slow)
				208086, -- Colossus Smash (Arms)
				CROWD_CTL = {
					  7922, -- Warbringer Stun (stun)
					132168, -- Shockwave (stun)
					132169, -- Storm Bolt (stun)
				},
			},
		},
	},
	AURA = {
		HELPFUL = {
			147833, -- Intervene
		},
		HARMFUL = {
			115767, -- Deep Wounds
			CROWD_CTL = {
				105771, -- Charge (root)
			},
		},
		PERSONAL = {
			 32216, -- Victorious
			188923, -- Cleave Whirlwind
			202289, -- Renewed Fury
			202573, -- Vengeance: Focused Rage
			202574, -- Vengeance: Ignore Pain
			204488, -- Focused Rage
			SURVIVAL = {
				190456, -- Ignore Pain
			},
		},
	},
}, {
	-- Map aura to provider(s)
	[  7922] = 103828, -- Warbringer (stun)
	[ 32216] = { -- Victorious
		 34428, -- Victory Rush
		202168, -- Impending Victory
	},
	[ 97463] = 97462, -- Commanding Shout
	[105771] = { -- Charge (root)
		   100, -- Charge
		198304, -- Intercept
	},
	[115767] = 115768, -- Deep Wounds
	[122510] = 122509, -- Ultimatum
	[132168] = 46968, -- Shockwave (stun)
	[132169] = 107570, -- Storm Bolt (stun)
	[132404] = 2565, -- Shield Block
	[147833] = 198304, -- Intervene <- Intercept
	[188923] = 845, -- Cleave
	[202164] = 202163, -- Bounding Stride
	[202289] = 202288, -- Renewed Fury
	[202573] = 202572, -- Vengeance: Focused Rage <- Vengeance
	[202574] = 202572, -- Vengeance: Ignore Pain <- Vengeance
	[208086] = 167105, -- Colossus Smash
	[227744] = 228920, -- Ravager
	[223658] = 198304, -- Safeguard <- Intercept
}, {
	-- map aura to modified spell(s)
	[  7922] = 198304, -- Warbringer (stun) -> Intercept
	[115767] = { -- Deep Wounds
		 6572, -- Revenge
		20243, -- Devastate
	},
	[122510] = 204488, -- Ultimatum -> Focused Rage
	[188923] = 1680, -- Cleave to Whirlwind
	[202164] = 6544, -- Bounding Stride -> Heroic Leap
	[202289] = 190456, -- Renewed Fury -> Ignore Pain
	[202573] = 204488, -- Vengeance: Focused Rage -> Focused Rage
	[202574] = 190456, -- Vengeance: Ignore Pain -> Ignore Pain
})
