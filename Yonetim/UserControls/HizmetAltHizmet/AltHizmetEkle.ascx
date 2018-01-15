<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AltHizmetEkle.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.HizmetAltHizmet.AltHizmetEkle" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Hizmet Ekle</h3>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Hizmetlerimiz
                          </header>
                          <div class="panel-body">
                               <div class="form-group">
                                      <label class="col-sm-2 control-label">Hizmet Seçin:</label>
                                      <div class="col-sm-5">
                                          <asp:DropDownList  AppendDataBoundItems="true" CssClass="form-control"  ID="DrpDownHizmet" runat="server" DataSourceID="SqlDataSourceHizmet" DataTextField="Baslik" DataValueField="HizmetId">
                                              <asp:ListItem Value="-1">Hizmet Seçiniz</asp:ListItem>
                                          </asp:DropDownList>
                                          <asp:SqlDataSource ID="SqlDataSourceHizmet" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT [Baslik], [HizmetId] FROM [Hizmetler]"></asp:SqlDataSource>
                                      </div>

                                   <div class="col-sm-5">

                                       <asp:RequiredFieldValidator ValidationGroup="kyt" CssClass="alert alert-danger fade in" ID="RequiredFieldValidator1" InitialValue="-1" runat="server" ErrorMessage="Ana Hizmet Belirtmediniz !" ControlToValidate="DrpDownHizmet"></asp:RequiredFieldValidator>

                                       </div>
                                  </div>
                              </div>
                          <div class="panel-body">
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Başlık:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server" ></asp:TextBox>
                                      </div>
                                       <div class="col-sm-5">
                                          <asp:RequiredFieldValidator ValidationGroup="kyt" cssclass="alert alert-block alert-danger fade in" ControlToValidate="txtBaslik" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Başlığı Boş Geçmeyiniz !"></asp:RequiredFieldValidator>
                                          </div>
                                    
                                  </div>
                              </div>
                              <div class="panel-body">
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">İçerik:</label>
                                      <div class="col-sm-10">
                                          <CKEditor:CKEditorControl ID="editorIcerik" runat="server"></CKEditor:CKEditorControl>
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
                                          <asp:RequiredFieldValidator ValidationGroup="kyt" CssClass="alert alert-danger fade in" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Fiyat Bilgisini Belirtmediniz !" ControlToValidate="txtFiyat"></asp:RequiredFieldValidator>
                                          <br />
                                          <ajaxToolkit:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers" TargetControlID="txtFiyat" ValidChars="." />
                                          </div>
                                  </div>
                             </div>
                                      
                                          
                               <div class="panel-body">
                                <div class="form-group">
                                     <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-10">
                                          <br />
                                          <asp:Button ID="Button1" ValidationGroup="kyt" CssClass="btn btn-primary" runat="server" Text="Ekle" OnClick="Button1_Click" />
                                                     </div>
                                  </div>
                                   </div>
                          <div class="panel-body">
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
             