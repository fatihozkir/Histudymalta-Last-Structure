<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="OgretmenDetay.aspx.cs" Inherits="SiteProje.Pages.Ogretmens.OgretmenDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
    
                            <div class="grid grid_7">


                                <div class="nicdark_display_table nicdark_float_left nicdark_display_none_all_iphone">
                                            
                                    <div class="nicdark_display_table_cell nicdark_vertical_align_middle">
                                <asp:Image ID="imgProfil" CssClass="nicdark_margin_right_20 nicdark_border_radius_100_percentage" runat="server" />
                                       
                                    </div>

                                    <div class="nicdark_display_table_cell nicdark_vertical_align_middle">
                                        <strong class="nicdark_color_white nicdark_font_size_40 nicdark_first_font">
                                <asp:Literal ID="LtrOgretmenBaslik" runat="server"></asp:Literal>
                               </strong>


                                        <div class="nicdark_display_inline_block nicdark_margin_left_20">
                                            <img alt="" width="20" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-twitter-white.svg">
                                            <img alt="" width="20" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-pinterest-white.svg">
                                            <img alt="" width="20" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-linkedin-white.svg">
                                            <img alt="" width="20" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-google-white.svg">
                                            <img alt="" width="20" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-instagram-white.svg">
                                        </div>


                                        <div class="nicdark_section nicdark_height_5"></div>
                                        <h3 class="nicdark_color_white">
                                    <asp:Label ID="lblOgretmenBrans" runat="server"></asp:Label></h3>
                                        <div class="nicdark_section nicdark_height_30"></div>
                                        <a class="nicdark_display_inline_block nicdark_color_white nicdark_border_1_solid_white nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 nicdark_margin_right_20   " href="#">Takip Et</a>
                                        <a class="nicdark_display_inline_block nicdark_color_white nicdark_border_1_solid_white nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3   " href="#Mesaj"> Mesaj Gönder</a>
                                    </div>

                                </div>


                               
                                <%--<div class="nicdark_section nicdark_display_none nicdark_display_block_all_iphone nicdark_text_align_center">
                                
                                    <img alt="" class=" nicdark_border_radius_100_percentage " width="100" src="/Content/Language/img/avatar/avatar-chef-3.jpg">
                                    <div class="nicdark_section nicdark_height_10"></div>

                                    <div class="nicdark_section nicdark_text_align_center">
                                        <img alt="" width="15" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-twitter-white.svg">
                                        <img alt="" width="15" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-pinterest-white.svg">
                                        <img alt="" width="15" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-linkedin-white.svg">
                                        <img alt="" width="15" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-google-white.svg">
                                        <img alt="" width="15" class="" src="/Content/Language/img/icons/icon-instagram-white.svg">
                                    </div>

                                    <div class="nicdark_section nicdark_height_10"></div>
                                    <h2><strong class="nicdark_color_white nicdark_first_font">John Doe</strong></h2>
                                    <div class="nicdark_section nicdark_height_5"></div>
                                    <h5 class="nicdark_color_white">Food Teacher</h5>

                                    <div class="nicdark_section nicdark_height_20"></div>

                                    <a class="nicdark_display_inline_block nicdark_color_white nicdark_border_1_solid_white nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_margin_right_20 nicdark_font_size_13   " href="#">FOLLOW ME</a>
                                    <a class="nicdark_display_inline_block nicdark_color_white nicdark_border_1_solid_white nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13   " href="#">MESSAGE ME</a>

                                </div>--%>
                                

                                
                        
                                <div class="nicdark_section nicdark_height_20"></div>
                                

                            </div>




                            <div class="grid grid_5 nicdark_text_align_right nicdark_text_align_left_responsive nicdark_text_align_center_all_iphone">

                                <div class="nicdark_section nicdark_height_80 nicdark_display_none_all_responsive"></div>

                                <div class="nicdark_display_inline_block nicdark_text_align_center  nicdark_margin_right_40">
                                    <h1 class="nicdark_color_white nicdark_font_size_40 nicdark_font_size_20_all_iphone nicdark_line_height_20_all_iphone">
                                        <strong>

                                <asp:Label ID="LblVerdigiDersSayisi" runat="server"></asp:Label>
                                        </strong>

                                    </h1>
                                    <div class="nicdark_section nicdark_height_5"></div>
                                    <p class="nicdark_color_white nicdark_font_size_10_all_iphone">Verdiği Ders Sayısı</p>
                                </div>

                               
                            </div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
     
                                <a href="/Home">Anasayfa</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="/Teachers">Eğitmen</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
     <a href="#">Eğitmen Detayı</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="#">
                                    <asp:Label ID="LabelOgretmenBilgi" runat="server">
                                    </asp:Label>

                                </a>
                                
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
    <div class="nicdark_width_66_percentage nicdark_width_100_percentage_responsive nicdark_float_left">

                                <div class="nicdark_section nicdark_padding_15 nicdark_box_sizing_border_box">
                                
                                    <h2><strong>Eğitmen Detayı</strong></h2>
                                    <div class="nicdark_section nicdark_height_20"></div>
                                    <div class="nicdark_width_100_percentage nicdark_width_100_percentage_all_iphone nicdark_float_left ">
                                        <p class="nicdark_padding_10 nicdark_padding_0_all_iphone nicdark_padding_left_0"><span class="nicdark_font_size_70 nicdark_float_left nicdark_padding_28 nicdark_line_height_30 nicdark_first_font"><strong>A</strong></span><asp:Literal ID="LtrAciklama" runat="server"></asp:Literal>
                                            </p>
                                    </div>
                                   
                                    <div class="nicdark_section nicdark_height_40"></div>


                                    <div class="nicdark_section">


                                        <!--START tab-->
                                        <div class="nicdark_tabs ui-tabs ui-widget ui-widget-content ui-corner-all">
                                            <ul class="nicdark_list_style_none nicdark_margin_0 nicdark_padding_0 nicdark_section nicdark_border_bottom_2_solid_grey ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" role="tablist">
                                                <li class="nicdark_display_inline_block ui-state-default ui-corner-top ui-tabs-active ui-state-active" role="tab" tabindex="0" aria-controls="tabs-1" aria-labelledby="ui-id-1" aria-selected="true" aria-expanded="true">
                                                    <h4>
                                                        <a class="nicdark_outline_0 nicdark_padding_20 nicdark_padding_right_10 nicdark_display_inline_block nicdark_first_font nicdark_color_greydark ui-tabs-anchor" href="#tabs-1"  tabindex="-1" id="ui-id-1">Eğitmenin Verdiği Dersler</a> 
                                                        <a class="nicdark_display_inline_block nicdark_bg_grey nicdark_margin_right_20 nicdark_border_1_solid_grey nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13" href="#">
        <asp:Label ID="LblDersSayi" runat="server"></asp:Label></a>
                                                    </h4>
                                                </li>
                                               <%-- <li class="nicdark_display_inline_block ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-2" aria-labelledby="ui-id-2" aria-selected="false" aria-expanded="false">
                                                    <h4>
                                                        <a class="nicdark_outline_0 nicdark_padding_20 nicdark_padding_right_10 nicdark_display_inline_block nicdark_first_font nicdark_color_greydark ui-tabs-anchor" href="#tabs-2"  tabindex="-1" id="ui-id-2">Followers</a> 
                                                        <a class="nicdark_display_inline_block nicdark_bg_grey nicdark_margin_right_20 nicdark_border_1_solid_grey nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13" href="#">9</a>
                                                    </h4>
                                                </li>--%>
                                               <%-- <li class="nicdark_display_inline_block ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tabs-3" aria-labelledby="ui-id-3" aria-selected="false" aria-expanded="false">
                                                    <h4>
                                                        <a class="nicdark_outline_0 nicdark_padding_20 nicdark_padding_right_10 nicdark_display_inline_block nicdark_first_font nicdark_color_greydark ui-tabs-anchor" href="#tabs-3"  tabindex="-1" id="ui-id-3">My Reviews</a> 
                                                        <a class="nicdark_display_inline_block nicdark_bg_grey nicdark_margin_right_20 nicdark_border_1_solid_grey nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13" href="#">3</a>
                                                    </h4>
                                                </li>--%>
                                            </ul>

                                            <div class="nicdark_section nicdark_height_20"></div>

                                            <div class="nicdark_section ui-tabs-panel ui-widget-content ui-corner-bottom" id="tabs-1" aria-labelledby="ui-id-1" role="tabpanel" aria-hidden="false" style="display: block;">


                                                <div class="nicdark_section nicdark_box_sizing_border_box nicdark_overflow_hidden nicdark_overflow_x_auto nicdark_cursor_move_responsive">
                                                    <table class="nicdark_section">
                                                        <thead>
                                                            <tr class="nicdark_border_bottom_1_solid_grey">
                                                                <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                    <h6 class="nicdark_text_transform_uppercase">DERS ADI</h6>    
                                                                </td>
                                                                <td class="nicdark_padding_20 nicdark_width_30_percentage nicdark_display_none_all_iphone">
                                                                        
                                                                </td>
                                                                <td class="nicdark_padding_20 nicdark_width_20_percentage nicdark_display_none_all_iphone">
                                                                    <h6 class="nicdark_text_transform_uppercase">BILGI DERECESI</h6>    
                                                                </td>
                                                                <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                    <h6 class="nicdark_text_transform_uppercase">DERS UCRETI</h6>    
                                                                </td>
                                                                <td class="nicdark_padding_20 nicdark_width_10_percentage">
                                                                      
                                                                </td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
            <asp:Repeater ID="RepeaterDers" runat="server">
                <ItemTemplate>
                    <tr class="nicdark_border_bottom_1_solid_grey">
                                                                <td class="nicdark_padding_20">  
                                                                    <img alt="" class="nicdark_section" src="/Content/Language/img/courses/img1.jpg"> 
                                                                </td>
                                                                <td class="nicdark_padding_20">  
                                                                    <h4><strong><%#Eval("Baslik") %></strong></h4> 
                                                                </td>
                                                                <td class="nicdark_padding_20 nicdark_display_none_all_iphone">  
                                                                    
                                                                    <img alt="" class="" width="15" src="/Content/Language/img/icons/icon-star-full.svg">
                                                                    <img alt="" class="" width="15" src="/Content/Language/img/icons/icon-star-full.svg">
                                                                    <img alt="" class="" width="15" src="/Content/Language/img/icons/icon-star-full.svg">
                                                                    <img alt="" class="" width="15" src="/Content/Language/img/icons/icon-star-half.svg">
                                                                    <img alt="" class="nicdark_margin_right_10" width="15" src="/Content/Language/img/icons/icon-star.svg">
                                                                    
                                                                </td>
                                                                <td class="nicdark_padding_20 nicdark_display_none_all_iphone">
                                                                    <p class="nicdark_color_greydark"><%#Eval("Fiyat") %> TL</p>    
                                                                </td>
                                                                <td class="nicdark_padding_0"> 
                                                                    <asp:LinkButton ID="LinkBtnSatinAl" CssClass="nicdark_display_inline_block nicdark_color_white nicdark_bg_red nicdark_first_font nicdark_padding_10 nicdark_border_radius_3 nicdark_font_size_14" runat="server" CommandArgument='<%#Eval("AltHizmetId") %>' PostBackUrl='<%#"/PayementCart/"+ SiteProjeORM.Tools.KarakterTemizle(Eval("Baslik").ToString())+"-"+Eval("AltHizmetId") %>'>Kayıt Ol</asp:LinkButton>  
                                                                                                                                  </td>
                                                            </tr>
                </ItemTemplate>
            </asp:Repeater>
                                                            

                                                         
                                                        </tbody>
                                                    </table>
                                                </div>
                                    

                                            </div>



                                        </div>
                                      
                                    </div>
                                </div>


                                <div class="nicdark_section nicdark_height_50"></div>


                            </div>
    

    <div class="nicdark_width_33_percentage nicdark_width_100_percentage_responsive nicdark_float_left">


                                <div class="nicdark_section nicdark_padding_15 nicdark_box_sizing_border_box">




                                    <table class="nicdark_section">
                                        <tbody>
                                            <tr class="nicdark_border_bottom_2_solid_grey">
                                                <td class="nicdark_padding_20 "><img alt="" class="" width="40" src="/Content/Language/img/icons/icon-email-grey.svg"></td>
                                                <td class="nicdark_padding_20 "><h4 class=" nicdark_text_align_right">Email: <asp:Label ID="LblMailAdres" runat="server"></asp:Label></h4></td>
                                            </tr>
                                            <tr class="nicdark_border_bottom_2_solid_grey">
                                                <td class="nicdark_padding_20"><img alt="" class="" width="40" src="/Content/Language/img/icons/icon-mobile-grey.svg"></td>
                                                <td class="nicdark_padding_20"><h4 class=" nicdark_text_align_right">Telefon:<asp:Label ID="LblTelefon" runat="server"></asp:Label></h4></td>
                                            </tr>
                                            <tr class="nicdark_border_bottom_2_solid_grey">
                                                <td class="nicdark_padding_20 "><img alt="" class="" width="40" src="/Content/Language/img/icons/icon-skype-grey.svg"></td>
                                                <td class="nicdark_padding_20 "><h4 class=" nicdark_text_align_right">Skype: @<asp:Label ID="LblSkypeAdres" runat="server"></asp:Label></h4></td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>


                                    <div class="nicdark_section nicdark_height_40"></div>

                                    <%--<a name="Mesaj">
                                        <div  class="nicdark_section nicdark_bg_white nicdark_border_1_solid_grey">

                                          <div class="nicdark_section nicdark_padding_20 nicdark_box_sizing_border_box nicdark_bg_grey nicdark_border_bottom_1_solid_grey nicdark_text_align_center">
                                            
                                            
                                            <h3 class=""><strong>Mesaj Gönder</strong></h3>
                                          </div>
                                          <div class="nicdark_section nicdark_padding_10 nicdark_box_sizing_border_box">
                                            
                                            <div class="nicdark_section">
                                                <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left">
                                                    <input class="nicdark_padding_left_0 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0" type="text" placeholder="Name">
                                                </div>
                                                
                                            </div>
                                            <div class="nicdark_section">
                                                <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left">
                                                    <input class="nicdark_padding_left_0 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0" type="text" placeholder="Email">
                                                </div>
                                                
                                            </div>
                                            <div class="nicdark_section">
                                                <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left">
                                                    <textarea rows="4" class="nicdark_padding_left_0 nicdark_background_none nicdark_border_top_width_0 nicdark_border_right_width_0 nicdark_border_left_width_0" placeholder="Message"></textarea>
                                                </div>
                                            </div>
                                            <div class="nicdark_section">
                                                <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left">
                                                    <a class="nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_blue nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 " href="#">SEND NOW</a>   
                                                </div>
                                            </div>

                                          </div>  

                                        </div>
                                    </a>--%>
                                    


                                </div>



                                <div class="nicdark_section nicdark_height_50"></div>


                            </div>
</asp:Content>
