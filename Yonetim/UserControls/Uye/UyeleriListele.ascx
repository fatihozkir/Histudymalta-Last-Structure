<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UyeleriListele.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Uye.UyeleriListele" %>
<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Üyeleri Listesi
                          </header>
                          <div class="panel-body">
                              <asp:GridView GridLines="None" ID="GridViewUyeler" CssClass="table table-striped table-advance table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UyeId" DataSourceID="SqlDataSourceUyeler">
                                  <Columns>
                                      
                                      <asp:CommandField ShowDeleteButton="True" DeleteText="Sil" ControlStyle-CssClass="btn btn-danger" />
                                      
                                      <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
                                      <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" />
                                      <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                                      <asp:BoundField DataField="Sifre" HeaderText="Sifre" SortExpression="Sifre" />
                                      <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" />
                                      <asp:TemplateField HeaderText="Onay" SortExpression="Onay">
                                          
                                          <ItemTemplate>
                                              <asp:Label ID="LabelOnay" runat="server" Text='<%# Eval("Onay").ToString()=="True"?"Onaylı Üye":"Onaylı değil" %>'></asp:Label>
                                              
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                  </Columns>
                              </asp:GridView>
                              <asp:SqlDataSource ID="SqlDataSourceUyeler" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" DeleteCommand="DELETE FROM [Uye] WHERE [UyeId] = @UyeId" InsertCommand="INSERT INTO [Uye] ([Ad], [Soyad], [Mail], [Sifre], [Telefon], [Onay], [Abone]) VALUES (@Ad, @Soyad, @Mail, @Sifre, @Telefon, @Onay, @Abone)" SelectCommand="SELECT * FROM [Uye]" UpdateCommand="UPDATE [Uye] SET [Ad] = @Ad, [Soyad] = @Soyad, [Mail] = @Mail, [Sifre] = @Sifre, [Telefon] = @Telefon, [Onay] = @Onay, [Abone] = @Abone WHERE [UyeId] = @UyeId">
                                  <DeleteParameters>
                                      <asp:Parameter Name="UyeId" Type="Int32" />
                                  </DeleteParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="Ad" Type="String" />
                                      <asp:Parameter Name="Soyad" Type="String" />
                                      <asp:Parameter Name="Mail" Type="String" />
                                      <asp:Parameter Name="Sifre" Type="String" />
                                      <asp:Parameter Name="Telefon" Type="String" />
                                      <asp:Parameter Name="Onay" Type="Boolean" />
                                      <asp:Parameter Name="Abone" Type="Boolean" />
                                  </InsertParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="Ad" Type="String" />
                                      <asp:Parameter Name="Soyad" Type="String" />
                                      <asp:Parameter Name="Mail" Type="String" />
                                      <asp:Parameter Name="Sifre" Type="String" />
                                      <asp:Parameter Name="Telefon" Type="String" />
                                      <asp:Parameter Name="Onay" Type="Boolean" />
                                      <asp:Parameter Name="Abone" Type="Boolean" />
                                      <asp:Parameter Name="UyeId" Type="Int32" />
                                  </UpdateParameters>
                              </asp:SqlDataSource>
                          </div>
                        </section>
                  </div>
    </div>