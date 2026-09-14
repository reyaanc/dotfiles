local mainMod = "SUPER"

hl.on("hyprland.start", function()
  hl.exec_cmd("systemctl --user start vicinae.service")
end)

-- use whatever shortcut floats your boat
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd("vicinae toggle"))

-- blur
hl.layer_rule({
  match = { namespace = "vicinae" },
  name = "vicinae-blur",
  blur = true,
  ignore_alpha = 0,
})

-- disable animation for vicinae only
hl.layer_rule({
  match = { namespace = "vicinae" },
  name = "vicinae-no-animation",
  no_anim = true,
})

