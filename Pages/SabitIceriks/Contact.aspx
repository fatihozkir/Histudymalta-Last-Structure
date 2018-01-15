<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SiteProje.Pages.SabitIceriks.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderUstIcerik" runat="server">
     <div class="grid grid_12">

                                
                                
                                <strong class="nicdark_color_white nicdark_font_size_60 nicdark_first_font">Contact</strong>
                                <div class="nicdark_section nicdark_height_20"></div>

                            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceSayfaBilgi" runat="server">
     <a href="/Home">HomePage</a>
                                <img alt="" class="nicdark_margin_left_10 nicdark_margin_right_10" width="10" src="/Content/Language/img/icons/icon-next-grey.svg"/>
                                <a href="#">Contact</a>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceAnaIcerik" runat="server">
    <div class="nicdark_container nicdark_clearfix">

                            

                            <div class="grid grid_6">
                                
                               
                                <h3><strong>&nbsp;Send a Message</strong></h3>
                                 <div class="nicdark_section nicdark_height_10"></div>
                  <div class="nicdark_section nicdark_padding_20_100 nicdark_box_sizing_border_box">
                    
                    <div class="nicdark_section">
                        <div class="nicdark_width_50_percentage nicdark_width_100_percentage_all_iphone nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left">
                            <asp:TextBox required ID="txtIsım" CssClass="nicdark_padding_left_0 nicdark_background_none nicdark_border_top_width_0 nicdark_border_bottom_width_2 nicdark_border_right_width_0 nicdark_border_left_width_0" runat="server" placeholder="Name" ValidationGroup="msg"></asp:TextBox>
                            
                        </div>
                        <div class="nicdark_width_50_percentage nicdark_width_100_percentage_all_iphone nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left">
                            <asp:TextBox required ID="txtSoyad" CssClass="nicdark_padding_left_0 nicdark_background_none nicdark_border_top_width_0 nicdark_border_bottom_width_2 nicdark_border_right_width_0 nicdark_border_left_width_0" runat="server" placeholder="Surname" ValidationGroup="msg"></asp:TextBox>
                        </div>
                    </div>
                    <div class="nicdark_section">
                        <div class="nicdark_width_100_percentage nicdark_width_100_percentage_all_iphone nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left">
                            <asp:TextBox required ID="txtMail" CssClass="nicdark_padding_left_0 nicdark_background_none nicdark_border_top_width_0 nicdark_border_bottom_width_2 nicdark_border_right_width_0 nicdark_border_left_width_0" runat="server" placeholder="Phone Number" ValidationGroup="msg"></asp:TextBox>
                        </div>
                       
                    </div>
                    <div class="nicdark_section">
                        <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left">
                             <asp:TextBox required Rows="4" style="resize:vertical;" ID="txtMesaj" TextMode="MultiLine"  CssClass="nicdark_padding_left_0 nicdark_background_none nicdark_border_top_width_0 nicdark_border_bottom_width_2 nicdark_border_right_width_0 nicdark_border_left_width_0" placeholder="Message" runat="server" ValidationGroup="msg"></asp:TextBox>
                           
                        </div>
                    </div>
                    <div class="nicdark_section">
                        <div class="nicdark_width_100_percentage nicdark_padding_10 nicdark_box_sizing_border_box nicdark_float_left">
                                <asp:Button CssClass="nicdark_bg_white_hover nicdark_color_green_hover nicdark_border_2_solid_green nicdark_transition_all_08_ease nicdark_display_inline_block nicdark_text_align_center nicdark_box_sizing_border_box nicdark_width_100_percentage nicdark_color_white nicdark_bg_green nicdark_first_font nicdark_padding_10_20 nicdark_border_radius_3 " ID="BtnGonder" runat="server" Text="Send" ValidationGroup="msg" OnClick="BtnGonder_Click" />
                            
                        </div>
                    </div>

                     <div class="nicdark_section nicdark_padding_20 nicdark_box_sizing_border_box nicdark_bg_grey nicdark_border_bottom_1_solid_grey nicdark_text_align_center">
                    <h6><asp:Literal ID="LtrBilgi" runat="server"></asp:Literal></h6>
                   
                  </div>

                  </div>  

           

                                <div class="nicdark_section nicdark_height_50"></div>


                            </div>



                            <div class="grid grid_6">
                                


                                <div class="nicdark_float_left nicdark_width_100_percentage nicdark_width_100_percentage_all_iphone nicdark_padding_left_10 nicdark_padding_left_0_all_iphone nicdark_box_sizing_border_box">
                                    
                                    
                                    


                                    <table class="nicdark_section">
                                        <tbody>
                                            <tr class="nicdark_border_bottom_2_solid_grey">
                                                <td class="nicdark_padding_10 ">
                                                    <h6 class="nicdark_text_transform_uppercase"><strong>Telephone :</strong></h6>
                                                </td>
                                                <td class="nicdark_padding_10 "><p class=" nicdark_text_align_right">
                                                    <asp:Label ID="LblTelefon" runat="server" ></asp:Label></p></td>
                                            </tr>
                                            <tr class="nicdark_border_bottom_2_solid_grey">
                                                <td class="nicdark_padding_10 ">
                                                    <h6 class="nicdark_text_transform_uppercase"><strong>E-Mail :</strong></h6>
                                                </td>
                                                <td class="nicdark_padding_10"><p class=" nicdark_text_align_right"><asp:Label ID="LblMail" runat="server" ></asp:Label></p></td>
                                            </tr>
                                            <tr class="nicdark_border_bottom_2_solid_grey">
                                                <td class="nicdark_padding_10 ">
                                                    <h6 class="nicdark_text_transform_uppercase"><strong>Bank Acoount Information:</strong></h6>
                                                </td>
                                                <td class="nicdark_padding_10 "><p>
    <asp:Literal ID="LtrHesapBilgileri" runat="server"></asp:Literal></p></td>
                                            </tr>
                                        </tbody>
                                    </table>



                                </div>
                                <div class="nicdark_section nicdark_height_50"></div>
                             

                            </div>


                    
                        

                        </div>
</asp:Content>
