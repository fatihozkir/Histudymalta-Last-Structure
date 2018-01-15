<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CokluIcerikListele.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.CokluIcerikler.CokluIcerikListele" %>
<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Çoklu Içerik Listesi
                          </header>
                          <asp:GridView cssclass="table table-striped table-advance table-hover" ID="grdViewSabitIcerik" runat="server" AutoGenerateColumns="False" DataKeyNames="CokluIcerikId" DataSourceID="SabitIcerikDataSource" OnRowCommand="grdViewSabitIcerik_RowCommand" GridLines="None">
                              <Columns>
                                  <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                                  <%--<asp:TemplateField HeaderText="Icerik" SortExpression="Icerik">
                                      <EditItemTemplate>
                                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("Icerik").ToString().Length>50?Eval("Icerik").ToString().Substring(0,49)+"...":Eval("Icerik") %>'></asp:Label>
                                      </EditItemTemplate>
                                      <ItemTemplate>
                                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Icerik").ToString().Length>50?Eval("Icerik").ToString().Substring(0,49)+"...":Eval("Icerik") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>--%>
                                  <asp:TemplateField HeaderText="İşlemler">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="btnDuzenle" Cssclass="btn btn-success" CommandName="Duzenle" CommandArgument='<%#Eval("CokluIcerikId") %>' runat="server"><i class="fa fa-edit"></i></asp:LinkButton>
                                          <asp:LinkButton ID="btnSil" Cssclass="btn btn-danger" CommandName="Sil" CommandArgument='<%#Eval("CokluIcerikId") %>' runat="server"><i class="icon_close_alt2"></i></asp:LinkButton>
                                        
                                            
</ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>                                          
                                      

                          </asp:GridView>
                          <asp:SqlDataSource ID="SabitIcerikDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT * FROM [CokluIcerik]"></asp:SqlDataSource>
                          
                      </section>
                  </div>
              </div>