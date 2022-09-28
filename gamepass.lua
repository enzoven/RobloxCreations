local GPassId = 0 -- Replace 0 with your gamepass ID

script.Parent.ClickDetector.MouseClick:connect(function(plr)
    if game.MarketplaceService:UserOwnsGamePassAsync(plr.UserId, GPassId) then -- If player owns the gamepass
      
      script.Parent.Sound:Play()
      plr.Backpack.Needlegun.Needle.bio.Virus.Value = game.Lighting.Virus -- Collect the effect
      
    else -- If player don't own the gamepass
      
      game.MarketplaceService:PromptGamePassPurchase(plr, GPassId) -- Buy button appears
    
    end
  end)
