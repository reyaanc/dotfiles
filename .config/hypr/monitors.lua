-- Monitor configuration
-- Display: LG HDR 4K (DP-1) -- 27", 3840x2160 @ 60Hz, ~163 DPI

hl.monitor({
    output   = "DP-1",
    mode     = "3840x2160@60",
    position = "0x0",
    scale    = 1.5,
})

-- Fallback
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})
