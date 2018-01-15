<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HizmetListele.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.HizmetAltHizmet.HizmetListele" %>
<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Hizmetlerimiz
                          </header>

                          <asp:GridView ID="GridViewHizmetler" CssClass="table table-striped table-advance table-hover"  Width="100%" AutoGenerateColumns="False" GridLines="None" runat="server" DataSourceID="SqlDataSourceHizmetler" AllowPaging="True" OnRowCommand="GridViewHizmetler_RowCommand">
                               <Columns>
                                  <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                                  <asp:TemplateField HeaderText="Icerik" SortExpression="Icerik">
                                                                           <ItemTemplate>
                                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Icerik").ToString().Length>50?Eval("Icerik").ToString().Substring(0,49)+"...":Eval("Icerik") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="İşlemler">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="btnDuzenle" Cssclass="btn btn-success" CommandName="Duzenle" CommandArgument='<%#Eval("HizmetId") %>' runat="server"><i class="fa fa-edit"></i></asp:LinkButton>
                                          <asp:LinkButton ID="btnSil" Cssclass="btn btn-danger" CommandName="Sil" CommandArgument='<%#Eval("HizmetId") %>' runat="server"><i class="icon_close_alt2"></i></asp:LinkButton>
                                        
                                            
</ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>                  
                          </asp:GridView>

                          <asp:SqlDataSource ID="SqlDataSourceHizmetler" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT * FROM [Hizmetler]"></asp:SqlDataSource>

                      </section>
                  </div>
              </div>
