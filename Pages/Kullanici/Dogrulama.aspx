<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Dogrulama.aspx.cs" Inherits="SiteProje.Pages.Kullanici.Dogrulama" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
    <div class="grid grid_12">

                                
                                
                                <strong class="nicdark_color_white nicdark_font_size_60 nicdark_first_font">Verify Your Account</strong>
                                <div class="nicdark_section nicdark_height_20"></div>

                            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
     <a href="/Home">HomePage</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="#">Verify Your Account</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
    <div class="grid grid_12">

                                <h3><strong>Member Login</strong></h3>
                                <div class="nicdark_section nicdark_height_20"></div>

                                <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                    <img alt="" class="nicdark_position_absolute nicdark_top_0 nicdark_left_0 nicdark_margin_top_20" width="15" src="/Content/Language/img/icons/icon-email-grey.svg">
                                    <asp:TextBox CssClass="nicdark_padding_left_25 nicdark_border_width_2 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0"  ID="txtKullaniciAdi" runat="server" placeholder="E-Mail"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-Mail area is empty.Please Check E-Mail Area !" ValidationGroup="lgn" ControlToValidate="txtKullaniciAdi"> </asp:RequiredFieldValidator>
                                </div>
                                <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                    <img alt="" class="nicdark_position_absolute nicdark_top_0 nicdark_left_0 nicdark_margin_top_20" width="15" src="/Content/Language/img/icons/icon-pen.svg">
                                   <asp:TextBox CssClass="nicdark_padding_left_25 nicdark_border_width_2 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0"  ID="txtSifre" runat="server"   TextMode="Password" placeholder="Şifre"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password area is empty.Please Check Password Area !" ValidationGroup="lgn" ControlToValidate="txtSifre"></asp:RequiredFieldValidator>
                                </div>
         <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                    <img alt="" class="nicdark_position_absolute nicdark_top_0 nicdark_left_0 nicdark_margin_top_20" width="15" src="/Content/Language/img/icons/icon-pen.svg">
                                   <asp:TextBox CssClass="nicdark_padding_left_25 nicdark_border_width_2 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0"  ID="txtVerify" runat="server"  placeholder="Confirmation Code"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirmation Code area is empty.Please Check This Area !" ValidationGroup="lgn" ControlToValidate="txtVerify"></asp:RequiredFieldValidator>
                                </div>
                                <div class="nicdark_section">
                                    <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left">
                                        <asp:Button ID="BtnGiris" cssclass="nicdark_display_inline_block nicdark_color_white nicdark_bg_blue nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 " runat="server" ValidationGroup="lgn" Text="Log In And Verify" OnClick="BtnGiris_Click" />
                                        
                                    </div>
                                </div>

                                <div class="nicdark_section nicdark_height_50"></div>
        <div class="nicdark_section">
                                        <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left">
                                           
                                                <asp:ValidationSummary ID="ValidationSummary1" CssClass="nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_red nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 " ValidationGroup="lgn" runat="server" />
                                                <asp:Literal ID="LtrBilgi" runat="server"></asp:Literal>
                                                
                                           
                                        </div>
                                    </div>

                            </div>
    
</asp:Content>