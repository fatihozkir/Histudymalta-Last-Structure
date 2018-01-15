<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AltHizmetDuzenle.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.HizmetAltHizmet.AltHizmetDuzenle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Hizmet Düzenle</h3>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel" >
                          <header class="panel-heading">
                             Hizmetlerimiz
                          </header>
                        <div class="panel-body">
                            <div class="form-group">
                                 <label class="col-sm-2 control-label">Hizmet Seçin:</label>
                                <div class="col-sm-5">
                                          <asp:DropDownList AppendDataBoundItems="true" CssClass="form-control"  ID="DrpDownHizmet" runat="server" DataSourceID="SqlDataSourceHizmet" DataTextField="Baslik" DataValueField="HizmetId">
                                              <asp:ListItem Value="-1">Hizmet Seçiniz</asp:ListItem>
                                          </asp:DropDownList>
                                          <asp:SqlDataSource ID="SqlDataSourceHizmet" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT [Baslik], [HizmetId] FROM [Hizmetler]"></asp:SqlDataSource>
                                      </div>

                                </div>
                            </div>
                          <div class="panel-body">
                               <div class="form-group">
                                      <label class="col-sm-2 control-label">Başlık:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server" required></asp:TextBox>
                                      </div>
                                     <div class="col-sm-5">
                                          <asp:RequiredFieldValidator cssclass="alert alert-block alert-danger fade in" ControlToValidate="txtBaslik" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Başlığı Boş Geçmeyiniz !"></asp:RequiredFieldValidator>
                                          </div>
                                  </div>
                              </div>
                          <div class="panel-body">
                               <div class="form-group">
                                      <label class="col-sm-2 control-label">İçerik:</label>
                                      <div class="col-sm-10">
                                          <CKEditor:CKEditorControl ID="editorIcerik" runat="server"></CKEditor:CKEditorControl>
                                          <br /><br />
                                           <asp:RequiredFieldValidator cssclass="alert alert-block alert-danger fade in" ControlToValidate="editorIcerik" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Başlığı Boş Geçmeyiniz !"></asp:RequiredFieldValidator>
                                          <br />
                                                     </div>
                                  </div>
                              </div>
                           <div class="panel-body">
                         <div class="form-group">
                                      
                                      <label class="col-sm-2 control-label"><br />Fiyat:</label>
                                      <div class="col-sm-5">
                                          <br />
                                          <asp:TextBox ID="txtFiyat" CssClass="form-control"  runat="server" ></asp:TextBox>
                                                      </div>
                                      <div class="col-sm-5">
                                          <br /><br />
                                          <asp:RequiredFieldValidator CssClass="alert alert-danger fade in" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fiyat Bilgisini Belirtmediniz !" ControlToValidate="txtFiyat"></asp:RequiredFieldValidator>
                                          <br />
                                          <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers" TargetControlID="txtFiyat" ValidChars="." />
                                          </div>
                                  </div>
                                  </div>
                           <asp:UpdatePanel ID="UpdateTagPanel" runat="server">
                                              <ContentTemplate>
                                 <div class="panel-body">
                         <div class="form-group">
                                      <br />
                                      <label class="col-sm-3 control-label"><br />Google İçin Arama Kelimeleri:</label>
                                      <div class="col-sm-2">
                                          <asp:TextBox ID="TxtKelime" CssClass="form-control" runat="server"></asp:TextBox>
                                          </div>
                            
                             <div class="col-sm-3">
                                 <asp:Button ID="BtnKelimeEkle" ValidationGroup="grpKelime" CssClass="btn btn-info" runat="server" Text="Kelime Ekle" OnClick="BtnKelimeEkle_Click" />
                                          </div>
                               <div class="col-sm-4">
                                          
                                          <asp:RequiredFieldValidator CssClass="alert alert-danger fade in" ID="RequiredFieldValidator4" runat="server" ValidationGroup="grpKelime" ErrorMessage="Kelime Bilgisini Belirtmediniz !" ControlToValidate="TxtKelime"></asp:RequiredFieldValidator>
                                  </div>
                             </div>
                                     </div>
                          <div class="panel-body">

                                      <div id="tagsinput_tagsinput" class="tagsinput " style="height: 100%;">
                                         
                                         
                                                  <asp:Repeater ID="RepeaterKelime" runat="server" OnItemCommand="RepeaterKelime_ItemCommand"  >
                                              <ItemTemplate>
                                                  <span class="tag"><span>
                                                      <asp:Literal ID="LtrTagName" Text='<%#Eval("Tag") %>' runat="server"></asp:Literal>&nbsp;&nbsp;</span><asp:LinkButton ID="LinkBtnKaldir" CssClass="tagsinput-remove-link" CommandName="Sil" CommandArgument='<%#Eval("TagId") %>' runat="server"></asp:LinkButton></span>

                                              </ItemTemplate>
                                          </asp:Repeater>
                                            
                                          
                                           
                                      </div>
                                  </div>
                                                       
                                              </ContentTemplate>
                                          </asp:UpdatePanel>
                             <div class="panel-body">
                                   <div class="form-group">
                                     <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-10">
                                          
                                          <asp:Button ID="btnDuzenle" CssClass="btn btn-primary" runat="server" Text="Düzenle" OnClick="btnDuzenle_Click"  />
                                                     </div>
                                  </div>
                                  <div class="form-group">
                                    <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-10">

                                          <br />
                                           <strong>
                                      <asp:Literal ID="ltrBilgi" runat="server"></asp:Literal></strong> 
                                          
                                          
                                                     </div>
                                  </div>
                             </div>
                         
                      </section>
                          </div>                  
                      
                  </div>

             