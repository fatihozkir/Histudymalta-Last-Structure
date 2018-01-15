<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OgretmenDuzenle.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Ogretmen.OgretmenDuzenle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
		  <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Öğretmen Düzenle</h3>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Öğretmen Düzenle
                          </header>
                          <div class="panel-body">
                              
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Ad:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="txtAd" CssClass="form-control" runat="server"></asp:TextBox>
                                      </div>
                                      <div class="col-sm-5">
                                          <br />
                                          <asp:RequiredFieldValidator CssClass="alert alert-block alert-danger fade in"  ControlToValidate="txtAd" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Adınızı Boş Geçmeyiniz !"></asp:RequiredFieldValidator>
                                          <br />
                                          </div>
                                  </div>
                              </div>
                         
                  
                          <div class="panel-body">

                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Soyad:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="txtSoyad" CssClass="form-control" runat="server"></asp:TextBox>
                                                     </div>
                                       <div class="col-sm-5">
                                           <br />
                                          <asp:RequiredFieldValidator CssClass="alert alert-block alert-danger fade in"  ControlToValidate="txtSoyad" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Soyadınızı Boş Geçmeyiniz !"></asp:RequiredFieldValidator>
                                          </div>
                                  </div>
                              </div>
                           <div class="panel-body">

                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Mail:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="txtMail" CssClass="form-control" runat="server"></asp:TextBox>
                                                     </div>
                                       <div class="col-sm-5">
                                           <br />
                                          <asp:RequiredFieldValidator CssClass="alert alert-block alert-danger fade in" ControlToValidate="txtMail" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mail Boş Geçmeyiniz !"></asp:RequiredFieldValidator><br /><br />
                                           <asp:RegularExpressionValidator CssClass="alert alert-block alert-danger fade in"  ControlToValidate="txtMail" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Mail Adresiniz Hatalı !" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                          </div>
                                  </div>
                              </div>
                           <div class="panel-body">

                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Skype Adres:</label>
                                      <div class="col-sm-5">
                                         
                                          <asp:TextBox ID="txtSkype" CssClass="form-control" runat="server"></asp:TextBox>
                                                     </div>
                                  </div>
                              </div>
                           <div class="panel-body">

                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Telefon:</label>
                                      <div class="col-sm-5">
                                           <ajaxToolkit:FilteredTextBoxExtender TargetControlID="txtTelefon" ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers" />
                                          <asp:TextBox ID="txtTelefon" CssClass="form-control" runat="server" MaxLength="11"></asp:TextBox>
                                                     </div>
                                  </div>
                              </div>
                          
                                   <div class="panel-body">

                                  <div class="form-group">
                           <label class="col-sm-2 control-label">Öğretmen Resim:</label>
                                <div class="col-sm-5">
                                    <asp:RadioButtonList AutoPostBack="true" CssClass="form-control" ID="RadioButtonListResimDegistir" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonListResimDegistir_SelectedIndexChanged" >
                                        <asp:ListItem Value="0">Değistir</asp:ListItem>
                                        <asp:ListItem Value="1" Selected>Değiştirme</asp:ListItem>
                                    </asp:RadioButtonList>
                                    </div>
                                    </div>
                               </div>
                                  
                              <div class="panel-body">

                                  <div class="form-group">
                           <label class="col-sm-2 control-label">Öğretmen Resim:</label>
                                <div class="col-sm-5">
                                    <asp:HiddenField ID="HiddenFieldResim" runat="server" />
                                    <asp:Image ID="ImageOgretmen" runat="server" />
                                    </div>
                                    </div>
                               </div>
                         
                          <asp:Panel ID="PanelResim" runat="server" Visible="false">
                               <div class="panel-body">

                                  <div class="form-group">
                           <label class="col-sm-2 control-label">Öğretmen Resim:</label>
                                <div class="col-sm-5">
                                          <asp:FileUpload CssClass="form-control" ID="fileUploadResim"  runat="server" />
                                    </div>
                                    </div>
                               </div>
                          </asp:Panel>
                              
                             
                          

                          <div class="panel-body">
                                <div class="form-group">
                                     <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-5">
                                         
                                          <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Düzenle" OnClick="Button1_Click" />
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
                  

              