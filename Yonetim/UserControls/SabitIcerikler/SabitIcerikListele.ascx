<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SabitIcerikListele.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.SabitIcerikler.SabitIcerikListele" %>
<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Sabit Içerik Listesi
                          </header>
                          <div class="panel-body">
                          <asp:GridView cssclass="table table-striped table-advance table-hover" ID="grdViewSabitIcerik" runat="server" AutoGenerateColumns="False" DataKeyNames="SabitIcerikId" DataSourceID="SabitIcerikDataSource" OnRowCommand="grdViewSabitIcerik_RowCommand" GridLines="None">
                              <Columns>
                                  <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                                  <asp:TemplateField HeaderText="Icerik" SortExpression="Icerik">
                                      <EditItemTemplate>
                                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Icerik") %>'></asp:TextBox>
                                      </EditItemTemplate>
                                      <ItemTemplate>
                                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("Icerik") %>'></asp:Label>
                                      </ItemTemplate>
                                  </asp:TemplateField>
                                  <asp:TemplateField HeaderText="İşlemler">
                                      <ItemTemplate>
                                          <asp:LinkButton ID="btnDuzenle" Cssclass="btn btn-success" CommandName="Duzenle" CommandArgument='<%#Eval("SabitIcerikId") %>' runat="server"><i class="fa fa-edit"></i></asp:LinkButton>
                                          <asp:LinkButton ID="btnSil" Cssclass="btn btn-danger" CommandName="Sil" CommandArgument='<%#Eval("SabitIcerikId") %>' runat="server"><i class="icon_close_alt2"></i></asp:LinkButton>
                                        
                                            
</ItemTemplate>
                                  </asp:TemplateField>
                              </Columns>                                          
                                      

                          </asp:GridView>
                          <asp:SqlDataSource ID="SabitIcerikDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT * FROM [SabitIcerikler]"></asp:SqlDataSource>
                          </div>
                      </section>
                  </div>
              </div>