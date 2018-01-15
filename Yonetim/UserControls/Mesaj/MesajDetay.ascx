<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MesajDetay.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Mesaj.MesajDetay" %>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Mesaj Detayı</h3>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Mesaj Detayı
                          </header>
                          <div class="panel-body">
                              <div class="form-group">
                                      <label class="col-sm-2 control-label">Ad:</label>
                                      <div class="col-sm-5">
                                          <asp:Label ID="LabelAd" runat="server"></asp:Label>
                                          </div>
                                  </div>
                              </div>
                          <div class="panel-body">
                              <div class="form-group">
                                      <label class="col-sm-2 control-label">Soyad:</label>
                                      <div class="col-sm-5">
                                          <asp:Label ID="LabelSoyad" runat="server" ></asp:Label>
                                          </div>
                                  </div>
                              </div>
                          <div class="panel-body">
                              <div class="form-group">
                                      <label class="col-sm-2 control-label">Mail Adresi:</label>
                                      <div class="col-sm-5">
                                          <asp:Label ID="LabelMailAdres" runat="server" ></asp:Label>
                                          </div>
                                  </div>
                              </div>
                          <div class="panel-body">
                              <div class="form-group">
                                      <label class="col-sm-2 control-label">Mesaj:</label>
                                      <div class="col-sm-10">
                                          <asp:Literal ID="LiteralMesaj" runat="server"></asp:Literal>
                                          </div>
                                  </div>
                              </div>
                          <div class="panel-body">
                              <div class="form-group">
                                      <label class="col-sm-2 control-label">Mesaj Tarihi:</label>
                                      <div class="col-sm-5">
                                          <asp:Label ID="LabelMesajTarihi" runat="server"></asp:Label>
                                          </div>
                                  </div>
                              </div>
                          <div class="panel-body">
                              <div class="form-group">
                                      <label class="col-sm-2 control-label">Ip Adresi:</label>
                                      <div class="col-sm-5">
                                          <asp:Label ID="LabelIpAdres" runat="server" ></asp:Label>
                                          </div>
                                  </div>
                              </div>
                          </section>
                      </div>
                  </div>
