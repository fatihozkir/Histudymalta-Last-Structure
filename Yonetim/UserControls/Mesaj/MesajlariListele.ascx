<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MesajlariListele.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Mesaj.MesajlariListele" %>
<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Üyeleri Listesi
                          </header>
                          <div class="panel-body">
                              <asp:GridView ID="GridViewMesajlar" GridLines="None" CssClass="table table-striped table-advance table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MesajId" DataSourceID="SqlDataSourceMesajlar" OnRowCommand="GridViewMesajlar_RowCommand">
                                  <Columns>
                                      <asp:TemplateField ShowHeader="False">
                                          <ItemTemplate>
                                              <asp:LinkButton ID="LinkButton1" cssclass="btn btn-info" runat="server" CausesValidation="False" CommandArgument='<%#Eval("MesajId") %>' CommandName="Detay"><span class="fa fa-check"></span>Detay</asp:LinkButton>
                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandArgument='<%#Eval("MesajId") %>' CommandName="Sil" cssclass="btn btn-danger"><span class="fa fa-times"></span>Sil</asp:LinkButton>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
                                      <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" />
                                      <asp:BoundField DataField="Mail" HeaderText="Mail" SortExpression="Mail" />
                                      <asp:TemplateField HeaderText="Mesaj" SortExpression="Mesaj">
                                          <EditItemTemplate>
                                              <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Mesaj") %>'></asp:TextBox>
                                          </EditItemTemplate>
                                          <ItemTemplate>
                                              <asp:Label ID="Label1" runat="server" Text='<%# Bind("Mesaj").ToString().Length>60?Bind("Mesaj").Substring(0,59)+"...":Bind("Mesaj") %>'></asp:Label>
                                          </ItemTemplate>
                                      </asp:TemplateField>
                                      <asp:BoundField DataField="MesajTarihi" HeaderText="MesajTarihi" SortExpression="MesajTarihi" />
                                      <asp:BoundField DataField="IpAdres" HeaderText="IpAdres" SortExpression="IpAdres" />
                                  </Columns>
                              </asp:GridView>
                              <asp:SqlDataSource ID="SqlDataSourceMesajlar" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" DeleteCommand="DELETE FROM [Mesaj] WHERE [MesajId] = @MesajId" InsertCommand="INSERT INTO [Mesaj] ([Ad], [Soyad], [Mail], [Mesaj], [MesajTarihi], [IpAdres]) VALUES (@Ad, @Soyad, @Mail, @Mesaj, @MesajTarihi, @IpAdres)" SelectCommand="SELECT * FROM [Mesaj]" UpdateCommand="UPDATE [Mesaj] SET [Ad] = @Ad, [Soyad] = @Soyad, [Mail] = @Mail, [Mesaj] = @Mesaj, [MesajTarihi] = @MesajTarihi, [IpAdres] = @IpAdres WHERE [MesajId] = @MesajId">
                                  <DeleteParameters>
                                      <asp:Parameter Name="MesajId" Type="Int32" />
                                  </DeleteParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="Ad" Type="String" />
                                      <asp:Parameter Name="Soyad" Type="String" />
                                      <asp:Parameter Name="Mail" Type="String" />
                                      <asp:Parameter Name="Mesaj" Type="String" />
                                      <asp:Parameter Name="MesajTarihi" Type="DateTime" />
                                      <asp:Parameter Name="IpAdres" Type="String" />
                                  </InsertParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="Ad" Type="String" />
                                      <asp:Parameter Name="Soyad" Type="String" />
                                      <asp:Parameter Name="Mail" Type="String" />
                                      <asp:Parameter Name="Mesaj" Type="String" />
                                      <asp:Parameter Name="MesajTarihi" Type="DateTime" />
                                      <asp:Parameter Name="IpAdres" Type="String" />
                                      <asp:Parameter Name="MesajId" Type="Int32" />
                                  </UpdateParameters>
                              </asp:SqlDataSource>
                              </div>
                          </section>
                      </div>
    </div>