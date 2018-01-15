<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RandevuOgrenciListe.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Randevu.RandevuOgrenciListe" %>
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
                               
                               
                                <th>Öğrenci Bilgi:</th>
                                <th>Ödeme Durumu:</th>
                                <th>Fiyat:</th>
                                <th>İşlem:</th>
                                
                              </tr>
                            </thead>
                                  </HeaderTemplate>
                                  <ItemTemplate>
                                      <tr class='<%#Eval("Odeme").ToString()=="True"?"success":"danger" %>'>
                                        <td><%#Eval("UyeBilgi") %></td>
                                        <td><%#Eval("Odeme").ToString()=="True"?"Ödeme Yapıldı":"Ödeme Bekleniyor" %></td>
                                        <td><%#Eval("Fiyat") %></td>
                                       
                                        <td>
                                             <div class="btn-group">
                                                 <asp:LinkButton CssClass="btn btn-success" ID="LinkButton1" CommandArgument='
                                                     <%#Eval("RandevuUyeId")+"-"
                                                         +Eval("UyeId")+"-"
                                                         +Eval("RandevuBaslik")+"-"
                                                         +Eval("UyeBilgi")+"-"
                                                         +Eval("OgretmenBilgi")+"-"
                                                         +Eval("Baslangic")+"-"
                                                         +Eval("Bitis")+"-"
                                                         +Eval("Gun")+"-"
                                                         +Eval("Ay")+"-"
                                                         +Eval("Yil")%>' 
                                                     CommandName="Onay" runat="server"><span class="fa fa-check"></span>Dersi Onayla</asp:LinkButton>
                                                  <asp:LinkButton CssClass="btn btn-danger" CommandArgument='<%#Eval("RandevuUyeId") %>' CommandName="Sil" ID="LinkButton2" runat="server"><span class="fa fa-times"></span>RandevuSil</asp:LinkButton>
                                            </div>
                                        </td>
                                      </tr>
                                  </ItemTemplate>
                    </asp:DataList>
                            
                   
                             

                              <asp:SqlDataSource ID="SqlDataSourceRandevuListele" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="Select rndvuye.RandevuUyeId,u.UyeId,u.Ad+' '+u.Soyad AS UyeBilgi,ah.Baslik as RandevuBaslik, o.Adi+' '+o.Soyadi as OgretmenBilgi,rndv.BaslangicSaati as Baslangic,rndv.BitisSaati as Bitis,Day(rndv.RandevuTarihi) as Gun,MONTH(rndv.RandevuTarihi) as Ay,Year(rndv.RandevuTarihi) as Yil,rndvuye.Odeme,ah.Fiyat from Randevu rndv inner join RandevuUye rndvuye on rndv.RandevuId=rndvuye.RandevuId inner join Uye u on u.UyeId=rndvuye.UyeId  inner join AltHizmetler ah on ah.AltHizmetId=rndv.AltHizmetId inner join OgretmenAltHizmet oa on ah.AltHizmetId=oa.AltHizmetId inner join Ogretmen o on o.OgretmenId=oa.OgretmenId

where rndv.RandevuId=@RandevuId">
                                  <SelectParameters>
                                      <asp:QueryStringParameter Name="RandevuId" QueryStringField="RandevuId" />
                                  </SelectParameters>
                              </asp:SqlDataSource>
                             
                          </div>
                          </section>
                      </div>
    </div>