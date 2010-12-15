-- XXX Ulic: Other suggestions

-------------------------------------------------------------------------------
--  Module Declaration

local mod = BigWigs:NewBoss("Baron Silverlaine", "Shadowfang Keep")
if not mod then return end
mod.partyContent = true
mod:RegisterEnableMob(3887)
mod.toggleOptions = {
	93857,
	"bosskill",
}

-------------------------------------------------------------------------------
--  Initialization

function mod:OnBossEnable()
	self:Log("SPELL_CAST_START", "Summon", 93857)

	self:Death("Win", 3887)
end

function mod:VerifyEnable()
	if GetInstanceDifficulty() == 2 then return true end
end

-------------------------------------------------------------------------------
--  Event Handlers

function mod:Summon(_, spellId, _, _, spellName)
	self:Message(93857, spellName, "Important", spellId)
end