<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Odeme.aspx.cs" Inherits="SiteProje.Pages.Sepet.Odeme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script>
         $(document).ready(function () {
             $("#imgCourse").each(function () {
                 var arraySrc = ["img1","img2","img3","img4","img12","img14","img21","img23","img25"];
                 var rndNumber = Math.floor((Math.random() * 8) + 1);
                 var source = "/Content/Language/img/courses/" + arraySrc[rndNumber] + ".jpg";
                 $(this).attr("src", source);
                 
             });
         });
         
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
     <div class="grid grid_8">

                            <div class="nicdark_section nicdark_box_sizing_border_box nicdark_overflow_hidden nicdark_overflow_x_auto nicdark_cursor_move_responsive">

                                <table class="nicdark_section">
                                    <thead>
                                        <tr class="nicdark_border_bottom_2_solid_grey">
                                            <td class="nicdark_padding_20 nicdark_width_25_percentage">
                                                <h6 class="nicdark_text_transform_uppercase">Service</h6>    
                                            </td>
                                            <td class="nicdark_padding_20 nicdark_width_30_percentage">   
                                            </td>
                                            <td class="nicdark_padding_20 nicdark_width_15_percentage">  
                                                <h6 class="nicdark_text_transform_uppercase">Teacher</h6> 
                                            </td>
                                           
                                            <td class="nicdark_padding_20 nicdark_width_15_percentage">
                                                <h6 class="nicdark_text_transform_uppercase">Unit Price</h6>    
                                            </td>
                                            <td class="nicdark_padding_20 nicdark_width_5_percentage">   
                                            </td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="nicdark_border_bottom_2_solid_grey">
                                            <td class="nicdark_padding_20">
                                                <img alt="" class="nicdark_section" id="imgCourse">   
                                            </td>
                                            <td class="nicdark_padding_20"> 
                                                <h3><strong>
         <asp:Label ID="LblHizmet" runat="server"></asp:Label></strong></h3>  
                                            </td>
                                            <td class="nicdark_padding_20">
                                               <asp:DropDownList ID="DrpOgretmen" Enabled="false" CssClass="nicdark_padding_left_0 nicdark_background_none nicdark_border_top_width_0 nicdark_border_bottom_width_2 nicdark_border_right_width_0 nicdark_border_left_width_0" runat="server" ></asp:DropDownList>
                                              
                                            </td>
                                           
                                           <td class="nicdark_padding_20">  
                                                <p><asp:Label ID="LblFiyat" runat="server"></asp:Label> $</p> 
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>

                            </div>
         <div class="nicdark_section nicdark_height_50"></div>
           <div class="nicdark_section nicdark_box_sizing_border_box nicdark_overflow_hidden nicdark_overflow_x_auto nicdark_cursor_move_responsive">
               <table class="nicdark_section">
                                    <thead>
                                        <tr class="nicdark_border_bottom_2_solid_grey">
                                            <td class="nicdark_padding_20 nicdark_width_25_percentage">
                                                <h6 class="nicdark_text_transform_uppercase">Meeting Date</h6>    
                                            </td>
                                           
                                            <td class="nicdark_padding_20 nicdark_width_15_percentage">  
                                                <h6 class="nicdark_text_transform_uppercase">Start Time</h6> 
                                            </td>
                                           
                                            <td class="nicdark_padding_20 nicdark_width_15_percentage">
                                                <h6 class="nicdark_text_transform_uppercase">End Time</h6>    
                                            </td>

                                            <td class="nicdark_padding_20 nicdark_width_5_percentage">   
                                            </td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                                <asp:Repeater ID="RepeaterRandevular" runat="server" OnItemCommand="RepeaterRandevular_ItemCommand">
                                                    <ItemTemplate>
                                                        <tr class="nicdark_border_bottom_2_solid_grey">
                                            <td class="nicdark_padding_20">
                                               <strong> <%# Eval("Gun")+"/"+Eval("Ay")+"/"+Eval("Yil") %></strong>
                                             </td>

                                             <td class="nicdark_padding_20">
                                                <strong>  <%# Eval("BaslangicSaati") %></strong>
                                             </td>

                                             <td class="nicdark_padding_20">
                                               <strong>   <%# Eval("BitisSaati") %></strong>
                                             </td>

                                             <td class="nicdark_padding_20">
                                                 <div class="nicdark_width_100_percentage nicdark_padding_5 nicdark_box_sizing_border_box nicdark_float_left">
                                                     <asp:LinkButton cssclass="nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_red nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 " ID="LinkButtonKayit" runat="server" CommandArgument='<%#Eval("RandevuId") %>' CommandName="Kayit">Register to Lesson</asp:LinkButton>
                                          
                                    </div>
                                             </td>

  
                                                          
                                                         </tr>
                                                    </ItemTemplate>
                                                     
                                                </asp:Repeater>
                                        </tbody>
                                        </table>
               
               </div>
                            
           <asp:SqlDataSource ID="SqlDataSourceRandevu" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT BaslangicSaati, RandevuTarihi, BitisSaati, RandevuId FROM Randevu WHERE (AltHizmetId = @AltHizmetId)">
                                                    <SelectParameters>
                                                        <asp:RouteParameter Name="AltHizmetId" RouteKey="AltHizmetId" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>

                        </div>

                        <div class="grid grid_4">

                            <div class="nicdark_section nicdark_bg_grey nicdark_border_1_solid_grey nicdark_padding_20 nicdark_box_sizing_border_box">


                                <table class="nicdark_section">
                                    <thead>
                                        <tr class="nicdark_border_bottom_2_solid_grey">
                                            <td class="nicdark_padding_20 nicdark_width_100_percentage">
                                                <h6 class="nicdark_text_transform_uppercase">Bank Account Information</h6>    
                                            </td>
                                            <td class="nicdark_padding_20 nicdark_width_50_percentage">   
                                            </td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                    
                                        <tr class="nicdark_border_bottom_2_solid_grey">
                                            <td class="nicdark_padding_10" style="width:100%;">  
                                                <p>
                 <asp:Label ID="LblBanka" runat="server"></asp:Label></p> 
                                            </td>
                                           
                                        </tr>
                                        <tr class="">
                                            <td class="nicdark_padding_20">  
                                                <p>Total Price</p> 
                                            </td>
                                            <td class="nicdark_padding_20">
                                                <h2><strong> <asp:Label ID="LblToplamTutar" runat="server"></asp:Label>$</strong></h2>    
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>  



                            </div>
                        
                        </div>

</asp:Content>
