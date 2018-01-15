<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Iletisim.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.SabitIcerikler.Iletisim" %>
 <%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          
                          

                          <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Iletişim Bilgilerim
                          </header>
                   
                          <div class="panel-body">
                               <div class="form-group">
                                      <label class="col-sm-2 control-label">Hesap Bilgileri:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="TxtHesap" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                      </div>
                                      <div class="col-sm-5">
                                          <asp:RequiredFieldValidator cssclass="alert alert-block alert-danger fade in" ControlToValidate="TxtHesap" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Hesap Bilgilerini Boş Geçmeyiniz !"></asp:RequiredFieldValidator>
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
                                      <label class="col-sm-2 control-label">Mail:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="txtMail" CssClass="form-control" runat="server"></asp:TextBox>
                                                     </div>
                                       <div class="col-sm-5">
                                           <br />
                                          <asp:RequiredFieldValidator CssClass="alert alert-block alert-danger fade in" ControlToValidate="txtMail" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mail Boş Geçmeyiniz !"></asp:RequiredFieldValidator><br /><br />
                                           <asp:RegularExpressionValidator CssClass="alert alert-block alert-danger fade in"  ControlToValidate="txtMail" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Mail Adresiniz Hatalı !" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                          </div>
                                  </div>
                              </div>
                          <div class="panel-body">
                               <div class="form-group">
                                      <label class="col-sm-2 control-label">Facebook:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="TxtFacebook" CssClass="form-control" runat="server"></asp:TextBox>
                                      </div>
                                    
                                  </div>
                              </div>
                          <div class="panel-body">
                               <div class="form-group">
                                      <label class="col-sm-2 control-label">Twitter:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="TxtTwitter" CssClass="form-control" runat="server"></asp:TextBox>
                                      </div>
                                      
                                  </div>
                              </div>
                          <div class="panel-body">
                               <div class="form-group">
                                      <label class="col-sm-2 control-label">Instagram:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="TxtInstagram" CssClass="form-control" runat="server"></asp:TextBox>
                                      </div>
                                      
                                  </div>
                              </div>
                          <div class="panel-body">
                               <div class="form-group">
                                      <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-5">
                                          <asp:Button ID="Button1" runat="server" Text="Düzenle" CssClass="btn btn-primary" OnClick="Button1_Click" />
                                      </div>
                                      
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

                          </section>
                              </div>
                          </section>
                      </div>
    </div>