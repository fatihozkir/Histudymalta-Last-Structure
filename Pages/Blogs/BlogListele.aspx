<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="BlogListele.aspx.cs" Inherits="SiteProje.Pages.Blogs.BlogListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
     <div class="grid grid_12">

                                
                                
                                <strong class="nicdark_color_white nicdark_font_size_60 nicdark_first_font">Blog</strong>
                                <div class="nicdark_section nicdark_height_20"></div>

                            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
     <a href="/Home">HomePage</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="/Blogs">Blog</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
    <div class="grid grid_2">&nbsp;</div>

    <div class="grid grid_8">
        <asp:ListView ID="ListBlogs" runat="server" DataSourceID="SqlDataSourceContents">
            <ItemTemplate>
                <div class="nicdark_section nicdark_border_1_solid_grey">

        <div class="nicdark_section nicdark_position_relative">
            
            <img alt='<%#Eval("Baslik") %>' class="nicdark_section" src='<%#"/Upload/Images/Big/"+Eval("MansetResim") %>'>

            <div class="nicdark_bg_greydark_alpha_gradient_2 nicdark_position_absolute nicdark_left_0 nicdark_height_100_percentage nicdark_width_100_percentage nicdark_padding_30 nicdark_box_sizing_border_box">
                <div class="nicdark_display_none_all_iphone nicdark_position_absolute nicdark_bottom_30">
                    <div class="nicdark_display_table nicdark_float_left">
                        <img alt="" class="nicdark_margin_right_10 nicdark_margin_left_20 nicdark_display_table_cell nicdark_vertical_align_middle" width="30" src="/Content/Language/img/icons/icon-comment.svg">
                        <p class="nicdark_color_white nicdark_display_table_cell nicdark_vertical_align_middle "><%#Eval("Baslik") %></p>
                    </div>
                </div>

            </div>

            <a class="nicdark_position_absolute nicdark_right_20 nicdark_top_20 nicdark_display_inline_block nicdark_color_white nicdark_border_1_solid_white nicdark_first_font nicdark_padding_8 nicdark_border_radius_3 nicdark_font_size_13" href="#">Article</a>

        </div>

        <div class="nicdark_section nicdark_padding_30 nicdark_box_sizing_border_box">
            <h5 class="nicdark_second_font nicdark_color_grey"><%#Eval("EklenmeTarihi") %></h5>
            <div class="nicdark_section nicdark_height_10"></div>
            <h2><%#Eval("Baslik") %></h2>
            <div class="nicdark_section nicdark_height_20"></div>
            <p><%#Eval("Icerik").ToString().Length>200?Eval("Icerik").ToString().Substring(0,199):Eval("Icerik") %></p>
            <div class="nicdark_section nicdark_height_20"></div>
            <a class="nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box  nicdark_color_white nicdark_bg_blue nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 " href='/BlogContextDetail/<%#SiteProjeORM.Tools.KarakterTemizle(Eval("Baslik").ToString())+"-"+Eval("CokluIcerikId") %>'>Review</a>

        </div>
    </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourceContents" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT * FROM [CokluIcerik] ORDER BY [CokluIcerikId] DESC"></asp:SqlDataSource>
        <div class="nicdark_section nicdark_height_50"></div>
        <div class="nicdark_section nicdark_text_align_center">
            <strong>
            <asp:DataPager ID="DataPagerMakales" runat="server"  PagedControlID="ListBlogs" PageSize="10">
                <Fields>
                    <asp:NextPreviousPagerField  ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                   <asp:NumericPagerField CurrentPageLabelCssClass="nicdark_display_inline_block nicdark_first_font nicdark_padding_10 nicdark_font_size_20" NextPreviousButtonCssClass="nicdark_display_inline_block nicdark_first_font nicdark_padding_10 nicdark_font_size_20" NumericButtonCssClass="nicdark_display_inline_block nicdark_first_font nicdark_padding_10 nicdark_font_size_20"  />
                    <asp:NextPreviousPagerField  ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
                
            </asp:DataPager>
                </strong>
                         
</div>
    </div>
</asp:Content>
