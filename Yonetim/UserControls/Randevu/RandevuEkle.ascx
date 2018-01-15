<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RandevuEkle.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Randevu.RandevuEkle" %>

    <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Çoklu Icerik Ekle</h3>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                            Randevu Oluştur
                          </header><asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                          <div class="panel-body">
                              
                             <div class="form-group">
                                      <label class="col-sm-2 control-label">Verilecek Hizmet:</label>
                                      <div class="col-sm-5">
                                          <asp:DropDownList CssClass="form-control" ID="DropDownListHizmet" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Baslik" DataValueField="HizmetId"></asp:DropDownList>
                                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT [HizmetId], [Baslik] FROM [Hizmetler]"></asp:SqlDataSource>
                                      </div>
                                     
                                  </div>
                           </div>

                            <div class="panel-body">
                     <div class="form-group">
                                      <label class="col-sm-2 control-label">Alt Hizmet:</label>
                                      <div class="col-sm-5">
                                          <asp:DropDownList CssClass="form-control"  ID="DropDownList1AltHizmet" runat="server" DataSourceID="SqlDataSource2" DataTextField="Baslik" DataValueField="AltHizmetId"></asp:DropDownList>
                                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT [AltHizmetId], [Baslik] FROM [AltHizmetler] WHERE ([HizmetId] = @HizmetId)">
                                              <SelectParameters>
                                                  <asp:ControlParameter ControlID="DropDownListHizmet" Name="HizmetId" PropertyName="SelectedValue" Type="Int32" />
                                              </SelectParameters>
                                          </asp:SqlDataSource>
                                      </div>
                                     
                                  </div>
                                </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="DropDownListHizmet" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>
                  
                          <div class="panel-body">
                    <div class="form-group">
                                      <label class="col-sm-2 control-label">Randevu Tarihi:</label>
                                      <div class="col-sm-5">
                                           <asp:Calendar   ID="calendar"   runat="server"></asp:Calendar>
                                      </div>
                                     
                                  </div>
                              </div>
                          <div class="panel-body">
                    <div class="form-group">
                                      <label class="col-sm-2 control-label">Başlangıç Saati:</label>
                                      <div class="col-sm-5">
                                          <asp:DropDownList ID="DrpBaslangic" CssClass="form-control" runat="server"></asp:DropDownList>
                                          
                                      </div>
                         <div class="col-sm-5">
                                           <asp:DropDownList ID="DrpBaslangicDakika" CssClass="form-control" runat="server"></asp:DropDownList>
                                      </div>
                                     
                                  </div>
                              </div>
                          <div class="panel-body">
                    <div class="form-group">
                                      <label class="col-sm-2 control-label">Bitiş Saati:</label>
                                      <div class="col-sm-5">
                                           <asp:DropDownList ID="DrpBitis" CssClass="form-control" runat="server"></asp:DropDownList>
                                      </div>
                        <div class="col-sm-5">
                                           <asp:DropDownList ID="DrpBitisDakika" CssClass="form-control" runat="server"></asp:DropDownList>
                                      </div>
                                     
                                  </div>
                              </div>
                          <div class="panel-body">

                     <div class="form-group">
                                      <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-5">
                                          <asp:Button ID="BtnEkle" CssClass="btn btn-success" runat="server" Text="Randevu Oluştur" OnClick="BtnEkle_Click" />
                                      </div>
                                     
                                  </div>
                              </div>
                           <div class="panel-body">

                     <div class="form-group">
                                      <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-5">
                                          <asp:Literal ID="LtrBilgi" runat="server"></asp:Literal>
                                      </div>
                                     
                                  </div>
                              </div>
                          
                          </section>
                      </div>
                      </div>
                             
        
                    
    