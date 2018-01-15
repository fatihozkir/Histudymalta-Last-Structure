<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SabitIcerikDuzenle.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.SabitIcerikler.SabitIcerikDuzenle" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Sabit Icerik Düzenle</h3>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Sabit İçerikler
                          </header>
                          <div class="panel-body">
                              
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">Başlık:</label>
                                      <div class="col-sm-5">
                                          <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                                      </div>
                                      <div class="col-sm-5">
                                          <asp:RequiredFieldValidator cssclass="alert alert-block alert-danger fade in" ControlToValidate="txtBaslik" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Başlığı Boş Geçmeyiniz !"></asp:RequiredFieldValidator>
                                          </div>
                                  </div>
                              <br /><br />
                                  <div class="form-group">
                                      <label class="col-sm-2 control-label">İçerik:</label>
                                      <div class="col-sm-10">
                                          <CKEditor:CKEditorControl ID="editorIcerik" runat="server"></CKEditor:CKEditorControl>
                                          <br /><br />
                                          <asp:RequiredFieldValidator cssclass="alert alert-block alert-danger fade in" ControlToValidate="editorIcerik" ID="RequiredFieldValidator1" runat="server" ErrorMessage="İçerik Detayını Boş Geçmeyiniz !"></asp:RequiredFieldValidator>
                                          <br />
                                                     </div>
                                  </div>
                              
                                <div class="form-group">
                                     <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-10">
                                          <br />
                                          <asp:Button ID="btnDuzenle" CssClass="btn btn-success" runat="server" Text="Düzenle" OnClick="btnDuzenle_Click" />
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
