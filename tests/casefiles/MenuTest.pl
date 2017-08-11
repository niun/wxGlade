#!/usr/bin/perl -w -- 
#
# generated by wxGlade 0.7.2 on Tue Aug 08 23:40:12 2017
#
# To get wxPerl visit http://www.wxperl.it
#

use Wx qw[:allclasses];
use strict;

# begin wxGlade: dependencies
# end wxGlade

# begin wxGlade: extracode
# end wxGlade

package MenuTestFrame;

use Wx qw[:everything];
use base qw(Wx::Frame);
use strict;

sub new {
    my( $self, $parent, $id, $title, $pos, $size, $style, $name ) = @_;
    $parent = undef              unless defined $parent;
    $id     = -1                 unless defined $id;
    $title  = ""                 unless defined $title;
    $pos    = wxDefaultPosition  unless defined $pos;
    $size   = wxDefaultSize      unless defined $size;
    $name   = ""                 unless defined $name;

    # begin wxGlade: MenuTestFrame::new
    $style = wxDEFAULT_FRAME_STYLE
        unless defined $style;

    $self = $self->SUPER::new( $parent, $id, $title, $pos, $size, $style, $name );
    

    # Menu Bar

    $self->{test_menubar} = Wx::MenuBar->new();
    use constant mn_ID1 => Wx::NewId();
    use constant mn_ID2 => Wx::NewId();
    use constant mn_ID3 => Wx::NewId();
    use constant mn_ID4 => Wx::NewId();
    use constant mn_ID1C => Wx::NewId();
    use constant mn_ID2C => Wx::NewId();
    use constant mn_ID3C => Wx::NewId();
    use constant mn_ID4C => Wx::NewId();
    use constant mn_ID1R => Wx::NewId();
    use constant mn_ID2R => Wx::NewId();
    use constant mn_ID3R => Wx::NewId();
    use constant mn_ID4R => Wx::NewId();
    my $wxglade_tmp_menu;
    $wxglade_tmp_menu = Wx::Menu->new();
    $wxglade_tmp_menu->Append(wxID_OPEN, "&Open", "Stock ID");
    $wxglade_tmp_menu->Append(wxID_HELP, "Manual", "Stock ID, handler");
    $self->{m_Close} = $wxglade_tmp_menu->Append(wxID_CLOSE, "&Close file", "Stock ID, name, handler");
    $self->{m_Exit} = $wxglade_tmp_menu->Append(wxID_EXIT, "E&xit", "Stock ID, name");
    $wxglade_tmp_menu->AppendSeparator();
    $wxglade_tmp_menu->Append(wxID_OPEN, "&Open", "Stock ID", 1);
    $wxglade_tmp_menu->Append(wxID_HELP, "Manual", "Stock ID, handler", 1);
    $self->{m_Close} = $wxglade_tmp_menu->Append(wxID_CLOSE, "&Close file", "Stock ID, name, handler", 1);
    $self->{m_Exit} = $wxglade_tmp_menu->Append(wxID_EXIT, "E&xit", "Stock ID, name", 1);
    my $wxglade_tmp_menu_sub;
    $wxglade_tmp_menu_sub = Wx::Menu->new();
    $wxglade_tmp_menu_sub->Append(wxID_OPEN, "&Open", "Stock ID", 2);
    $wxglade_tmp_menu_sub->Append(wxID_HELP, "Manual", "Stock ID, handler", 2);
    $self->{m_Close} = $wxglade_tmp_menu_sub->Append(wxID_CLOSE, "&Close file", "Stock ID, name, handler", 2);
    $self->{m_Exit} = $wxglade_tmp_menu_sub->Append(wxID_EXIT, "E&xit", "Stock ID, name", 2);
    $wxglade_tmp_menu->Append(wxID_ANY, "Radio", $wxglade_tmp_menu_sub, "");
    $self->{test_menubar}->Append($wxglade_tmp_menu, "&Stock IDs");
    $wxglade_tmp_menu = Wx::Menu->new();
    $wxglade_tmp_menu->Append(mn_ID1, "Named 1", "Named ID");
    $wxglade_tmp_menu->Append(mn_ID2, "Named 2", "Named ID, handler");
    $self->{m_named} = $wxglade_tmp_menu->Append(mn_ID3, "Named 3", "Named ID, name, handler");
    $self->{m_named4} = $wxglade_tmp_menu->Append(mn_ID4, "Named 4", "Named ID, name");
    $wxglade_tmp_menu->AppendSeparator();
    $wxglade_tmp_menu->Append(mn_ID1C, "Named 1", "Named ID", 1);
    $wxglade_tmp_menu->Append(mn_ID2C, "Named 2", "Named ID, handler", 1);
    $self->{m_named3C} = $wxglade_tmp_menu->Append(mn_ID3C, "Named 3", "Named ID, name, handler", 1);
    $self->{m_named4C} = $wxglade_tmp_menu->Append(mn_ID4C, "Named 4", "Named ID, name", 1);
    $wxglade_tmp_menu_sub = Wx::Menu->new();
    $wxglade_tmp_menu_sub->Append(mn_ID1R, "Named 1", "Named ID", 2);
    $wxglade_tmp_menu_sub->Append(mn_ID2R, "Named 2", "Named ID, handler", 2);
    $self->{m_named3R} = $wxglade_tmp_menu_sub->Append(mn_ID3R, "Named 3", "Named ID, name, handler", 2);
    $self->{m_named4R} = $wxglade_tmp_menu_sub->Append(mn_ID4R, "Named 4", "Named ID, name", 2);
    $wxglade_tmp_menu->Append(wxID_ANY, "Radio", $wxglade_tmp_menu_sub, "");
    $self->{test_menubar}->Append($wxglade_tmp_menu, "&Named ID");
    $wxglade_tmp_menu = Wx::Menu->new();
    $wxglade_tmp_menu->Append(wxID_ANY, "Auto 1", "Auto ID");
    $wxglade_tmp_menu->Append(wxID_ANY, "Auto 2", "Auto ID, handler");
    $self->{m_auto3} = $wxglade_tmp_menu->Append(wxID_ANY, "Auto 3", "Auto ID, name, handler");
    $self->{m_auto4} = $wxglade_tmp_menu->Append(wxID_ANY, "Auto 4", "Auto ID, name");
    $wxglade_tmp_menu->AppendSeparator();
    $wxglade_tmp_menu->Append(wxID_ANY, "Auto 1", "Auto ID", 1);
    $wxglade_tmp_menu->Append(wxID_ANY, "Auto 2", "Auto ID, handler", 1);
    $self->{m_auto3C} = $wxglade_tmp_menu->Append(wxID_ANY, "Auto 3", "Auto ID, name, handler", 1);
    $self->{m_auto4C} = $wxglade_tmp_menu->Append(wxID_ANY, "Auto 4", "Auto ID, name", 1);
    $wxglade_tmp_menu_sub = Wx::Menu->new();
    $wxglade_tmp_menu_sub->Append(wxID_ANY, "Auto 1", "Auto ID", 2);
    $wxglade_tmp_menu_sub->Append(wxID_ANY, "Auto 2", "Auto ID, handler", 2);
    $self->{m_auto3R} = $wxglade_tmp_menu_sub->Append(wxID_ANY, "Auto 3", "Auto ID, name, handler", 2);
    $self->{m_auto4R} = $wxglade_tmp_menu_sub->Append(wxID_ANY, "Auto 4", "Auto ID, name", 2);
    $wxglade_tmp_menu->Append(wxID_ANY, "Radio", $wxglade_tmp_menu_sub, "");
    $self->{test_menubar}->Append($wxglade_tmp_menu, "&Auto ID");
    $wxglade_tmp_menu = Wx::Menu->new();
    $wxglade_tmp_menu->Append(Wx::NewId(), "Minus1 1", "Minus1 ID");
    $wxglade_tmp_menu->Append(Wx::NewId(), "Minus1 2", "Minus1 ID, handler");
    $self->{m_Minus13} = $wxglade_tmp_menu->Append(Wx::NewId(), "Minus1 3", "Minus1 ID, name, handler");
    $self->{m_Minus14} = $wxglade_tmp_menu->Append(Wx::NewId(), "Minus1 4", "Minus1 ID, name");
    $wxglade_tmp_menu->AppendSeparator();
    $wxglade_tmp_menu->Append(Wx::NewId(), "Minus1 1", "Minus1 ID", 1);
    $wxglade_tmp_menu->Append(Wx::NewId(), "Minus1 2", "Minus1 ID, handler", 1);
    $self->{m_Minus13C} = $wxglade_tmp_menu->Append(Wx::NewId(), "Minus1 3", "Minus1 ID, name, handler", 1);
    $self->{m_Minus14C} = $wxglade_tmp_menu->Append(Wx::NewId(), "Minus1 4", "Minus1 ID, name", 1);
    $wxglade_tmp_menu_sub = Wx::Menu->new();
    $wxglade_tmp_menu_sub->Append(Wx::NewId(), "Minus1 1", "Minus1 ID", 2);
    $wxglade_tmp_menu_sub->Append(Wx::NewId(), "Minus1 2", "Minus1 ID, handler", 2);
    $self->{m_Minus13R} = $wxglade_tmp_menu_sub->Append(Wx::NewId(), "Minus1 3", "Minus1 ID, name, handler", 2);
    $self->{m_Minus14R} = $wxglade_tmp_menu_sub->Append(Wx::NewId(), "Minus1 4", "Minus1 ID, name", 2);
    $wxglade_tmp_menu->Append(wxID_ANY, "Radio", $wxglade_tmp_menu_sub, "");
    $self->{test_menubar}->Append($wxglade_tmp_menu, "&Minus1 ID");
    $self->SetMenuBar($self->{test_menubar});
    
    # Menu Bar end


    $self->__set_properties();
    $self->__do_layout();

    Wx::Event::EVT_MENU($self, wxID_HELP, $self->can('onShowManual'));
    Wx::Event::EVT_MENU($self, $self->{m_Close}->GetId, $self->can('onCloseFile'));
    Wx::Event::EVT_MENU($self, $self->{---}->GetId, $self->can('---'));
    Wx::Event::EVT_MENU($self, wxID_HELP, $self->can('onShowManual'));
    Wx::Event::EVT_MENU($self, $self->{m_Close}->GetId, $self->can('onCloseFile'));
    Wx::Event::EVT_MENU($self, wxID_HELP, $self->can('onShowManual'));
    Wx::Event::EVT_MENU($self, $self->{m_Close}->GetId, $self->can('onCloseFile'));
    Wx::Event::EVT_MENU($self, mn_ID2, $self->can('on_named2'));
    Wx::Event::EVT_MENU($self, $self->{m_named}->GetId, $self->can('on_named3'));
    Wx::Event::EVT_MENU($self, $self->{---}->GetId, $self->can('---'));
    Wx::Event::EVT_MENU($self, mn_ID2C, $self->can('on_named2'));
    Wx::Event::EVT_MENU($self, $self->{m_named3C}->GetId, $self->can('on_named3'));
    Wx::Event::EVT_MENU($self, mn_ID2R, $self->can('on_named2'));
    Wx::Event::EVT_MENU($self, $self->{m_named3R}->GetId, $self->can('on_named3'));
    Wx::Event::EVT_MENU($self, wxID_ANY, $self->can('on_auto2'));
    Wx::Event::EVT_MENU($self, $self->{m_auto3}->GetId, $self->can('on_auto3'));
    Wx::Event::EVT_MENU($self, $self->{---}->GetId, $self->can('---'));
    Wx::Event::EVT_MENU($self, wxID_ANY, $self->can('on_auto2'));
    Wx::Event::EVT_MENU($self, $self->{m_auto3C}->GetId, $self->can('on_auto3'));
    Wx::Event::EVT_MENU($self, wxID_ANY, $self->can('on_auto2'));
    Wx::Event::EVT_MENU($self, $self->{m_auto3R}->GetId, $self->can('on_auto3'));
    Wx::Event::EVT_MENU($self, -1, $self->can('on_Minus12'));
    Wx::Event::EVT_MENU($self, $self->{m_Minus13}->GetId, $self->can('on_Minus13'));
    Wx::Event::EVT_MENU($self, $self->{---}->GetId, $self->can('---'));
    Wx::Event::EVT_MENU($self, -1, $self->can('on_Minus12'));
    Wx::Event::EVT_MENU($self, $self->{m_Minus13C}->GetId, $self->can('on_Minus13'));
    Wx::Event::EVT_MENU($self, -1, $self->can('on_Minus12'));
    Wx::Event::EVT_MENU($self, $self->{m_Minus13R}->GetId, $self->can('on_Minus13'));

    # end wxGlade
    return $self;

}


sub __set_properties {
    my $self = shift;
    # begin wxGlade: MenuTestFrame::__set_properties
    $self->SetTitle("All Widgets");
    my $icon = &Wx::wxNullIcon;
    $icon->CopyFromBitmap(Wx::ArtProvider::GetBitmap(wxART_TIP, wxART_OTHER, Wx::Size->new(32, 32)));
    $self->SetIcon($icon);
    $self->SetSize(Wx::Size->new(800, 417));
    # end wxGlade
}

sub __do_layout {
    my $self = shift;
    # begin wxGlade: MenuTestFrame::__do_layout
    $self->Layout();
    $self->Centre();
    # end wxGlade
}

sub onShowManual {
    my ($self, $event) = @_;
    # wxGlade: MenuTestFrame::onShowManual <event_handler>
    warn "Event handler (onShowManual) not implemented";
    $event->Skip;
    # end wxGlade
}


sub onCloseFile {
    my ($self, $event) = @_;
    # wxGlade: MenuTestFrame::onCloseFile <event_handler>
    warn "Event handler (onCloseFile) not implemented";
    $event->Skip;
    # end wxGlade
}


sub --- {
    my ($self, $event) = @_;
    # wxGlade: MenuTestFrame::--- <event_handler>
    warn "Event handler (---) not implemented";
    $event->Skip;
    # end wxGlade
}


sub on_named2 {
    my ($self, $event) = @_;
    # wxGlade: MenuTestFrame::on_named2 <event_handler>
    warn "Event handler (on_named2) not implemented";
    $event->Skip;
    # end wxGlade
}


sub on_named3 {
    my ($self, $event) = @_;
    # wxGlade: MenuTestFrame::on_named3 <event_handler>
    warn "Event handler (on_named3) not implemented";
    $event->Skip;
    # end wxGlade
}


sub on_auto2 {
    my ($self, $event) = @_;
    # wxGlade: MenuTestFrame::on_auto2 <event_handler>
    warn "Event handler (on_auto2) not implemented";
    $event->Skip;
    # end wxGlade
}


sub on_auto3 {
    my ($self, $event) = @_;
    # wxGlade: MenuTestFrame::on_auto3 <event_handler>
    warn "Event handler (on_auto3) not implemented";
    $event->Skip;
    # end wxGlade
}


sub on_Minus12 {
    my ($self, $event) = @_;
    # wxGlade: MenuTestFrame::on_Minus12 <event_handler>
    warn "Event handler (on_Minus12) not implemented";
    $event->Skip;
    # end wxGlade
}


sub on_Minus13 {
    my ($self, $event) = @_;
    # wxGlade: MenuTestFrame::on_Minus13 <event_handler>
    warn "Event handler (on_Minus13) not implemented";
    $event->Skip;
    # end wxGlade
}


# end of class MenuTestFrame

1;

package MenuTestClass;

use base qw(Wx::App);
use strict;

sub OnInit {
    my( $self ) = shift;

    Wx::InitAllImageHandlers();

    my $MenuTest = MenuTestFrame->new();

    $self->SetTopWindow($MenuTest);
    $MenuTest->Show(1);

    return 1;
}
# end of class MenuTestClass

package main;

unless(caller){
    my $MenuTest = MenuTestClass->new();
    $MenuTest->MainLoop();
}