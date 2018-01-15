<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AltHizmetTagEkle.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.HizmetAltHizmet.AltHizmetTagEkle" %>
  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Google Arama Kelimeleri Ekle</h3>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              <asp:Label ID="LblBilgi" runat="server" Text="Label"></asp:Label>
                          </header>
                          <asp:UpdatePanel ID="UpdateTagPanel" runat="server">
                                              <ContentTemplate>
                                 <div class="panel-body">
                         <div class="form-group">
                                      <br />
                                      <label class="col-sm-3 control-label"><br />Google İçin Arama Kelimeleri:</label>
                                      <div class="col-sm-2">
                                          <asp:TextBox ID="TxtKelime" ValidationGroup="grpKelime" CssClass="form-control" runat="server"></asp:TextBox>
                                          </div>
                            
                             <div class="col-sm-3">
                                 <asp:Button ID="BtnKelimeEkle" ValidationGroup="grpKelime" CssClass="btn btn-info" runat="server" Text="Kelime Ekle" OnClick="BtnKelimeEkle_Click"  />
                                          </div>
                               <div class="col-sm-4">
                                          
                                          <asp:RequiredFieldValidator CssClass="alert alert-danger fade in" ID="RequiredFieldValidator4" runat="server" ValidationGroup="grpKelime" ErrorMessage="Kelime Bilgisini Belirtmediniz !" ControlToValidate="TxtKelime"></asp:RequiredFieldValidator>
                                  </div>
                             </div>
                                     </div>
                          <div class="panel-body">

                                      <div id="tagsinput_tagsinput" class="tagsinput " style="height: 100%;">
                                         
                                         
                                                  <asp:Repeater ID="RepeaterKelime" runat="server" OnItemCommand="RepeaterKelime_ItemCommand"   >
                                              <ItemTemplate>
                                                  <span class="tag"><span>
                                                      <asp:Literal ID="LtrTagName" runat="server" Text='<%#Eval("Tag") %>'></asp:Literal>&nbsp;&nbsp;</span><asp:LinkButton ID="LinkBtnKaldir" CssClass="tagsinput-remove-link" CommandName="Sil" CommandArgument='<%#Eval("Tag")%>' runat="server"></asp:LinkButton></span>

                                              </ItemTemplate>
                                          </asp:Repeater>
                                            
                                          
                                           
                                      </div>
                                  </div>
                                                       
                                              </ContentTemplate>
                                              <Triggers>
                                                  <asp:AsyncPostBackTrigger ControlID="BtnKelimeEkle" EventName="Click" />
                                              </Triggers>
                                          </asp:UpdatePanel>
                          </section>
                      </div>
                  </div>
