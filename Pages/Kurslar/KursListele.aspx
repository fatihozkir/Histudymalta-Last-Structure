<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="KursListele.aspx.cs" Inherits="SiteProje.Pages.Kurslar.KursListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script>
         $(document).ready(function () {
             $("[name='imgCourse']").each(function () {
                 var arraySrc = ["img1","img2","img3","img4","img12","img14","img21","img23","img25"];
                 var rndNumber = Math.floor((Math.random() * 8) + 1);
                 var source = "/Content/Language/img/courses/" + arraySrc[rndNumber] + ".jpg";
                 $(this).attr("src", source);
                 
             });
         });
         
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
    <div class="grid grid_12">

                                
                                
                                <strong class="nicdark_color_white nicdark_font_size_60 nicdark_first_font">Courses</strong>
                                <div class="nicdark_section nicdark_height_20"></div>

                            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
      <a href="/Home">HomePage</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="/Courses">Courses</a>
                               
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
    
                            <div class="nicdark_width_100_percentage">
<asp:ListView ID="ListViewCourses" runat="server" DataSourceID="SqlDataSourceCourses">
    <ItemTemplate>
        <div class="nicdark_width_33_percentage nicdark_width_100_percentage_responsive nicdark_float_left">

        <div class="nicdark_section nicdark_padding_15 nicdark_box_sizing_border_box">
            
            <div class="nicdark_section nicdark_border_1_solid_grey">
               
                <div class="nicdark_section nicdark_position_relative">
                    
                    <img alt='<%#Eval("Baslik") %>' class="nicdark_section" name="imgCourse">

                    <div class="nicdark_bg_greydark_alpha_gradient_2 nicdark_position_absolute nicdark_left_0 nicdark_height_100_percentage nicdark_width_100_percentage nicdark_padding_20 nicdark_box_sizing_border_box">

                        <a class="nicdark_tooltip_jquery nicdark_position_absolute nicdark_right_0" title="Add To Compare" href="compare.html">
                            <img alt="" class="nicdark_margin_right_20 nicdark_right_0" width="25" src="/Content/Language/img/icons/icon-compare-white.svg">
                        </a>

                       
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                </div>
              


                <div class="nicdark_section nicdark_padding_20 nicdark_box_sizing_border_box">
                
                    <h3><a class="nicdark_color_greydark nicdark_first_font" href='/CourseDetail/<%#SiteProjeORM.Tools.KarakterTemizle(Eval("Baslik").ToString())+"-"+Eval("HizmetId") %>'><%#Eval("Baslik") %></a></h3>
                    <div class="nicdark_section nicdark_height_20"></div> 
                    <p><a class="" href='/CourseDetail/<%# SiteProjeORM.Tools.KarakterTemizle(Eval("Baslik").ToString())+"-"+Eval("HizmetId") %>'></a><%#Eval("Icerik").ToString().Length>50?Eval("Icerik").ToString().Substring(0,39)+"...":Eval("Icerik") %></p>

                </div>

                <div class="nicdark_section nicdark_padding_20 nicdark_box_sizing_border_box nicdark_bg_grey nicdark_border_top_1_solid_grey">
                    <div class="nicdark_width_33_percentage nicdark_width_50_percentage_all_iphone nicdark_display_none_all_iphone nicdark_float_left">
                        <div class="nicdark_display_table nicdark_float_left">
                            
                            <p class="nicdark_display_table_cell nicdark_vertical_align_middle nicdark_font_size_15"><a class="nicdark_display_inline_block nicdark_color_white nicdark_bg_blue nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13" href='/CourseDetail/<%#SiteProjeORM.Tools.KarakterTemizle(Eval("Baslik").ToString())+"-"+Eval("HizmetId") %>'>Review</a></p>
                        </div>
                    </div>
                   
                    
                </div>



            </div>
           

        </div> 

    </div>
    </ItemTemplate>
</asp:ListView>

    
    
    
                                <asp:SqlDataSource ID="SqlDataSourceCourses" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT * FROM [Hizmetler]"></asp:SqlDataSource>

    
    
    
                                </div>
                               
</asp:Content>
