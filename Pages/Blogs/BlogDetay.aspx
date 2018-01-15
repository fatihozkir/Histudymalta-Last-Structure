<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="SiteProje.Pages.Blogs.BlogDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
     <div class="grid grid_12">

                                
                                
                                <strong class="nicdark_color_white nicdark_font_size_60 nicdark_first_font">
                                    <asp:Label ID="LblUstBaslik" runat="server"></asp:Label></strong>
                                <div class="nicdark_section nicdark_height_20"></div>

                            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
      <a href="/Home">HomePage</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="#">
          <asp:Label ID="LblBaslikMenu" runat="server"></asp:Label></a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
    <div class="grid grid_2">
                           &nbsp;     
                            </div>
    <div class="grid grid_8">
        <div class="nicdark_width_100_percentage nicdark_width_100_percentage_ipad_port nicdark_width_100_percentage_all_iphone nicdark_float_left">

                                <div class="nicdark_section nicdark_padding_15 nicdark_box_sizing_border_box">
                                
                                    <h1><asp:Label ID="LblBaslik" runat="server" ></asp:Label></h1>
                                    <div class="nicdark_section nicdark_height_20"></div>
                                    
                                

                                    <div class="nicdark_section nicdark_position_relative">
            <asp:Image ID="imgResim" cssclass="nicdark_section" runat="server" />
                                        

                                    </div>



                                    <div class="nicdark_section nicdark_height_40"></div>


                                    <div class="nicdark_section">


                                        <!--START tab-->
                                        <div class="nicdark_tabs">
                                            <ul class="nicdark_list_style_none nicdark_margin_0 nicdark_padding_0 nicdark_section nicdark_border_bottom_2_solid_grey">
                                                <li class="nicdark_display_inline_block"><h4><a class="nicdark_outline_0 nicdark_padding_20 nicdark_display_inline_block nicdark_first_font nicdark_color_greydark" href="#tabs-1">Content</a></h4></li>
                                              <%--  <li class="nicdark_display_inline_block"><h4><a class="nicdark_outline_0 nicdark_padding_20 nicdark_display_inline_block nicdark_first_font nicdark_color_greydark" href="#tabs-2">İçerik Resimler</a></h4></li>
                                                <li class="nicdark_display_inline_block"><h4><a class="nicdark_outline_0 nicdark_padding_20 nicdark_display_inline_block nicdark_first_font nicdark_color_greydark" href="#tabs-3">İçerik Ek Belgeler</a></h4></li>--%>
                                            </ul>

                                            <div class="nicdark_section nicdark_height_40"></div>

                                            <div class="nicdark_section" id="tabs-1">

                                                <h3><strong><asp:Label ID="LblBaslik1" runat="server" ></asp:Label></strong></h3>
                                                <div class="nicdark_section nicdark_height_20"></div>
                                                <p><asp:Literal ID="LtrIcerik" runat="server"></asp:Literal></p>
                                                <div class="nicdark_section nicdark_height_40"></div>
                                                

                                                <!--start social-->
                                                <div class="nicdark_section">
                                                    <a href="#"><img alt="" width="40" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-facebook-color.svg"></a>
                                                    <a href="#"><img alt="" width="40" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-twitter-color.svg"></a>
                                                   
                                                </div>
                                                <!--end-->

                                            </div>
                                           <%-- <div class="nicdark_section" id="tabs-2">

                                                <!--START program-->
                                                <h3><strong>Our Program</strong></h3>
                                                <div class="nicdark_section nicdark_height_30"></div>

                                                <div class="nicdark_section">


                                                    <div class="nicdark_section nicdark_border_top_1_solid_grey nicdark_padding_15 nicdark_box_sizing_border_box">
                                                        <div class="nicdark_width_15_percentage nicdark_width_100_percentage_responsive nicdark_float_left">
                                                            <table>
                                                                <tr>
                                                                    <td><img alt="" width="20" src="img/icons/icon-file-green.svg"></td>
                                                                    <td><span class="nicdark_color_grey nicdark_first_font nicdark_font_size_12 nicdark_margin_left_10">LESSON</span></td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                        <div class="nicdark_width_75_percentage nicdark_width_100_percentage_responsive nicdark_float_left">
                                                            <h4 class="nicdark_padding_5 nicdark_second_font">Introducing to the new language</h4>
                                                        </div>
                                                        <div class="nicdark_width_10_percentage nicdark_width_100_percentage_responsive nicdark_float_left nicdark_text_align_right nicdark_text_align_left_responsive nicdark_margin_top_5_responsive">
                                                            <a class="nicdark_display_inline_block nicdark_color_white nicdark_bg_blue nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13" href="#">PREVIEW</a>
                                                        </div>
                                                    </div>

                                                    <div class="nicdark_section nicdark_border_top_1_solid_grey nicdark_padding_15 nicdark_box_sizing_border_box">
                                                        <div class="nicdark_width_15_percentage nicdark_width_100_percentage_responsive nicdark_float_left">

                                                            <table>
                                                                <tr>
                                                                    <td><img alt="" width="20" src="img/icons/icon-file-green.svg"></td>
                                                                    <td><span class="nicdark_color_grey nicdark_first_font nicdark_font_size_12 nicdark_margin_left_10">PDF</span></td>
                                                                </tr>
                                                            </table>

                                                        </div>
                                                        <div class="nicdark_width_75_percentage nicdark_width_100_percentage_responsive nicdark_float_left">
                                                            <h4 class="nicdark_padding_5 nicdark_second_font">Download course slides</h4>
                                                        </div>
                                                        <div class="nicdark_width_10_percentage nicdark_width_100_percentage_responsive nicdark_float_left nicdark_text_align_right nicdark_text_align_left_responsive nicdark_margin_top_5_responsive">
                                                            <a class="nicdark_display_inline_block nicdark_color_white nicdark_bg_blue nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13" href="#">PREVIEW</a>
                                                        </div>
                                                    </div>

                                                    <div class="nicdark_section nicdark_border_top_1_solid_grey nicdark_padding_15 nicdark_box_sizing_border_box ">
                                                        <div class="nicdark_width_15_percentage nicdark_width_100_percentage_responsive nicdark_float_left">

                                                            <table>
                                                                <tr>
                                                                    <td><img alt="" width="20" src="img/icons/icon-play-green.svg"></td>
                                                                    <td><span class="nicdark_color_grey nicdark_first_font nicdark_font_size_12 nicdark_margin_left_10">VIDEO</span></td>
                                                                </tr>
                                                            </table>

                                                        </div>
                                                        <div class="nicdark_width_75_percentage nicdark_width_100_percentage_responsive nicdark_float_left">
                                                            <h4 class="nicdark_padding_5 nicdark_second_font">Final Exams</h4>
                                                        </div>
                                                        <div class="nicdark_width_10_percentage nicdark_width_100_percentage_responsive nicdark_float_left nicdark_text_align_right nicdark_text_align_left_responsive nicdark_margin_top_5_responsive">
                                                            <a class="nicdark_display_inline_block nicdark_color_white nicdark_bg_blue nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13" href="#">PREVIEW</a>
                                                        </div>
                                                    </div>


                                                </div>

                                                <!--END program-->

                                            </div>
                                            <div class="nicdark_section" id="tabs-3">



                                                <h3><strong>Our Main Teachers</strong></h3>
                                                <div class="nicdark_section nicdark_height_30"></div>

                                                <div class="nicdark_section">



                                                    <!--START teacher-->
                                                    <div class="nicdark_section nicdark_border_top_1_solid_grey nicdark_padding_40_20 nicdark_box_sizing_border_box">


                                                        <div class="nicdark_display_table nicdark_float_left">
                                                                    
                                                            <div class="nicdark_display_table_cell nicdark_vertical_align_middle">
                                                                <img alt="" class="nicdark_width_50_all_iphone nicdark_margin_right_20 nicdark_border_radius_100_percentage " width="100" src="img/avatar/avatar-chef-2.jpg">
                                                            </div>

                                                            <div class="nicdark_display_table_cell nicdark_vertical_align_middle">
                                                                <h3 class=""><strong>John Doe</strong></h3>
                                                                <div class="nicdark_section nicdark_height_5"></div>
                                                                <h5 class="nicdark_color_grey">English Teacher</h5>
                                                                <div class="nicdark_section nicdark_height_20"></div>

                                                                <div class="nicdark_section">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-facebook-color.svg">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-twitter-color.svg">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-pinterest-color.svg">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-linkedin-color.svg">
                                                                </div>

                                                            </div>

                                                        </div>
                                                
                                                        <div class="nicdark_section nicdark_height_20"></div>

                                                        <p class="nicdark_section">Vivamus volutpat eros pulvinar velit laoreet, sit amet egestas erat dignissim. Sed quis rutrum tellus, sit amet viverra felis. Cras sagittis sem sit amet urna feugiat rutrum. Nam nulla ipsum. </p>
                                                        

                                                    </div>
                                                    <!--END teacher-->



                                                    <!--START teacher-->
                                                    <div class="nicdark_section nicdark_border_top_1_solid_grey nicdark_padding_40_20 nicdark_box_sizing_border_box">


                                                        <div class="nicdark_display_table nicdark_float_left">
                                                                    
                                                            <div class="nicdark_display_table_cell nicdark_vertical_align_middle">
                                                                <img alt="" class="nicdark_width_50_all_iphone nicdark_margin_right_20 nicdark_border_radius_100_percentage " width="100" src="img/avatar/avatar-chef-3.jpg">
                                                            </div>

                                                            <div class="nicdark_display_table_cell nicdark_vertical_align_middle">
                                                                <h3 class=""><strong>Jane Rightness</strong></h3>
                                                                <div class="nicdark_section nicdark_height_5"></div>
                                                                <h5 class="nicdark_color_grey">Teacher</h5>
                                                                <div class="nicdark_section nicdark_height_20"></div>

                                                                <div class="nicdark_section">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-facebook-color.svg">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-twitter-color.svg">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-pinterest-color.svg">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-linkedin-color.svg">
                                                                </div>

                                                            </div>

                                                        </div>
                                                
                                                        <div class="nicdark_section nicdark_height_20"></div>

                                                        <p class="nicdark_section">Vivamus volutpat eros pulvinar velit laoreet, sit amet egestas erat dignissim. Sed quis rutrum tellus, sit amet viverra felis. Cras sagittis sem sit amet urna feugiat rutrum. Nam nulla ipsum. </p>
                                                        

                                                    </div>
                                                    <!--END teacher-->



                                                    <!--START teacher-->
                                                    <div class="nicdark_section nicdark_border_top_1_solid_grey nicdark_padding_40_20 nicdark_box_sizing_border_box">


                                                        <div class="nicdark_display_table nicdark_float_left">
                                                                    
                                                            <div class="nicdark_display_table_cell nicdark_vertical_align_middle">
                                                                <img alt="" class="nicdark_width_50_all_iphone nicdark_margin_right_20 nicdark_border_radius_100_percentage " width="100" src="img/avatar/avatar-chef-4.jpg">
                                                            </div>

                                                            <div class="nicdark_display_table_cell nicdark_vertical_align_middle">
                                                                <h3 class=""><strong>Nick Hopiness</strong></h3>
                                                                <div class="nicdark_section nicdark_height_5"></div>
                                                                <h5 class="nicdark_color_grey">Teacher</h5>
                                                                <div class="nicdark_section nicdark_height_20"></div>

                                                                <div class="nicdark_section">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-facebook-color.svg">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-twitter-color.svg">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-pinterest-color.svg">
                                                                    <img alt="" width="25" class="nicdark_margin_right_10" src="img/icons/icon-linkedin-color.svg">
                                                                </div>

                                                            </div>

                                                        </div>
                                                
                                                        <div class="nicdark_section nicdark_height_20"></div>

                                                        <p class="nicdark_section">Vivamus volutpat eros pulvinar velit laoreet, sit amet egestas erat dignissim. Sed quis rutrum tellus, sit amet viverra felis. Cras sagittis sem sit amet urna feugiat rutrum. Nam nulla ipsum. </p>
                                                        

                                                    </div>
                                                    <!--END teacher-->



                                                </div>


                                            </div>
                                           --%>
                                        </div>
                                        <!--END tab-->


                                    </div>
                                </div>


                                <div class="nicdark_section nicdark_height_50"></div>


                            </div>

       
                            </div>
</asp:Content>
