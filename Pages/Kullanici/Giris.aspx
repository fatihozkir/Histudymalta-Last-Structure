<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="SiteProje.Pages.Kullanıcı.Giris" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <script>
        $("#BtnGiris").click(function () {
            var kullaniciAdi = $("#txtKullaniciAdi");
            var sifre = $("#txtSifre");
            if (isNaN(kullaniciAdi.val()) || isNaN(sifre.val()))
            {
                kullaniciAdi.css("background-color", "maroon");
                kullaniciAdi.text("Kullanıcı Adını Giriniz");
                sifre.css("border", "1px solid maroon");
                sifre.text("Şifre Giriniz");
            }
            else
            {
                return;
            }
        });
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
    <div class="grid grid_12">

                                
                                
                                <strong class="nicdark_color_white nicdark_font_size_60 nicdark_first_font">Log In & Register</strong>
                                <div class="nicdark_section nicdark_height_20"></div>

                            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
     <a href="/Home">HomePage</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="/Login">Log In & Register</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
    <div class="grid grid_6">

                                <h3><strong>Member Login</strong></h3>
                                <div class="nicdark_section nicdark_height_20"></div>

                                <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                    <img alt="" class="nicdark_position_absolute nicdark_top_0 nicdark_left_0 nicdark_margin_top_20" width="15" src="/Content/Language/img/icons/icon-email-grey.svg">
                                    <asp:TextBox CssClass="nicdark_padding_left_25 nicdark_border_width_2 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0"  ID="txtKullaniciAdi" runat="server" placeholder="E-Mail"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-Mail area is empty.Please Check E-Mail Area !" ValidationGroup="lgn" ControlToValidate="txtKullaniciAdi"> </asp:RequiredFieldValidator>
                                </div>
                                <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                    <img alt="" class="nicdark_position_absolute nicdark_top_0 nicdark_left_0 nicdark_margin_top_20" width="15" src="/Content/Language/img/icons/icon-pen.svg">
                                   <asp:TextBox CssClass="nicdark_padding_left_25 nicdark_border_width_2 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0"  ID="txtSifre" runat="server"   TextMode="Password" placeholder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password area is empty.Please Check Password Area !" ValidationGroup="lgn" ControlToValidate="txtSifre"></asp:RequiredFieldValidator>
                                </div>
                                <div class="nicdark_section">
                                    <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left">
                                        <asp:Button ID="BtnGiris" cssclass="nicdark_display_inline_block nicdark_color_white nicdark_bg_blue nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 " runat="server" ValidationGroup="lgn" Text="Log In" OnClick="BtnGiris_Click" />
                                        
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
    <div class="grid grid_6">

                                <h3><strong>Register</strong></h3>
                                <div class="nicdark_section nicdark_height_20"></div>

                                <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                    <img alt="" class="nicdark_position_absolute nicdark_top_0 nicdark_left_0 nicdark_margin_top_20" width="15" src="/Content/Language/img/icons/icon-user-grey.svg">
                                    <asp:TextBox CssClass="nicdark_padding_left_25 nicdark_border_width_2 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0"  ID="txtKayitAdi" runat="server"   placeholder="Name"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Name area is empty.Please Check Name Area !" ValidationGroup="lgnKayit" ControlToValidate="txtKayitAdi"> </asp:RequiredFieldValidator>
                                </div>
                                <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                    <img alt="" class="nicdark_position_absolute nicdark_top_0 nicdark_left_0 nicdark_margin_top_20" width="15" src="/Content/Language/img/icons/icon-user-grey.svg">
                                   <asp:TextBox CssClass="nicdark_padding_left_25 nicdark_border_width_2 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0"  ID="txtKayitSoyad" runat="server"  placeholder="Surname"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Surname area is empty.Please Check Surname Area !" ValidationGroup="lgnKayit" ControlToValidate="txtKayitSoyad"> </asp:RequiredFieldValidator>
                                </div>
         <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                    <img alt="" class="nicdark_position_absolute nicdark_top_0 nicdark_left_0 nicdark_margin_top_20" width="15" src="/Content/Language/img/icons/icon-email-grey.svg">
                                   <asp:TextBox CssClass="nicdark_padding_left_25 nicdark_border_width_2 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0"  ID="txtKayitMail" runat="server"  placeholder="E-Mail"></asp:TextBox>

                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="E-Mail area is empty. Please Check E-Mail Area !" ValidationGroup="lgnKayit" ControlToValidate="txtKayitMail"> </asp:RequiredFieldValidator>               
             &nbsp;
             <asp:RegularExpressionValidator ValidationGroup="lgnKayit" ControlToValidate="txtKayitMail" ID="RegularExpressionValidator1" runat="server" ErrorMessage="E-Mail area is uncorrect.Please Check E-Mail Type !" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             
                                </div>
        <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                    <img alt="" class="nicdark_position_absolute nicdark_top_0 nicdark_left_0 nicdark_margin_top_20" width="15" src="/Content/Language/img/icons/icon-world-grey.svg">
                                   <asp:TextBox CssClass="nicdark_padding_left_25 nicdark_border_width_2 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0"  ID="txtTelefon" runat="server" ValidationGroup="lgnKayit" MaxLength="11" placeholder="Phone Number"></asp:TextBox>
            <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers" TargetControlID="txtTelefon" />
                                </div>
        <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                    <img alt="" class="nicdark_position_absolute nicdark_top_0 nicdark_left_0 nicdark_margin_top_20" width="15" src="/Content/Language/img/icons/icon-pen.svg">
                                   <asp:TextBox CssClass="nicdark_padding_left_25 nicdark_border_width_2 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0"  ID="txtKayitSifre" runat="server" ValidationGroup="lgnKayit" TextMode="Password" placeholder="Password" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Password area is empty.Please Check Password Area !" ValidationGroup="lgnKayit" ControlToValidate="txtKayitSifre"> </asp:RequiredFieldValidator>
                                </div>
        <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                   <asp:Image ID="ImageVerify" runat="server" />
                                </div>
        <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left nicdark_position_relative">
                                   <asp:TextBox ID="txtGuvenlik" runat="server" placeholder="Security Number"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Security Number area is empty.Please Check Security Number Area !" ValidationGroup="lgnKayit" ControlToValidate="txtGuvenlik"> </asp:RequiredFieldValidator>
                                </div>
                                <div class="nicdark_section">
                                    <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_padding_left_0 nicdark_padding_right_0 nicdark_box_sizing_border_box nicdark_float_left">
                                        <asp:Button ID="BtnKayitOl" cssclass="nicdark_display_inline_block nicdark_color_white nicdark_bg_blue nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 " runat="server" Text="Register" OnClick="BtnKayitOl_Click" ValidationGroup="lgnKayit" />
                                        
                                    </div>
                                </div>

                                <div class="nicdark_section nicdark_height_50"></div>
        <asp:Literal ID="LtrKayitBilgi" runat="server"></asp:Literal>
         <asp:ValidationSummary ID="ValidationSummary2" CssClass="nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_red nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 " ValidationGroup="lgnKayit" runat="server" />

                            </div>
</asp:Content>
