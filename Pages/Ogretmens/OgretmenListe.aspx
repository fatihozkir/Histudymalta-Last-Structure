<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="OgretmenListe.aspx.cs" Inherits="SiteProje.Pages.Ogretmens.OgretmenListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
    <div class="grid grid_12">

                                
                                
                                <strong class="nicdark_color_white nicdark_font_size_60 nicdark_first_font">Eğitmenler</strong>
                                <div class="nicdark_section nicdark_height_20"></div>

                            </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
    <a href="/Home">Anasayfa</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
         <a href="#">Eğitmenler</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="#">Eğitmen Listesi</a>
                               
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
     <div class="nicdark_width_100_percentage">
         <asp:Repeater ID="RepeaterOgretmenler" runat="server">
             <ItemTemplate>
                 <div class="grid grid_3">

                                <div class="nicdark_section">
                                    
                                   
                                    <div class="nicdark_section ">
                                        
                                   
                                        <div class="nicdark_section nicdark_position_relative">
                                           
                                            <img alt="<%#Eval("AdSoyad") %>" Height="200" class="nicdark_section" src='/Upload/Images/Medium/<%#Eval("ResimUrl") %>'>

                                            <div class="nicdark_bg_greydark_alpha_gradient nicdark_position_absolute nicdark_left_0 nicdark_height_100_percentage nicdark_width_100_percentage nicdark_padding_20 nicdark_box_sizing_border_box">
                                                
                                                <div class="nicdark_position_absolute nicdark_bottom_20">
                                                    <div class="nicdark_display_inline_block">
                                                        <img alt="E-Mail" width="15" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-google-white.svg">
                                                        <img alt="Skype" width="15" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-comment.svg">
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                   


                                        <div class="nicdark_section nicdark_padding_20 nicdark_box_sizing_border_box">
                                        
                                            <h2><strong>
                                                <asp:Label ID="LblAdSoyad" runat="server" Text='<%#Eval("AdSoyad") %>'></asp:Label></strong></h2>
                                            <div class="nicdark_section nicdark_height_10"></div> 
                                            <h6 class="nicdark_text_transform_uppercase nicdark_color_grey">
                                                <asp:Label ID="LblBrans" runat="server"></asp:Label></h6>
                                            <div class="nicdark_section nicdark_height_5"></div> 
                                            <p><%#Eval("Bilgi").ToString().Length>90?Eval("Bilgi").ToString().Substring(0,89)+"...":Eval("Bilgi") %></p>
                                            <div class="nicdark_section nicdark_height_20"></div>
                                            
                                            <asp:LinkButton ID="LinkBtnDetay" runat="server" CssClass="nicdark_display_inline_block nicdark_color_white nicdark_bg_blue nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13" CommandArgument='<%#Eval("OgretmenId") %>'>Profili Görüntüle</asp:LinkButton>
                                          

                                        </div>

                                    </div>
                                  

                                </div> 

                            </div>
             </ItemTemplate>
         </asp:Repeater>
        
                            
         
         </div>
</asp:Content>

