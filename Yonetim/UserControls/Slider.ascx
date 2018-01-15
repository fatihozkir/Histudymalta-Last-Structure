<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slider.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Slider" %>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i>Slider</h3>
				</div>
			</div>

        <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Slider Islemleri
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
                             Mevcut Slider Resimleri
                          </header>
                          <div class="panel-body">
                              
                                  <div class="form-group">
                                      
                                      <div class="col-sm-12">
                                        
                                          <asp:GridView ID="GridViewResimler" GridLines="None" CssClass="table table-striped table-advance table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="SliderResimId" DataSourceID="SqlDataSourceResimler" OnRowCommand="GridViewResimler_RowCommand">
                                              <Columns>
                                                  <asp:TemplateField ShowHeader="False">
                                                      <ItemTemplate>
                                                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Sil" Text="Sil" CommandArgument='<%#Eval("SliderResimId")+"!"+Eval("ResimUrl") %>'></asp:LinkButton>
                                                      </ItemTemplate>
                                                      <ControlStyle CssClass="btn btn-danger" />
                                                  </asp:TemplateField>
                                                  <asp:TemplateField HeaderText="ResimUrl" SortExpression="ResimUrl">
                                                      <EditItemTemplate>
                                                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ResimUrl") %>'></asp:TextBox>
                                                      </EditItemTemplate>
                                                      <ItemTemplate>
                                                          <asp:Image ID="Image1" runat="server" 
                                                              ImageUrl='<%#"/Upload/Images/Small/"+Eval("ResimUrl") %>' />
                                                          
                                                      </ItemTemplate>
                                                  </asp:TemplateField>
                                              </Columns>
                                              
                                          </asp:GridView>
                                           <asp:SqlDataSource ID="SqlDataSourceResimler" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" DeleteCommand="DELETE FROM [SliderResim] WHERE [SliderResimId] = @original_SliderResimId AND (([ResimUrl] = @original_ResimUrl) OR ([ResimUrl] IS NULL AND @original_ResimUrl IS NULL))" InsertCommand="INSERT INTO [SliderResim] ([ResimUrl]) VALUES (@ResimUrl)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SliderResim]" UpdateCommand="UPDATE [SliderResim] SET [ResimUrl] = @ResimUrl WHERE [SliderResimId] = @original_SliderResimId AND (([ResimUrl] = @original_ResimUrl) OR ([ResimUrl] IS NULL AND @original_ResimUrl IS NULL))">
                                               <DeleteParameters>
                                                   <asp:Parameter Name="original_SliderResimId" Type="Int32" />
                                                   <asp:Parameter Name="original_ResimUrl" Type="String" />
                                               </DeleteParameters>
                                               <InsertParameters>
                                                   <asp:Parameter Name="ResimUrl" Type="String" />
                                               </InsertParameters>
                                               <UpdateParameters>
                                                   <asp:Parameter Name="ResimUrl" Type="String" />
                                                   <asp:Parameter Name="original_SliderResimId" Type="Int32" />
                                                   <asp:Parameter Name="original_ResimUrl" Type="String" />
                                               </UpdateParameters>
                                           </asp:SqlDataSource>
                                      </div>
                                      </div>
                              

                              </div>
                          
                          
                          </section>
                      </div>
                  </div>
  
              
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Slider Alt Yazı
                          </header>
                          <div class="panel-body">
                              
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">İçerik:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="txtSliderYazi" CssClass="form-control" runat="server"></asp:TextBox>
                                      </div>
                                      <div class="col-sm-5">
                                           <asp:RequiredFieldValidator ControlToValidate="txtSliderYazi" ID="RequiredFieldValidator2" CssClass="alert alert-block alert-danger fade in" runat="server" ErrorMessage="Lütfen Yazı Alanını Boş Geçmeyin !" ValidationGroup="yazi"></asp:RequiredFieldValidator>
                                      </div>
                                  </div>
                              

                              </div>
                          <div class="panel-body">
                              
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">İçerik Türü:</label>
                                      <div class="col-sm-5">
                                          <asp:DropDownList ID="DrpIcerikTur" CssClass="form-control" runat="server">
                                              <asp:ListItem Value="0">Büyük Başlık Yazı</asp:ListItem>
                                              <asp:ListItem Value="1">Büyük Başlık Altı Yazı</asp:ListItem>
                                              <asp:ListItem Value="2">Hareketli Yazı</asp:ListItem>
                                          </asp:DropDownList>
                                      </div>
                                      </div>
                              </div>
                        
                          <div class="panel-body">
                              <div class="form-group">
                                      <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-5">
                                          <asp:Button ID="BtnYaziEkle" ValidationGroup="yazi" CssClass="btn btn-info" runat="server" Text="Yazi Ekle" OnClick="BtnYaziEkle_Click" />
                                      </div>
                               </div>
                          </div>
                          </section>
                      </div>
    <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Büyük Başlık Slider Yazıları
                          </header>
                          <div class="panel-body">

                              <asp:GridView ID="GridViewBuyukBaslik" GridLines="None" CssClass="table table-striped table-advance table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SliderYaziId" DataSourceID="SqlDataSourceBuyukBaslik" OnRowUpdated="GridViewBuyukBaslik_RowUpdated">
                                  <Columns>
                                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="İptal" DeleteText="Sil" EditText="Düzenle" UpdateText="Güncelle" >
                                      <ControlStyle CssClass="btn btn-primary" />
                                      </asp:CommandField>
                                      <asp:BoundField DataField="Icerik" HeaderText="Icerik" SortExpression="Icerik" />
                                      <asp:CheckBoxField DataField="BuyukBaslik" HeaderText="BuyukBaslik" SortExpression="BuyukBaslik" />
                                      <asp:CheckBoxField DataField="BuyukAltBaslik" HeaderText="BuyukAltBaslik" SortExpression="BuyukAltBaslik" />
                                      <asp:CheckBoxField DataField="DegisenYazi" HeaderText="DegisenYazi" SortExpression="DegisenYazi" />
                                  </Columns>
                              </asp:GridView>

                              <asp:SqlDataSource ID="SqlDataSourceBuyukBaslik" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" DeleteCommand="DELETE FROM [SliderYazi] WHERE [SliderYaziId] = @original_SliderYaziId AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([BuyukBaslik] = @original_BuyukBaslik) OR ([BuyukBaslik] IS NULL AND @original_BuyukBaslik IS NULL)) AND (([BuyukAltBaslik] = @original_BuyukAltBaslik) OR ([BuyukAltBaslik] IS NULL AND @original_BuyukAltBaslik IS NULL)) AND (([DegisenYazi] = @original_DegisenYazi) OR ([DegisenYazi] IS NULL AND @original_DegisenYazi IS NULL))" InsertCommand="INSERT INTO [SliderYazi] ([Icerik], [BuyukBaslik], [BuyukAltBaslik], [DegisenYazi]) VALUES (@Icerik, @BuyukBaslik, @BuyukAltBaslik, @DegisenYazi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SliderYazi] WHERE ([BuyukBaslik] = @BuyukBaslik)" UpdateCommand="UPDATE [SliderYazi] SET [Icerik] = @Icerik, [BuyukBaslik] = @BuyukBaslik, [BuyukAltBaslik] = @BuyukAltBaslik, [DegisenYazi] = @DegisenYazi WHERE [SliderYaziId] = @original_SliderYaziId AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([BuyukBaslik] = @original_BuyukBaslik) OR ([BuyukBaslik] IS NULL AND @original_BuyukBaslik IS NULL)) AND (([BuyukAltBaslik] = @original_BuyukAltBaslik) OR ([BuyukAltBaslik] IS NULL AND @original_BuyukAltBaslik IS NULL)) AND (([DegisenYazi] = @original_DegisenYazi) OR ([DegisenYazi] IS NULL AND @original_DegisenYazi IS NULL))">
                                  <DeleteParameters>
                                      <asp:Parameter Name="original_SliderYaziId" Type="Int32" />
                                      <asp:Parameter Name="original_Icerik" Type="String" />
                                      <asp:Parameter Name="original_BuyukBaslik" Type="Boolean" />
                                      <asp:Parameter Name="original_BuyukAltBaslik" Type="Boolean" />
                                      <asp:Parameter Name="original_DegisenYazi" Type="Boolean" />
                                  </DeleteParameters>
                                  <InsertParameters>
                                      <asp:Parameter Name="Icerik" Type="String" />
                                      <asp:Parameter Name="BuyukBaslik" Type="Boolean" />
                                      <asp:Parameter Name="BuyukAltBaslik" Type="Boolean" />
                                      <asp:Parameter Name="DegisenYazi" Type="Boolean" />
                                  </InsertParameters>
                                  <SelectParameters>
                                      <asp:Parameter DefaultValue="True" Name="BuyukBaslik" Type="Boolean" />
                                  </SelectParameters>
                                  <UpdateParameters>
                                      <asp:Parameter Name="Icerik" Type="String" />
                                      <asp:Parameter Name="BuyukBaslik" Type="Boolean" />
                                      <asp:Parameter Name="BuyukAltBaslik" Type="Boolean" />
                                      <asp:Parameter Name="DegisenYazi" Type="Boolean" />
                                      <asp:Parameter Name="original_SliderYaziId" Type="Int32" />
                                      <asp:Parameter Name="original_Icerik" Type="String" />
                                      <asp:Parameter Name="original_BuyukBaslik" Type="Boolean" />
                                      <asp:Parameter Name="original_BuyukAltBaslik" Type="Boolean" />
                                      <asp:Parameter Name="original_DegisenYazi" Type="Boolean" />
                                  </UpdateParameters>
                              </asp:SqlDataSource>

                          </div>
                           
                          </section>
        </div>
    <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Büyük Başlık Slider Yazıları
                          </header>
                          <div class="panel-body">
                                 <asp:GridView ID="GridViewBuyukBaslikAlti" GridLines="None" CssClass="table table-striped table-advance table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SliderYaziId" DataSourceID="SqlDataSourceBuyukBaslikAlti" OnRowUpdated="GridViewBuyukBaslikAlti_RowUpdated">
                                     <Columns>
                                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="İptal" DeleteText="Sil" EditText="Düzenle" UpdateText="Güncelle" >
                                         <ControlStyle CssClass="btn btn-success" />
                                         </asp:CommandField>
                                         <asp:BoundField DataField="Icerik" HeaderText="Icerik" SortExpression="Icerik" />
                                         <asp:CheckBoxField DataField="BuyukBaslik" HeaderText="BuyukBaslik" SortExpression="BuyukBaslik" />
                                         <asp:CheckBoxField DataField="BuyukAltBaslik" HeaderText="BuyukAltBaslik" SortExpression="BuyukAltBaslik" />
                                         <asp:CheckBoxField DataField="DegisenYazi" HeaderText="DegisenYazi" SortExpression="DegisenYazi" />
                                     </Columns>
                              </asp:GridView>


                                 <asp:SqlDataSource ID="SqlDataSourceBuyukBaslikAlti" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" DeleteCommand="DELETE FROM [SliderYazi] WHERE [SliderYaziId] = @original_SliderYaziId AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([BuyukBaslik] = @original_BuyukBaslik) OR ([BuyukBaslik] IS NULL AND @original_BuyukBaslik IS NULL)) AND (([BuyukAltBaslik] = @original_BuyukAltBaslik) OR ([BuyukAltBaslik] IS NULL AND @original_BuyukAltBaslik IS NULL)) AND (([DegisenYazi] = @original_DegisenYazi) OR ([DegisenYazi] IS NULL AND @original_DegisenYazi IS NULL))" InsertCommand="INSERT INTO [SliderYazi] ([Icerik], [BuyukBaslik], [BuyukAltBaslik], [DegisenYazi]) VALUES (@Icerik, @BuyukBaslik, @BuyukAltBaslik, @DegisenYazi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SliderYazi] WHERE ([BuyukAltBaslik] = @BuyukAltBaslik)" UpdateCommand="UPDATE [SliderYazi] SET [Icerik] = @Icerik, [BuyukBaslik] = @BuyukBaslik, [BuyukAltBaslik] = @BuyukAltBaslik, [DegisenYazi] = @DegisenYazi WHERE [SliderYaziId] = @original_SliderYaziId AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([BuyukBaslik] = @original_BuyukBaslik) OR ([BuyukBaslik] IS NULL AND @original_BuyukBaslik IS NULL)) AND (([BuyukAltBaslik] = @original_BuyukAltBaslik) OR ([BuyukAltBaslik] IS NULL AND @original_BuyukAltBaslik IS NULL)) AND (([DegisenYazi] = @original_DegisenYazi) OR ([DegisenYazi] IS NULL AND @original_DegisenYazi IS NULL))">
                                     <DeleteParameters>
                                         <asp:Parameter Name="original_SliderYaziId" Type="Int32" />
                                         <asp:Parameter Name="original_Icerik" Type="String" />
                                         <asp:Parameter Name="original_BuyukBaslik" Type="Boolean" />
                                         <asp:Parameter Name="original_BuyukAltBaslik" Type="Boolean" />
                                         <asp:Parameter Name="original_DegisenYazi" Type="Boolean" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="Icerik" Type="String" />
                                         <asp:Parameter Name="BuyukBaslik" Type="Boolean" />
                                         <asp:Parameter Name="BuyukAltBaslik" Type="Boolean" />
                                         <asp:Parameter Name="DegisenYazi" Type="Boolean" />
                                     </InsertParameters>
                                     <SelectParameters>
                                         <asp:Parameter DefaultValue="True" Name="BuyukAltBaslik" Type="Boolean" />
                                     </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="Icerik" Type="String" />
                                         <asp:Parameter Name="BuyukBaslik" Type="Boolean" />
                                         <asp:Parameter Name="BuyukAltBaslik" Type="Boolean" />
                                         <asp:Parameter Name="DegisenYazi" Type="Boolean" />
                                         <asp:Parameter Name="original_SliderYaziId" Type="Int32" />
                                         <asp:Parameter Name="original_Icerik" Type="String" />
                                         <asp:Parameter Name="original_BuyukBaslik" Type="Boolean" />
                                         <asp:Parameter Name="original_BuyukAltBaslik" Type="Boolean" />
                                         <asp:Parameter Name="original_DegisenYazi" Type="Boolean" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>


                          </div>
                           
                          </section>
        </div>
    <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Değişen Yazılar
                          </header>
                          <div class="panel-body">
                                 <asp:GridView ID="GridViewDegisenYazi" GridLines="None" CssClass="table table-striped table-advance table-hover" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SliderYaziId" DataSourceID="SqlDataSourceDegisenYazi" OnRowUpdated="GridViewDegisenYazi_RowUpdated">
                                     <Columns>
                                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="İptal" DeleteText="Sil" EditText="Düzenle" UpdateText="Güncelle" >
                                         <ControlStyle CssClass="btn btn-danger" />
                                         </asp:CommandField>
                                         <asp:BoundField DataField="Icerik" HeaderText="Icerik" SortExpression="Icerik" />
                                         <asp:CheckBoxField DataField="BuyukBaslik" HeaderText="BuyukBaslik" SortExpression="BuyukBaslik" />
                                         <asp:CheckBoxField DataField="BuyukAltBaslik" HeaderText="BuyukAltBaslik" SortExpression="BuyukAltBaslik" />
                                         <asp:CheckBoxField DataField="DegisenYazi" HeaderText="DegisenYazi" SortExpression="DegisenYazi" />
                                     </Columns>
                              </asp:GridView>

                                 <asp:SqlDataSource ID="SqlDataSourceDegisenYazi" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" DeleteCommand="DELETE FROM [SliderYazi] WHERE [SliderYaziId] = @original_SliderYaziId AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([BuyukBaslik] = @original_BuyukBaslik) OR ([BuyukBaslik] IS NULL AND @original_BuyukBaslik IS NULL)) AND (([BuyukAltBaslik] = @original_BuyukAltBaslik) OR ([BuyukAltBaslik] IS NULL AND @original_BuyukAltBaslik IS NULL)) AND (([DegisenYazi] = @original_DegisenYazi) OR ([DegisenYazi] IS NULL AND @original_DegisenYazi IS NULL))" InsertCommand="INSERT INTO [SliderYazi] ([Icerik], [BuyukBaslik], [BuyukAltBaslik], [DegisenYazi]) VALUES (@Icerik, @BuyukBaslik, @BuyukAltBaslik, @DegisenYazi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SliderYazi] WHERE ([DegisenYazi] = @DegisenYazi)" UpdateCommand="UPDATE [SliderYazi] SET [Icerik] = @Icerik, [BuyukBaslik] = @BuyukBaslik, [BuyukAltBaslik] = @BuyukAltBaslik, [DegisenYazi] = @DegisenYazi WHERE [SliderYaziId] = @original_SliderYaziId AND (([Icerik] = @original_Icerik) OR ([Icerik] IS NULL AND @original_Icerik IS NULL)) AND (([BuyukBaslik] = @original_BuyukBaslik) OR ([BuyukBaslik] IS NULL AND @original_BuyukBaslik IS NULL)) AND (([BuyukAltBaslik] = @original_BuyukAltBaslik) OR ([BuyukAltBaslik] IS NULL AND @original_BuyukAltBaslik IS NULL)) AND (([DegisenYazi] = @original_DegisenYazi) OR ([DegisenYazi] IS NULL AND @original_DegisenYazi IS NULL))">
                                     <DeleteParameters>
                                         <asp:Parameter Name="original_SliderYaziId" Type="Int32" />
                                         <asp:Parameter Name="original_Icerik" Type="String" />
                                         <asp:Parameter Name="original_BuyukBaslik" Type="Boolean" />
                                         <asp:Parameter Name="original_BuyukAltBaslik" Type="Boolean" />
                                         <asp:Parameter Name="original_DegisenYazi" Type="Boolean" />
                                     </DeleteParameters>
                                     <InsertParameters>
                                         <asp:Parameter Name="Icerik" Type="String" />
                                         <asp:Parameter Name="BuyukBaslik" Type="Boolean" />
                                         <asp:Parameter Name="BuyukAltBaslik" Type="Boolean" />
                                         <asp:Parameter Name="DegisenYazi" Type="Boolean" />
                                     </InsertParameters>
                                     <SelectParameters>
                                         <asp:Parameter DefaultValue="True" Name="DegisenYazi" Type="Boolean" />
                                     </SelectParameters>
                                     <UpdateParameters>
                                         <asp:Parameter Name="Icerik" Type="String" />
                                         <asp:Parameter Name="BuyukBaslik" Type="Boolean" />
                                         <asp:Parameter Name="BuyukAltBaslik" Type="Boolean" />
                                         <asp:Parameter Name="DegisenYazi" Type="Boolean" />
                                         <asp:Parameter Name="original_SliderYaziId" Type="Int32" />
                                         <asp:Parameter Name="original_Icerik" Type="String" />
                                         <asp:Parameter Name="original_BuyukBaslik" Type="Boolean" />
                                         <asp:Parameter Name="original_BuyukAltBaslik" Type="Boolean" />
                                         <asp:Parameter Name="original_DegisenYazi" Type="Boolean" />
                                     </UpdateParameters>
                                 </asp:SqlDataSource>

                          </div>
                           
                          </section>
        </div>
                  </div>
    </ContentTemplate>
</asp:UpdatePanel>


