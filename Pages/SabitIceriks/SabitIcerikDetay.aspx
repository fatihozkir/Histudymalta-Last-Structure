<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="SabitIcerikDetay.aspx.cs" Inherits="SiteProje.Pages.SabitIceriks.SabitIcerikDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
     <div class="grid grid_12">

                                
                                
                                <strong class="nicdark_color_white nicdark_font_size_60 nicdark_first_font">About Me</strong>
                                <div class="nicdark_section nicdark_height_20"></div>

                            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
    <a href="/Home">HomePage</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="#">About Me</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
    <div class="grid grid_1">

    </div>
    <div class="grid grid_10">
        <div class="nicdark_width_100_percentage nicdark_float_left">
    <h3><strong>
        <asp:Label ID="LblBaslik" runat="server" Text="Label"></asp:Label></strong></h3>
    <div class="nicdark_section nicdark_height_20"></div>
    <p>
        <asp:Literal ID="LtrIcerik" runat="server"></asp:Literal></p>

    
</div>
    </div>
      
</asp:Content>
