"""
Generated by wxGlade 0.2 on Sat Nov 30 15:30:36 2002

updated 2016 Dietmar Schwertberger
@license: MIT (see LICENSE.txt) - THIS PROGRAM COMES WITH NO WARRANTY
"""

import logging
import wx
import misc

_reverse_dict = misc._reverse_dict


class wxGladeFontDialog(wx.Dialog):
    # keep this in sync with new_properties.FontProperty
    font_families_to = { 'default': wx.DEFAULT, 'decorative': wx.DECORATIVE,
                         'roman': wx.ROMAN, 'swiss': wx.SWISS,
                         'script':wx.SCRIPT, 'modern': wx.MODERN }
    font_families_from = _reverse_dict(font_families_to)
    font_styles_to = { 'normal': wx.NORMAL, 'slant': wx.SLANT,
                       'italic': wx.ITALIC }
    font_styles_from = _reverse_dict(font_styles_to)
    font_weights_to = {'normal': wx.NORMAL, 'light': wx.LIGHT, 'bold': wx.BOLD }
    font_weights_from = _reverse_dict(font_weights_to)

    font_families_to['teletype'] = wx.TELETYPE
    font_families_from[wx.TELETYPE] = 'teletype'

    def __init__(self, *args, **kwds):
        kwds["style"] = wx.DEFAULT_DIALOG_STYLE
        wx.Dialog.__init__(self, *args, **kwds)
        self.label_2_copy = wx.StaticText(self, -1, _("Family:"))
        self.label_3_copy = wx.StaticText(self, -1, _("Style:"))
        self.label_4_copy = wx.StaticText(self, -1, _("Weight:"))
        self.family = wx.Choice(self, -1, choices=["Default", "Decorative", "Roman", "Script", "Swiss", "Modern"])
        self.style = wx.Choice(self, -1, choices=["Normal", "Slant", "Italic"])
        self.weight = wx.Choice(self, -1, choices=["Normal", "Light", "Bold"])
        self.label_1 = wx.StaticText(self, -1, _("Size in points:"))
        self.point_size = wx.SpinCtrl(self, -1, "", min=0, max=100)
        self.underline = wx.CheckBox(self, -1, _("Underlined"))
        self.font_btn = wx.Button(self, -1, _("Specific font..."))
        self.static_line_1 = wx.StaticLine(self, -1)
        self.ok_btn = wx.Button(self, wx.ID_OK, _("OK"))
        self.cancel_btn = wx.Button(self, wx.ID_CANCEL, _("Cancel"))

        self.__set_properties()
        self.__do_layout()
        self.value = None
        self.font_btn.Bind(wx.EVT_BUTTON, self.choose_specific_font)
        self.ok_btn.Bind(wx.EVT_BUTTON, self.on_ok)

    def choose_specific_font(self, event):
        data = wx.FontData()
        try:
            family = self.font_families_to[self.value[1]]
            style = self.font_styles_to[self.value[2]]
            weight = self.font_weights_to[self.value[3]]
            font = wx.Font( self.value[0], family, style, weight, self.value[4], self.value[5] )
            data.SetInitialFont(font)
        except AttributeError:
            pass

        dialog = wx.FontDialog(self, data)
        res = dialog.ShowModal()
        font = dialog.GetFontData().GetChosenFont()
        dialog.Destroy()
        if res != wx.ID_OK:
            return

        family = font.GetFamily()
        #for f in (wx.VARIABLE, wx.FIXED):
        #    if family & f: family = family ^ f
        self.value = (font.GetPointSize(),
                      self.font_families_from[family],
                      self.font_styles_from[font.GetStyle()],
                      self.font_weights_from[font.GetWeight()],
                      font.GetUnderlined() and 1 or 0, font.GetFaceName())
        self.EndModal(wx.ID_OK)

    def on_ok(self, event):
        self.EndModal(wx.ID_OK)
        self.value = (self.point_size.GetValue(),
                      self.family.GetStringSelection().lower(),
                      self.style.GetStringSelection().lower(),
                      self.weight.GetStringSelection().lower(),
                      self.underline.GetValue() and 1 or 0, '')

    def get_value(self):
        return self.value

    def set_value(self, props):
        self.value = props[:]
        self.family.SetStringSelection(props[1].capitalize())
        self.style.SetStringSelection(props[2].capitalize())
        self.weight.SetStringSelection(props[3].capitalize())
        try:
            try:
                underline = int(props[4])
            except ValueError:
                if props[4].lower() == "true": underline = 1
                else: underline = 0
            self.underline.SetValue(underline)
            self.point_size.SetValue(int(props[0]))
            self.point_size.SetSelection(-1,-1)
        except ValueError:
            logging.exception(_('Internal Error'))

    def __set_properties(self):
        self.SetTitle(_("Select font attributes"))
        self.family.SetSelection(0)
        self.style.SetSelection(0)
        self.weight.SetSelection(0)
        self.ok_btn.SetDefault()

    def __do_layout(self):
        sizer_1 = wx.BoxSizer(wx.VERTICAL)
        sizer_2 = wx.BoxSizer(wx.VERTICAL)
        sizer_4 = wx.BoxSizer(wx.HORIZONTAL)
        sizer_5 = wx.BoxSizer(wx.VERTICAL)
        grid_sizer_1_copy = wx.FlexGridSizer(2, 3, 2, 10)
        grid_sizer_2_copy = wx.FlexGridSizer(2, 3, 2, 5)
        grid_sizer_2_copy.Add(self.label_2_copy, 0, wx.ALIGN_BOTTOM, 3)
        grid_sizer_2_copy.Add(self.label_3_copy, 0, wx.ALIGN_BOTTOM, 3)
        grid_sizer_2_copy.Add(self.label_4_copy, 0, wx.ALIGN_BOTTOM, 3)
        grid_sizer_2_copy.Add(self.family, 0, wx.EXPAND, 0)
        grid_sizer_2_copy.Add(self.style, 0, wx.EXPAND, 0)
        grid_sizer_2_copy.Add(self.weight, 0, wx.EXPAND, 0)
        grid_sizer_2_copy.AddGrowableCol(0)
        grid_sizer_2_copy.AddGrowableCol(1)
        grid_sizer_2_copy.AddGrowableCol(2)
        sizer_5.Add(grid_sizer_2_copy, 0, wx.EXPAND, 0)
        grid_sizer_1_copy.Add(self.label_1, 0, wx.ALIGN_BOTTOM, 0)
        grid_sizer_1_copy.Add((20, 5), 0, wx.ALIGN_BOTTOM, 0)
        grid_sizer_1_copy.Add((20, 5), 0, wx.ALIGN_BOTTOM, 0)
        grid_sizer_1_copy.Add(self.point_size, 0, 0, 0)
        grid_sizer_1_copy.Add(self.underline, 0, wx.EXPAND, 0)
        grid_sizer_1_copy.Add(self.font_btn, 0, 0, 0)
        grid_sizer_1_copy.AddGrowableCol(1)
        sizer_5.Add(grid_sizer_1_copy, 0, wx.TOP|wx.EXPAND, 3)
        sizer_5.Add(self.static_line_1, 0, wx.TOP|wx.EXPAND, 8)
        sizer_2.Add(sizer_5, 0, wx.EXPAND, 0)
        sizer_4.Add(self.ok_btn, 0, wx.RIGHT, 12)
        sizer_4.Add(self.cancel_btn, 0, 0, 0)
        sizer_2.Add(sizer_4, 0, wx.TOP|wx.ALIGN_RIGHT, 9)
        sizer_1.Add(sizer_2, 1, wx.ALL|wx.EXPAND, 10)
        self.SetAutoLayout(1)
        self.SetSizer(sizer_1)
        sizer_1.Fit(self)
        sizer_1.SetSizeHints(self)
        self.Layout()
        self.CenterOnScreen()

