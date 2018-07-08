// COD WW2 RIGS

function SWEP:_CreateHands()
	if !CLIENT then return end
	local gmod_hands = LocalPlayer():GetHands()
	local currig = GetConVar("pb_codww2_rig"):GetInt()

	if GetConVar("pb_codww2_rig_use_gmod_hands"):GetInt() == 1 then // gmod hands
		if !self.CODWW2_Linker then
			self.CODWW2_Linker = self:CreateClientModel( "models/codww2/hands/c_codww2_to_gmod_hands.mdl" ) // gmod linker
		end
		self.CODWW2_Linker:SetNoDraw(true)
		self.CODWW2_Linker:SetupBones()
		self.CODWW2_Linker:SetParent(self.VM)
		self.CODWW2_Linker:AddEffects(EF_BONEMERGE)
		self.CODWW2_Linker:AddEffects(EF_BONEMERGE_FASTCULL)

		if !self.Hands then
			self.Hands = self:CreateClientModel( gmod_hands:GetModel() )
		end

		self.Hands:SetNoDraw(true)
		self.Hands:SetupBones()
		self.Hands:SetParent(self.CODWW2_Linker)
		self.Hands:AddEffects(EF_BONEMERGE)
		self.Hands:AddEffects(EF_BONEMERGE_FASTCULL)
		self.Hands.GetPlayerColor = self._GetPlayerColor // player color proxy
		self:_CopyBodyGroups(LocalPlayer():GetHands(), self.Hands)
	else
		if !self.Hands then
			self.Hands = self:CreateClientModel( PHUNBASE.CODWW2.RIGS[currig].model )
		end
		self.Hands:SetNoDraw(true)
		self.Hands:SetupBones()
		self.Hands:SetParent(self.VM)
		self.Hands:AddEffects(EF_BONEMERGE)
		self.Hands:AddEffects(EF_BONEMERGE_FASTCULL)
	end
end

function SWEP:_UpdateHands()
	if SERVER then
		SendUserMessage("PHUNBASE_UMSG_UPDATEHANDS", self.Owner)
	else
		local gmod_hands = LocalPlayer():GetHands()
		local currig = GetConVar("pb_codww2_rig"):GetInt()

		if GetConVar("pb_codww2_rig_use_gmod_hands"):GetInt() == 1 then // gmod hands
			if !self.Hands or !self.CODWW2_Linker then
				self:_CreateHands()
			end

            self.CODWW2_Linker:SetModel( "models/codww2/hands/c_codww2_to_gmod_hands.mdl" ) // gmod linker
			self.Hands:SetModel( gmod_hands:GetModel() )
			self.Hands:SetupBones()
			self.Hands:SetParent(self.CODWW2_Linker)
			self:_CopyBodyGroups(gmod_hands, self.Hands)
		else
			if !self.Hands then
				self:_CreateHands()
			end

			self.Hands:SetModel(PHUNBASE.CODWW2.RIGS[currig].model)
			self.Hands:SetupBones()
			self.Hands:SetParent(self.VM)
		end
	end
end

function SWEP:_drawHands()
	if self.Hands then
		if GetConVar("pb_codww2_rig_use_gmod_hands"):GetInt() == 1 then // gmod hands
			self.Hands.GetPlayerColor = self._GetPlayerColor
		end
		self.Hands:DrawModel()
	end
end
