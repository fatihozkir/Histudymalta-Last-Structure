<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AltSayfaResim.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.AltSayfaResim" %>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i>Alt Sayfa Arka Resimleri</h3>
				</div>
			</div>
<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Alt Sayfa Resim Islemleri
                          </header>
                          <div class="panel-body">
                              
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Başlık:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                                      </div>
                                      </div>
                              

                              </div>
                           <div class="panel-body">
                              
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Başlık:</label>
                                      <div class="col-sm-5">
                                          <asp:DropDownList ID="DrpDownSecenek" CssClass="form-control" runat="server">
                                              <asp:ListItem Value="0">Hakkimda</asp:ListItem>
                                              <asp:ListItem Value="1">Kurs Listesi</asp:ListItem>
                                              <asp:ListItem Value="2">KursDetay</asp:ListItem>
                                              <asp:ListItem Value="3">Blog Yazıları Listesi</asp:ListItem>
                                              <asp:ListItem Value="4">Blog Yazı Detayı</asp:ListItem>
                                              <asp:ListItem Value="5">Iletişim</asp:ListItem>
                                          </asp:DropDownList>
                                      </div>
                                      </div>
                              

                              </div>
                          <div class="panel-body">
                              <div class="form-group">
                                      <label class="col-sm-2 control-label">Resim Yükle:</label>
                                      <div class="col-sm-5">
                                          <asp:FileUpload ID="FileUploadResim" runat="server" />
                                      </div>
                                  <div class="col-sm-5">
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="FileUploadResim" CssClass="alert alert-block alert-danger fade in" runat="server" ErrorMessage="Lütfen Resim Yükleme Alanını Boş Geçmeyin !" ValidationGroup="resim"></asp:RequiredFieldValidator>
                                      </div>
                               </div>
                          </div>
                          <div class="panel-body">
                              <div class="form-group">
                                      <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-5">
                                          <asp:Button ID="BtnSliderEkle" ValidationGroup="resim" CssClass="btn btn-primary" runat="server" Text="Resim Ekle" OnClick="BtnSliderEkle_Click" />
                                      </div>
                               </div>
                          </div>
                          </section>
                      </div>

                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Mevcut Resimler</header>
                          <div class="panel-body">
                              
                                  <div class="form-group">
                                      
                                      <div class="col-sm-12">
                                          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                              <ContentTemplate>
                                                  <asp:GridView ID="GridView1" GridLines="None" CssClass="table table-striped table-advance table-hover" runat="server"  AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="AltResimId" DataSourceID="SqlDataSource1">
                                                      <Columns>
                                                          <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="İptal" DeleteText="Sil" EditText="Düzenle" UpdateText="Güncelle" >
                                                          <ControlStyle CssClass="btn btn-primary" />
                                                          </asp:CommandField>
                                                          <asp:BoundField DataField="AltResimId" Visible="False" HeaderText="AltResimId" InsertVisible="False" ReadOnly="True" SortExpression="AltResimId" />
                                                          <asp:TemplateField HeaderText="ResimUrl" SortExpression="ResimUrl">
                                                              <EditItemTemplate>
                                                                  <asp:TextBox Visible="False" ID="TextBox1" runat="server" Text='<%# Bind("ResimUrl") %>'></asp:TextBox>
                                                                    <asp:Image ID="Image2" ImageUrl='<%#"/Upload/Images/Small/"+Eval("ResimUrl") %>' runat="server" />
                                                              </EditItemTemplate>
                                                              <ItemTemplate>
                                                                  <asp:Label Visible="False" ID="Label1" runat="server" Text='<%# Bind("ResimUrl") %>'></asp:Label>
                                                                  <asp:Image ID="Image1" ImageUrl='<%#"/Upload/Images/Small/"+Eval("ResimUrl") %>' runat="server" />
                                                              </ItemTemplate>
                                                          </asp:TemplateField>
                                                          <asp:CheckBoxField DataField="Hakkimda" HeaderText="Hakkimda" SortExpression="Hakkimda" />
                                                          <asp:CheckBoxField DataField="KursListeleme" HeaderText="KursListeleme" SortExpression="KursListeleme" />
                                                          <asp:CheckBoxField DataField="KursDetay" HeaderText="KursDetay" SortExpression="KursDetay" />
                                                          <asp:CheckBoxField DataField="BlogListeleme" HeaderText="BlogListeleme" SortExpression="BlogListeleme" />
                                                          <asp:CheckBoxField DataField="BlogDetay" HeaderText="BlogDetay" SortExpression="BlogDetay" />
                                                          <asp:CheckBoxField DataField="Iletisim" HeaderText="Iletisim" SortExpression="Iletisim" />
                                                          <asp:CheckBoxField DataField="Giris" Visible="False" HeaderText="Giris" SortExpression="Giris" />
                                                      </Columns>
                                                  </asp:GridView>
                                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" DeleteCommand="DELETE FROM [AltSayfaResim] WHERE [AltResimId] = @AltResimId" InsertCommand="INSERT INTO [AltSayfaResim] ([ResimUrl], [Hakkimda], [KursListeleme], [KursDetay], [BlogListeleme], [BlogDetay], [Iletisim], [Giris]) VALUES (@ResimUrl, @Hakkimda, @KursListeleme, @KursDetay, @BlogListeleme, @BlogDetay, @Iletisim, @Giris)" SelectCommand="SELECT * FROM [AltSayfaResim]" UpdateCommand="UPDATE [AltSayfaResim] SET [ResimUrl] = @ResimUrl, [Hakkimda] = @Hakkimda, [KursListeleme] = @KursListeleme, [KursDetay] = @KursDetay, [BlogListeleme] = @BlogListeleme, [BlogDetay] = @BlogDetay, [Iletisim] = @Iletisim, [Giris] = @Giris WHERE [AltResimId] = @AltResimId">
                                                      <DeleteParameters>
                                                          <asp:Parameter Name="AltResimId" Type="Int32" />
                                                      </DeleteParameters>
                                                      <InsertParameters>
                                                          <asp:Parameter Name="ResimUrl" Type="String" />
                                                          <asp:Parameter Name="Hakkimda" Type="Boolean" />
                                                          <asp:Parameter Name="KursListeleme" Type="Boolean" />
                                                          <asp:Parameter Name="KursDetay" Type="Boolean" />
                                                          <asp:Parameter Name="BlogListeleme" Type="Boolean" />
                                                          <asp:Parameter Name="BlogDetay" Type="Boolean" />
                                                          <asp:Parameter Name="Iletisim" Type="Boolean" />
                                                          <asp:Parameter Name="Giris" Type="Boolean" />
                                                      </InsertParameters>
                                                      <UpdateParameters>
                                                          <asp:Parameter Name="ResimUrl" Type="String" />
                                                          <asp:Parameter Name="Hakkimda" Type="Boolean" />
                                                          <asp:Parameter Name="KursListeleme" Type="Boolean" />
                                                          <asp:Parameter Name="KursDetay" Type="Boolean" />
                                                          <asp:Parameter Name="BlogListeleme" Type="Boolean" />
                                                          <asp:Parameter Name="BlogDetay" Type="Boolean" />
                                                          <asp:Parameter Name="Iletisim" Type="Boolean" />
                                                          <asp:Parameter Name="Giris" Type="Boolean" />
                                                          <asp:Parameter Name="AltResimId" Type="Int32" />
                                                      </UpdateParameters>
                                                  </asp:SqlDataSource>
                                              </ContentTemplate>
                                          </asp:UpdatePanel>
                                         
                                      </div>
                                      </div>
                              

                              </div>
                          
                          
                          </section>
                      </div>
                  </div>
