-- Agent Gallery: open the current review set.
-- Replaces Omarchy's default SUPER+G window-grouping toggle; pick another key
-- if you use grouping.
hl.unbind("SUPER + G")
o.bind("SUPER + G", "Agent gallery", "agent-gallery view")
