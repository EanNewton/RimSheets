#############################################################################
# Generated by PAGE version 5.4
#  in conjunction with Tcl version 8.6
#  Aug 23, 2020 02:42:29 PM EDT  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    tk_messageBox -title Error -message  "You must open project files from within PAGE."
    exit}


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ffffff
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(pr,menufgcolor) #000000
set vTcl(pr,menubgcolor) #d9d9d9
set vTcl(pr,menuanalogcolor) #ececec
set vTcl(pr,treehighlight) firebrick
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top44 {base} {
    global vTcl
    if {$base == ""} {
        set base .top44
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m74" -background $vTcl(actual_gui_bg) 
    wm focusmodel $top passive
    wm geometry $top 630x486+951+424
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 2545 1570
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "New Toplevel"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    button $top.but45 \
        -background $vTcl(actual_gui_bg) -command run -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Start \
        -textvariable {{}} 
    vTcl:DefineAlias "$top.but45" "Button1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab46 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text {Files to Scan} 
    vTcl:DefineAlias "$top.lab46" "Label1" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab53 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text {Timeout (0 = none)} 
    vTcl:DefineAlias "$top.lab53" "Label3" vTcl:WidgetProc "Toplevel1" 1
    entry $top.ent55 \
        -background white -font TkFixedFont -foreground $vTcl(actual_gui_fg) \
        -insertbackground black -textvariable eb_timeout -width 10 
    vTcl:DefineAlias "$top.ent55" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che57 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -text {Output as single file?} -variable che57 
    vTcl:DefineAlias "$top.che57" "Checkbutton4" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe59
    vTcl:DefineAlias "$top.tSe59" "TSeparator1" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe61 \
        -orient vertical 
    vTcl:DefineAlias "$top.tSe61" "TSeparator2" vTcl:WidgetProc "Toplevel1" 1
    ttk::separator $top.tSe62
    vTcl:DefineAlias "$top.tSe62" "TSeparator3" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab63 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Options 
    vTcl:DefineAlias "$top.lab63" "Label2" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che64 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -variable che64 
    vTcl:DefineAlias "$top.che64" "Checkbutton1" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che65 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -variable che65 
    vTcl:DefineAlias "$top.che65" "Checkbutton2" vTcl:WidgetProc "Toplevel1" 1
    checkbutton $top.che66 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -justify left \
        -variable che66 
    vTcl:DefineAlias "$top.che66" "Checkbutton3" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab67 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Core 
    vTcl:DefineAlias "$top.lab67" "Label4" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab68 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text Royal 
    vTcl:DefineAlias "$top.lab68" "Label5" vTcl:WidgetProc "Toplevel1" 1
    label $top.lab69 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -text {Steam Workshop} 
    vTcl:DefineAlias "$top.lab69" "Label6" vTcl:WidgetProc "Toplevel1" 1
    ttk::progressbar $top.tPr72 \
        -length 600 
    vTcl:DefineAlias "$top.tPr72" "TProgressbar1" vTcl:WidgetProc "Toplevel1" 1
    menu $top.m74 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(pr,menubgcolor) -font TkMenuFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 0 
    message $top.mes75 \
        -background $vTcl(actual_gui_bg) -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text Message \
        -textvariable msg_output -width 302 
    vTcl:DefineAlias "$top.mes75" "Message1" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.but45 \
        -in $top -x 0 -relx 0.429 -y 0 -rely 0.603 -height 31 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab46 \
        -in $top -x 0 -relx 0.096 -y 0 -rely 0.044 -width 0 -relwidth 0.145 \
        -height 0 -relheight 0.069 -anchor nw -bordermode ignore 
    place $top.lab53 \
        -in $top -x 0 -relx 0.433 -y 0 -rely 0.178 -width 0 -relwidth 0.22 \
        -height 0 -relheight 0.047 -anchor nw -bordermode ignore 
    place $top.ent55 \
        -in $top -x 0 -relx 0.717 -y 0 -rely 0.178 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.che57 \
        -in $top -x 0 -relx 0.417 -y 0 -rely 0.267 -width 0 -relwidth 0.278 \
        -height 0 -relheight 0.051 -anchor nw -bordermode ignore 
    place $top.tSe59 \
        -in $top -x 0 -y 0 -rely 0.133 -width 0 -relwidth 1.017 -anchor nw \
        -bordermode inside 
    place $top.tSe61 \
        -in $top -x 0 -relx 0.367 -y 0 -height 0 -relheight 0.556 -anchor nw \
        -bordermode inside 
    place $top.tSe62 \
        -in $top -x 0 -y 0 -rely 0.556 -width 0 -relwidth 0.992 -height 0 \
        -relheight 0.004 -anchor nw -bordermode inside 
    place $top.lab63 \
        -in $top -x 0 -relx 0.565 -y 0 -rely 0.044 -width 0 -relwidth 0.138 \
        -height 0 -relheight 0.069 -anchor nw -bordermode ignore 
    place $top.che64 \
        -in $top -x 0 -relx 0.016 -y 0 -rely 0.172 -height 0 -relheight 0.05 \
        -anchor nw -bordermode ignore 
    place $top.che65 \
        -in $top -x 0 -relx 0.016 -y 0 -rely 0.259 -width 0 -relwidth 0.044 \
        -height 0 -relheight 0.05 -anchor nw -bordermode ignore 
    place $top.che66 \
        -in $top -x 0 -relx 0.016 -y 0 -rely 0.345 -width 0 -relwidth 0.044 \
        -height 0 -relheight 0.05 -anchor nw -bordermode ignore 
    place $top.lab67 \
        -in $top -x 0 -relx 0.079 -y 0 -rely 0.172 -width 0 -relwidth 0.056 \
        -height 0 -relheight 0.045 -anchor nw -bordermode ignore 
    place $top.lab68 \
        -in $top -x 0 -relx 0.079 -y 0 -rely 0.259 -width 0 -relwidth 0.065 \
        -height 0 -relheight 0.045 -anchor nw -bordermode ignore 
    place $top.lab69 \
        -in $top -x 0 -relx 0.079 -y 0 -rely 0.345 -height 0 -relheight 0.045 \
        -anchor nw -bordermode ignore 
    place $top.tPr72 \
        -in $top -x 0 -relx 0.032 -y 0 -rely 0.711 -width 0 -relwidth 0.937 \
        -height 0 -relheight 0.041 -anchor nw -bordermode ignore 
    place $top.mes75 \
        -in $top -x 0 -relx 0.238 -y 0 -rely 0.802 -width 0 -relwidth 0.479 \
        -height 0 -relheight 0.093 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top44 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

