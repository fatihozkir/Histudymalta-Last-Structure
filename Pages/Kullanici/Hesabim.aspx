<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Hesabim.aspx.cs" Inherits="SiteProje.Pages.Kullanıcı.Hesabim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
    <div class="grid grid_12">

                                
                                
                                <strong class="nicdark_color_white nicdark_font_size_60 nicdark_first_font">My Profile</strong>
                                <div class="nicdark_section nicdark_height_20"></div>

                            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
    <a href="/Home">HomePage</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="/Account">My Profile</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
     <a href="#">
         <asp:Label ID="lblKisiBilgi" runat="server"></asp:Label></a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
      <div class="grid grid_3">




                                <div class="nicdark_section nicdark_box_sizing_border_box">
                                            
                                            <!--start preview-->
                                                <div class="nicdark_section ">
                                            
                                                    <!--image-->
                                                    <div class="nicdark_section nicdark_position_relative">
                                                       <img alt="" class="nicdark_section" src="/Content/Language/img/avatar/avatar-chef-1.png">
                                                        <div class="nicdark_bg_greydark_alpha_gradient nicdark_position_absolute nicdark_left_0 nicdark_height_100_percentage nicdark_width_100_percentage nicdark_padding_20 nicdark_box_sizing_border_box">
                                                            

                                                        </div>

                                                    </div>
                                                    <!--image-->


                                            <div class="nicdark_section nicdark_box_sizing_border_box">
                                            
                                                <div class="nicdark_section nicdark_bg_greydark">
                                                    <table class="nicdark_section ">
                                                        <tbody>
                                                           
                                                           <tr class="">
                                                                <td class="nicdark_padding_30">  
                                                                    <h5 class="nicdark_font_size_13 nicdark_text_transform_uppercase nicdark_color_grey">Name</h5>
                                                                    <div class="nicdark_section nicdark_height_5"></div>
                                                                    <p class="nicdark_color_white nicdark_line_height_16"><asp:Label ID="LblAd" runat="server"></asp:Label></p>
                                                                </td>
                                                                <td class="nicdark_padding_30">
                                                                    <h5 class="nicdark_font_size_13 nicdark_text_transform_uppercase nicdark_color_grey">Name</h5>
                                                                    <div class="nicdark_section nicdark_height_5"></div>
                                                                    <p class="nicdark_color_white nicdark_line_height_16"><asp:Label ID="LblSoyad" runat="server"></asp:Label></p>    
                                                                </td>
                                                            </tr>

                                                        </tbody>
                                                    </table> 
                                                </div>

                                                <div class="nicdark_section nicdark_border_1_solid_grey nicdark_padding_20 nicdark_box_sizing_border_box">

                                                    <table class="nicdark_section">
                                                        <tbody>
                                                           
                                                           <tr class="">
                                                                <td class="nicdark_padding_10">  

                                                                    <div class="nicdark_display_table nicdark_float_left">
                                            
                                                                        <div class="nicdark_display_table_cell nicdark_vertical_align_middle">
                                                                            <img alt="" class="nicdark_margin_right_20" width="25" src="/Content/Language/img/icons/icon-email-grey.svg">
                                                                        </div>

                                                                        <div class="nicdark_display_table_cell nicdark_vertical_align_middle">
                                                                            <h5 class="nicdark_font_size_13 nicdark_text_transform_uppercase"><strong>E-Mail</strong></h5>
                                                                            <div class="nicdark_section nicdark_height_5"></div>
                                                                            <p class="">
          <asp:Label ID="LblMail1" runat="server" Text="Label"></asp:Label></p>
                                                                        </div>

                                                                    </div>

                                                                </td>
                                                            </tr>
                                                          
                                                        </tbody>
                                                    </table> 
                                                </div>
                                                

                                            </div>

                                            <div class="nicdark_section nicdark_padding_10 nicdark_box_sizing_border_box nicdark_bg_white ">
                                                
                                                <div class="nicdark_width_50_percentage nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left nicdark_text_align_center">
                                        <%-- <asp:LinkButton ID="LinkBtnDuzenle" cssclass="nicdark_display_inline_block nicdark_color_white nicdark_bg_blue nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13" runat="server">Bilgileri Düzenle</asp:LinkButton>--%>
                                                    
                                                </div>  

                                                <div class="nicdark_width_50_percentage nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left nicdark_text_align_center">
                                                    <a href="/Logout" class="nicdark_display_inline_block nicdark_color_white nicdark_bg_red nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13">Log Out</a>
                                            
                                                </div> 
                                                
                                            </div>



                                        </div>
                                                <!--start preview-->

                                        </div>

                            </div>


                            <div class="grid grid_9">

                                <div class="nicdark_section">


                                    <!--START tab-->
                                    <div class="nicdark_tabs">
                                        <ul class="nicdark_list_style_none nicdark_margin_0 nicdark_padding_0 nicdark_section nicdark_border_bottom_2_solid_grey">
                                             <li class="nicdark_display_inline_block">
                                                <h4>
                                                    <a class="nicdark_outline_0 nicdark_padding_20 nicdark_padding_right_10 nicdark_display_inline_block nicdark_first_font nicdark_color_greydark" href="#tabs-2">Lessons Awaiting For Payment </a> 
                                                  
                                                </h4>
                                            </li>
                                            <li class="nicdark_display_inline_block">
                                                <h4>
                                                    <a class="nicdark_outline_0 nicdark_padding_20 nicdark_padding_right_10 nicdark_display_inline_block nicdark_first_font nicdark_color_greydark" href="#tabs-1">Earlier Bought Lessons</a> 
                                                    
                                                </h4>
                                            </li>
                                           
                                        </ul>

                                        <div class="nicdark_section nicdark_height_20"></div>
                                        <div class="nicdark_section" id="tabs-2">



                                            <div class="nicdark_section nicdark_overflow_hidden nicdark_overflow_x_auto nicdark_cursor_move_responsive">
                                                <table class="nicdark_section">
                                                    <thead>
                                                        <tr class="nicdark_border_bottom_1_solid_grey">
                                                            <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                <h6 class="nicdark_text_transform_uppercase">Meeting Id</h6>    
                                                            </td>
                                                             <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                <h6 class="nicdark_text_transform_uppercase">Meeting Title</h6>    
                                                            </td>
                                                            <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                <h6 class="nicdark_text_transform_uppercase">Meeting Date</h6>    
                                                            </td>
                                                            <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                <h6 class="nicdark_text_transform_uppercase">Payment Situation</h6>    
                                                            </td>
                                                            <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                <h6 class="nicdark_text_transform_uppercase">Payment Price</h6>    
                                                            </td>
                                                            <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                            </td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <asp:ListView ID="ListViewOdemeYapilmayan" runat="server">
                                                        <ItemTemplate>
                                                            <tr class="nicdark_border_bottom_1_solid_grey">
                                                            <td class="nicdark_padding_20">  
                                                                <p><%#Eval("RandevuUyeId") %></p> 
                                                            </td>
                                                                <td class="nicdark_padding_20">  
                                                                <p><%#Eval("Baslik") %></p> 
                                                            </td>
                                                            <td class="nicdark_padding_20">  
                                                                <p><%#Eval("Gun")+"/"+Eval("Ay")+"/"+Eval("Yil") %></p> 
                                                            </td>
                                                            <td class="nicdark_padding_20">  
                                                                <p><%#Eval("Odeme").ToString()=="True"?"Payment Succeed":"Waiting Payment" %></p> 
                                                            </td>
                                                            <td class="nicdark_padding_20">
                                                                <p class="nicdark_color_greydark"><%#Eval("Fiyat") %> $</p>    
                                                            </td>
                                                             
                                                           
                                                        </tr>
                                                        </ItemTemplate>
                                                    </asp:ListView>
                                                        

                                                      
                                                    </tbody>
                                                </table>
                                            </div>



                                        </div>
                                        <div class="nicdark_section" id="tabs-1">


                                            <div class="nicdark_section nicdark_overflow_hidden nicdark_overflow_x_auto nicdark_cursor_move_responsive">
                                                <table class="nicdark_section">
                                                    <thead>
                                                        <tr class="nicdark_border_bottom_1_solid_grey">
                                                            <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                <h6 class="nicdark_text_transform_uppercase">Meeting Id</h6>    
                                                            </td>
                                                             <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                <h6 class="nicdark_text_transform_uppercase">Meeting Title</h6>    
                                                            </td>
                                                            <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                <h6 class="nicdark_text_transform_uppercase">Meeting Date</h6>    
                                                            </td>
                                                            <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                <h6 class="nicdark_text_transform_uppercase">Payment Situation</h6>    
                                                            </td>
                                                            <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                                <h6 class="nicdark_text_transform_uppercase">Payment Price</h6>    
                                                            </td>
                                                            <td class="nicdark_padding_20 nicdark_width_20_percentage">
                                                            </td>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <asp:ListView ID="ListViewOdemeYapilanRandevular" runat="server">
                                                        <ItemTemplate>
                                                            <tr class="nicdark_border_bottom_1_solid_grey">
                                                            <td class="nicdark_padding_20">  
                                                                <p><%#Eval("RandevuUyeId") %></p> 
                                                            </td>
                                                                <td class="nicdark_padding_20">  
                                                                <p><%#Eval("Baslik") %></p> 
                                                            </td>
                                                            <td class="nicdark_padding_20">  
                                                                <p><%#Eval("Gun")+"/"+Eval("Ay")+"/"+Eval("Yil") %></p> 
                                                            </td>
                                                            <td class="nicdark_padding_20">  
                                                                <p><%#Eval("Odeme").ToString()=="True"?"Payment Succeed":"Waiting Payment" %></p> 
                                                            </td>
                                                            <td class="nicdark_padding_20">
                                                                <p class="nicdark_color_greydark"><%#Eval("Fiyat") %> $</p>    
                                                            </td>
                                                           
                                                        </tr>
                                                        </ItemTemplate>
                                                    </asp:ListView>
                                                        

                                                      
                                                    </tbody>
                                                </table>
                                            </div>
                                

                                        </div>
                                        
                                      
                                    </div>

                                </div>

                            </div>
</asp:Content>
