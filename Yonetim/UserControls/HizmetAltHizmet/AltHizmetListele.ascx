<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AltHizmetListele.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.HizmetAltHizmet.AltHizmetListele" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>

<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Alt Hizmetlerimiz
                          </header>
                        
                                     
                          <div class="col-md-12">
                              <br />
                               <label class="col-sm-2 control-label">Hizmete Göre Filtre Seçin:</label>
                             
                              <asp:DropDownList CssClass="btn btn-success col-md-10" AppendDataBoundItems="true" data-toggle="dropdown" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Baslik" AutoPostBack="true" DataValueField="HizmetId" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                  <asp:ListItem Value="-1">Lütfen Filtrelemek İstediğiniz Hizmeti Seçin</asp:ListItem>
                                          </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT [HizmetId], [Baslik] FROM [Hizmetler]"></asp:SqlDataSource>
                              <br /><br />
                               <asp:GridView ID="GridViewAltHizmetler" CssClass="table table-striped table-advance table-hover"  Width="100%" AutoGenerateColumns="False" GridLines="None"  runat="server" OnRowCommand="GridViewAltHizmetler_RowCommand" >
                                   <Columns>
                                       <asp:TemplateField HeaderText="Hizmet">
                                           <ItemTemplate>
                                               <asp:Label ID="Label1" runat="server" Text='<%# Eval("Hizmet") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Baslik">
                                           <ItemTemplate>
                                               <asp:Label ID="Label2" runat="server" Text='<%# Eval("Baslik") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Icerik">
                                           <ItemTemplate>
                                               <asp:Label ID="Label3" runat="server" Text='<%# Eval("Icerik").ToString().Length>60?Eval("Icerik").ToString().Substring(0,59)+"...":Eval("Icerik") %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Fiyat">
                                           <ItemTemplate>
                                               <asp:Label ID="Label4" runat="server" Text='<%# Eval("Fiyat").ToString()+" TL" %>'></asp:Label>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                       <asp:TemplateField>
                                           <ItemTemplate>
                                               <table class="auto-style1">
                                                   <tr>
                                                       <td>
                                                           <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success"  runat="server" CommandArgument='<%# Eval("AltHizmetId") %>' CommandName="Duzenle"><i class="icon_check_alt2"></i></asp:LinkButton>
                                                       </td>
                                                       <td>
                                                           <asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger" runat="server" CommandArgument='<%# Eval("AltHizmetId") %>'  CommandName="Sil"><i class="icon_close_alt2"></i></asp:LinkButton>
                                                       </td>
                                                   </tr>
                                               </table>
                                           </ItemTemplate>
                                       </asp:TemplateField>
                                   </Columns>
                               </asp:GridView>
                          </div>
                         
                      </section>
                  </div>
              </div>