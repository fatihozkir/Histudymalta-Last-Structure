<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RandevulariListele.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Randevu.RandevulariListele" %>
<div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Randevuları Listele
                          </header>
                          <div class="panel-body">
                          
                              <asp:DataList ID="DataListRandevular" Width="100%"  cssclass="table" runat="server" DataSourceID="SqlDataSourceRandevuListele" OnItemCommand="DataListRandevular_ItemCommand">
                                  <HeaderTemplate>
                                      <thead>
                              <tr>
                               
                               
                                <th>Randevu Başlığı:</th>
                                <th>Randevu Tarihi:</th>
                                <th>Başlangıç Zamanı:</th>
                                <th>Bitiş Zamanı:</th>
                                <th>İşlem:</th>
                              </tr>
                            </thead>
                                  </HeaderTemplate>
                                  <ItemTemplate>
                                      <tr class="success">
                                        <td><%#Eval("RandevuBaslik") %></td>
                                        <td><%#Eval("Gun")+":"+Eval("Ay")+":"+Eval("Yil") %></td>
                                        <td><%#Eval("Baslangic") %></td>
                                        <td><%#Eval("Bitis") %></td>
                                       
                                        <td>
                                             <div class="btn-group">
                                                 <asp:LinkButton CssClass="btn btn-success" ID="LinkButton1" CommandArgument='<%#Eval("RandevuId") %>' 
                                                     CommandName="Onay" runat="server"><span class="fa fa-check"></span>Randevuya Git</asp:LinkButton>
                                                  <asp:LinkButton CssClass="btn btn-danger" CommandArgument='<%#Eval("RandevuId") %>' CommandName="Sil" ID="LinkButton2" runat="server"><span class="fa fa-times"></span>RandevuSil</asp:LinkButton>
                                            </div>
                                        </td>
                                      </tr>
                                  </ItemTemplate>
                    </asp:DataList>
                            
                   
                             
                              <asp:SqlDataSource ID="SqlDataSourceRandevuListele" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="Select  rndv.RandevuId,ah.Baslik as RandevuBaslik,rndv.BaslangicSaati as Baslangic,rndv.BitisSaati as Bitis,Day(rndv.RandevuTarihi) as Gun,MONTH(rndv.RandevuTarihi) as Ay,Year(rndv.RandevuTarihi) as Yil from Randevu rndv inner join AltHizmetler ah on ah.AltHizmetId=rndv.AltHizmetId

"></asp:SqlDataSource>
                             
                          </div>
                          </section>
                      </div>
    </div>