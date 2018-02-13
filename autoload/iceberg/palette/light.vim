function! iceberg#palette#light#create() abort
  let hue_base = 230

  let hue_red    = 0
  let hue_orange = 25
  let hue_green  = 100
  let hue_lblue  = 195
  let hue_blue   = 220
  let hue_purple = 270

  " gui {{{
  let g = {}

  " palette
  let g.blue   = pgmnt#color#hsl(hue_blue,   0.50, 0.48)
  let g.green  = pgmnt#color#hsl(hue_green,  0.43, 0.43)
  let g.lblue  = pgmnt#color#hsl(hue_lblue,  0.43, 0.45)
  let g.orange = pgmnt#color#hsl(hue_orange, 0.55, 0.50)
  let g.purple = pgmnt#color#hsl(hue_purple, 0.43, 0.53)
  let g.red    = pgmnt#color#hsl(hue_red,    0.60, 0.65)

  " normal
  let g.normal_bg = pgmnt#color#hsl(hue_base, 0.15, 0.92)
  let g.normal_fg = pgmnt#color#hsl(hue_base, 0.20, 0.25)

  " linenr
  let g.linenr_bg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.05,
        \   'lightness': -0.03,
        \ })
  let g.linenr_fg = pgmnt#color#darken(g.linenr_bg, 0.20)
  let g.cursorlinenr_bg = pgmnt#color#adjust_color(
        \ g.linenr_bg, {
        \   'saturation': +0.05,
        \   'lightness': -0.05,
        \ })
  let g.cursorlinenr_fg = pgmnt#color#adjust_color(
        \ g.linenr_fg, {
        \   'saturation': +0.10, 
        \   'lightness': -0.20,
        \ })

  " diff
  let g.diffadd_bg = pgmnt#color#mix(g.green, g.normal_bg, 0.30)
  let g.diffadd_fg = pgmnt#color#mix(g.green, g.normal_fg, 0.40)
  let g.diffchange_bg = pgmnt#color#mix(g.lblue, g.normal_bg, 0.30)
  let g.diffchange_fg = pgmnt#color#mix(g.lblue, g.normal_fg, 0.40)
  let g.diffdelete_bg = pgmnt#color#mix(g.red, g.normal_bg, 0.30)
  let g.diffdelete_fg = pgmnt#color#mix(g.red, g.normal_fg, 0.40)
  let g.difftext_bg = pgmnt#color#mix(g.lblue, g.normal_bg, 0.50)
  let g.difftext_fg = g.normal_fg

  " statusline
  let g.statusline_bg = pgmnt#color#hsl(hue_base, 0.20, 0.70)
  let g.statusline_fg = pgmnt#color#hsl(hue_base, 0.20, 0.40)
  let g.statuslinenc_bg = g.cursorlinenr_bg
  let g.statuslinenc_fg = pgmnt#color#darken(g.statuslinenc_bg, 0.20)

  " pmenu
  let g.pmenu_bg = g.cursorlinenr_bg
  let g.pmenu_fg = g.normal_fg
  let g.pmenusel_bg = pgmnt#color#adjust_color(
        \ g.pmenu_bg, {
        \   'saturation': +0.05,
        \   'lightness': -0.1,
        \ })
  let g.pmenusel_fg = g.normal_fg

  " misc
  let g.comment_fg = pgmnt#color#hsl(hue_base, 0.20, 0.63)
  let g.cursorline_bg = g.linenr_bg
  let g.folded_bg = g.linenr_bg
  let g.folded_fg = pgmnt#color#adjust_color(
        \ g.folded_bg, {
        \   'saturation': -0.05,
        \   'lightness': -0.35,
        \ })
  let g.matchparen_bg = pgmnt#color#darken(g.normal_bg, 0.20)
  let g.matchparen_fg = pgmnt#color#darken(g.normal_fg, 0.50)
  let g.search_bg = pgmnt#color#hsl(hue_orange, 0.60, 0.80)
  let g.search_fg = pgmnt#color#hsl(hue_orange, 0.50, 0.35)
  let g.specialkey_fg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.08,
        \   'lightness': -0.09,
        \ })
  let g.todo_fg = pgmnt#color#hsl(hue_green, 0.50, 0.55)
  let g.visual_bg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': +0.05,
        \   'lightness': -0.10,
        \ })
  let g.wildmenu_bg = pgmnt#color#darken(g.statusline_bg, 0.30)
  let g.wildmenu_fg = g.statusline_fg

  " airline/lightline
  let g.xline_base_bg = pgmnt#color#darken(g.normal_bg, 0.15)
  let g.xline_base_fg = pgmnt#color#adjust_color(
        \ g.normal_bg, {
        \   'saturation': -0.10,
        \   'lightness': -0.35,
        \ })
  let g.xline_edge_bg = g.statusline_bg
  let g.xline_edge_fg = g.statusline_fg
  let g.xline_gradient_bg = pgmnt#color#mix(g.xline_base_bg, g.xline_edge_bg, 0.50)
  let g.xline_gradient_fg = g.xline_edge_fg

  " plugins
  let g.easymotion_shade_fg = pgmnt#color#hsl(hue_base, 0.20, 0.30)
  " }}}

  " cterm {{{
  let c = {}

  " palette
  let c.blue = 110
  let c.green = 150
  let c.lblue = 109
  let c.orange = 216
  let c.purple = 140
  let c.red = 203

  " normal
  let c.normal_bg = 234
  let c.normal_fg = 252

  " linenr
  let c.linenr_bg = 235
  let c.linenr_fg = 239
  let c.cursorlinenr_bg = 237
  let c.cursorlinenr_fg = 253

  " diff
  let c.diffadd_bg = 29
  let c.diffadd_fg = 158
  let c.diffchange_bg = 23
  let c.diffchange_fg = 159
  let c.diffdelete_bg = 95
  let c.diffdelete_fg = 224
  let c.difftext_bg = 30
  let c.difftext_fg = 195

  " statusline
  let c.statusline_bg = 245
  let c.statusline_fg = 234
  let c.statuslinenc_bg = 233
  let c.statuslinenc_fg = 238

  " pmenu
  let c.pmenu_bg = 236
  let c.pmenu_fg = 251
  let c.pmenusel_bg = 240
  let c.pmenusel_fg = 255

  " misc
  let c.comment_fg = 242
  let c.cursorline_bg = c.linenr_bg
  let c.folded_bg = c.linenr_bg
  let c.folded_fg = 245
  let c.matchparen_bg = 237
  let c.matchparen_fg = 255
  let c.search_bg = c.orange
  let c.search_fg = c.normal_bg
  let c.specialkey_fg = 236
  let c.todo_fg = c.green
  let c.visual_bg = 236
  let c.wildmenu_bg = 255
  let c.wildmenu_fg = c.statusline_fg

  " airline/lightline
  let c.xline_base_bg = 237
  let c.xline_base_fg = 243
  let c.xline_edge_bg = c.statusline_bg
  let c.xline_edge_fg = c.statusline_fg
  let c.xline_gradient_bg = 241
  let c.xline_gradient_fg = c.xline_edge_fg

  " plugins
  let c.easymotion_shade_fg = 239
  " }}}

  return {
        \   'cterm': c,
        \   'gui': g,
        \ }
endfunction

