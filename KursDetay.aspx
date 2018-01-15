<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="KursDetay.aspx.cs" Inherits="SiteProje.Pages.Kurslar.KursDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
         $(document).ready(function () {
             $("[name='imgEducation']").each(function () {
                 var arraySrc = ["img1","img2","img3","img4","img12","img14","img21","img23","img25","img29","img32","img39","img34","img33"];
                 var rndNumber = Math.floor((Math.random() * 9) + 1);
                 var source = "/Content/Language/img/courses/" + arraySrc[rndNumber] + ".jpg";
                 $(this).attr("src", source);
                 
             });
             $("[name='imgSubCourse']").each(function () {
                 var arraySrc = ["img1", "img2", "img3"];
                 var rndNumber = Math.floor((Math.random() * 2) + 1);
                 var source = "/Content/Language/img/courses/square/" + arraySrc[rndNumber] + ".jpg";
                 $(this).attr("src", source);

             });
             //img / courses / square / img1.jpg imgSubCours
         });
         
</script>
    
    <asp:Literal ID="LtrMeta" runat="server"></asp:Literal>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
    <div class="grid grid_12">

                                
                                
                                <strong class="nicdark_color_white nicdark_font_size_60 nicdark_first_font">Kurs Detay</strong>
                                <div class="nicdark_section nicdark_height_20"></div>

                            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
     <a href="/Home">Anasayfa</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="/Teachers">Kurslar</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
     <a href="#">
         <asp:Label ID="lblKursAdi" runat="server"></asp:Label></a>
                               
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
    <div class="grid grid_8">
                                
<div class="nicdark_width_100_percentage nicdark_float_left">
    <h3><strong>
        <asp:Label ID="LblBaslik" runat="server" ></asp:Label></strong></h3>
    <div class="nicdark_section nicdark_height_20"></div>
    <p>
        <asp:Literal ID="LtrIcerik" runat="server"></asp:Literal>

    </p>

    <div class="nicdark_section nicdark_height_20"></div>

    <div class="nicdark_width_50_percentage nicdark_padding_right_10 nicdark_box_sizing_border_box nicdark_float_left">
        <img alt="" name="imgEducation" class="nicdark_section">    
    </div>
    <div class="nicdark_width_50_percentage nicdark_padding_left_10 nicdark_box_sizing_border_box nicdark_float_left">
        <img alt="" name="imgEducation" class="nicdark_section">    
    </div>
    <div class="nicdark_section nicdark_height_10"></div>
    <p>
       
        <asp:Literal ID="LtrIcerikDevam" runat="server"></asp:Literal>

    </p>

    <div class="nicdark_section nicdark_height_30"></div>

    <div class="nicdark_section">
        <img alt="" width="40" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-facebook-color.svg">
        <img alt="" width="40" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-twitter-color.svg">
        <img alt="" width="40" class="nicdark_margin_right_10" src="/Content/Language/img/icons/icon-mail-color.svg">
    </div>
</div>

                            </div>
    <div class="grid grid_4">

<h3><strong>Kurs Alt Hizmetleri</strong></h3>
<div class="nicdark_section nicdark_height_30"></div>
        <asp:Repeater ID="RepeaterAltHizmets" runat="server">
            <ItemTemplate>
                <div class="nicdark_section nicdark_position_relative">
    <img class="nicdark_position_absolute" width="100" name="imgSubCourse">
    <div class="nicdark_section nicdark_padding_left_120 nicdark_box_sizing_border_box">
       
        <div class="nicdark_section nicdark_height_5"></div>
        <a href='<%#"/SubCourseDetail/"+SiteProjeORM.Tools.KarakterTemizle(Eval("Baslik").ToString())+"-"+Eval("AltHizmetId") %>'><h4>
           <%#Eval("Baslik") %></h4></a>
         <div class="nicdark_section nicdark_height_10"></div>
        <!--<p class="">Fiyat: <%# Eval("Fiyat").ToString().Split(',')[0] %> TL</p>-->
         
        <div class="nicdark_section nicdark_height_10"></div>
       
       <!--<asp:LinkButton ID="LinkBtnDetay" CssClass="nicdark_display_inline_block nicdark_color_white  nicdark_bg_blue nicdark_padding_5_10 nicdark_border_radius_3 nicdark_font_size_13"  runat="server" PostBackUrl='<%#"/PayementCart/"+ SiteProjeORM.Tools.KarakterTemizle(Eval("Baslik").ToString())+"-"+Eval("AltHizmetId") %>'>Kayıt Ol</asp:LinkButton>-->
	   <asp:LinkButton ID="LinkBtnDetay" CssClass="nicdark_display_inline_block nicdark_color_white  nicdark_bg_blue nicdark_padding_5_10 nicdark_border_radius_3 nicdark_font_size_13"  runat="server" PostBackUrl='<%#"/SubCourseDetail/"+SiteProjeORM.Tools.KarakterTemizle(Eval("Baslik").ToString())+"-"+Eval("AltHizmetId") %>'>Detaylar</asp:LinkButton>

    </div>
</div>
            </ItemTemplate>
            <SeparatorTemplate>
                 <div class="nicdark_section nicdark_height_25"></div>
            </SeparatorTemplate>
        </asp:Repeater>


       
                            </div>
</asp:Content>
