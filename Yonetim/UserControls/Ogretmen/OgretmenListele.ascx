<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OgretmenListele.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Ogretmen.OgretmenListele" %>
<asp:DataList ID="DataListOgretmen" runat="server" DataSourceID="SqlDataSourceOgretmen" Width="100%" OnItemCommand="DataListOgretmen_ItemCommand">
    <ItemTemplate>
<div class="row">
                <!-- profile-widget -->
                <div class="col-lg-12">
                    <div class="profile-widget profile-widget-info">
                          <div class="panel-body">
                            <div class="col-lg-2 col-sm-2">
                              <h4><asp:Label ID="LabelAd" runat="server" Text='<%#Eval("Adi") %>'></asp:Label> &nbsp;<asp:Label ID="LabelSoyad" runat="server" Text='<%#Eval("Soyadi") %>'></asp:Label></h4>               
                              <div class="follow-ava">
                                  <img src='<%#"/Upload/Images/Small/"+Eval("ResimUrl") %>' alt='<%#Eval("Adi") %>'>
                              </div>
                            </div>
                            <div class="col-lg-4 col-sm-4 follow-info">
                                <p><i class="fa fa-skype">&nbsp;</i><asp:Label ID="LabelSkype" runat="server" Text='<%#Eval("SkypeUrl") %>'></asp:Label></p>
								<p><i class="fa fa-envelope">&nbsp;</i><asp:Label ID="LabelMail" runat="server" Text='<%#Eval("Mail") %>'></asp:Label></p>
                                <h6>
                                    <span><i class="fa fa-phone">&nbsp;</i><asp:Label ID="LabelTelefon" runat="server" Text='<%#Eval("Telefon") %>'></asp:Label></span>
                                   
                                </h6>
                            </div>
                            <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                      <ul>
                                          <li class="active">
                                              
                                              <i class="fa fa-edit fa-2x"> </i><br>
											  
                                              <asp:LinkButton CssClass="btn btn-success" ID="LinkButton1" CommandArgument='<%#Eval("OgretmenId") %>' CommandName="Duzenle" runat="server"><span class="fa fa-edit"></span> Düzenle</asp:LinkButton>
                                          </li>
										   
                                      </ul>
                            </div>
							<div class="col-lg-2 col-sm-6 follow-info weather-category">
                                      <ul>
                                          <li class="active">
                                              
                                              <i class="fa fa-times fa-2x"> </i><br>
											  
											  <asp:LinkButton CssClass="btn btn-danger" ID="LinkButton2" CommandName="Sil" CommandArgument='<%#Eval("OgretmenId") %>' runat="server"><span class="fa fa-times"></span> Sil</asp:LinkButton>
                                          </li>
										   
                                      </ul>
                            </div>
                              <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                      <ul>
                                          <li class="active">
                                              
                                              <i class="fa fa-book fa-2x"> </i><br>
											  
											  <asp:LinkButton CssClass="btn btn-warning" ID="LinkButton3" CommandName="DersIslem" CommandArgument='<%#Eval("OgretmenId") %>' runat="server"><span class="fa fa-book"></span>Derslerimi Düzenle</asp:LinkButton>
                                          </li>
										   
                                      </ul>
                            </div>
							
                          </div>
                    </div>
                </div>
              </div>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSourceOgretmen" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT * FROM [Ogretmen]"></asp:SqlDataSource>

