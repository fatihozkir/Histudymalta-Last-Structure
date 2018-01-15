<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OgretmenDers.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Ogretmen.OgretmenDers" %>
<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i> Öğretmenin Derslerini Düzenle</h3>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              <asp:Label ID="LabelOgretmen" runat="server"></asp:Label> Öğretmenin Verdiği Dersler:
                          </header>
                           <div class="panel-body">
                                         

                                      <div class="col-lg-6">
                                          <asp:CheckBoxList ID="CheckBoxListDersler" SkinID="inputSuccess" runat="server" DataSourceID="SqlDataSourceDersler" DataTextField="Baslik" DataValueField="AltHizmetId" RepeatDirection="Horizontal"></asp:CheckBoxList>
                                          
                                          <asp:SqlDataSource ID="SqlDataSourceDersler" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT [AltHizmetId], [Baslik] FROM [AltHizmetler]"></asp:SqlDataSource>
                                          
                                      </div>
                                               <div class="col-lg-4">
                                                   <asp:Button ID="btnTagEkle" class="btn btn-success" runat="server" Text="Ekle" OnClick="btnTagEkle_Click" />
                                      </div>
                                  </div>
                      <div class="panel-body">

                                      <div id="tagsinput_tagsinput" class="tagsinput " style="height: 100%;">
                                         
                                          <asp:UpdatePanel ID="UpdateTagPanel" runat="server">
                                              <ContentTemplate>
                                                  <asp:Repeater ID="RepeaterOgretmenDers" runat="server" OnItemCommand="RepeaterOgretmenDers_ItemCommand" >
                                              <ItemTemplate>
                                                  <span class="tag"><span>
                                                      <asp:Literal ID="LtrTagName" Text='<%#Eval("Baslik") %>' runat="server"></asp:Literal>&nbsp;&nbsp;</span><asp:LinkButton ID="LinkBtnKaldir" CssClass="tagsinput-remove-link" CommandName="Sil" CommandArgument='<%#Eval("OgretmenAltHizmetId") %>' runat="server"></asp:LinkButton></span>

                                              </ItemTemplate>
                                          </asp:Repeater>
                                                 
                                              </ContentTemplate>
                                          </asp:UpdatePanel>
                                          
                                           
                                      </div>
                                  </div>
                          </section>
                     
                          </div>
                  </div>

