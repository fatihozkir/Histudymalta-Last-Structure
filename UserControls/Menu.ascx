<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="SiteProje.UserControls.Menu" %>
<ul>
                        <li>
                            <a href="/Home">HomePage
</a>
                        </li>
    <li>
                            <a href="/ConstantContent/AboutUs-3">About Us</a>
                           

                        </li>
                        <li>
                            <a href="/Courses">Courses</a>

                            <ul class="nicdark_sub_menu">
                                <asp:Repeater ID="RepeaterKurslar" runat="server" DataSourceID="SqlDataSourceKurslar">
                                    <ItemTemplate>
                                        <li><a href='/CourseDetail/<%# SiteProjeORM.Tools.KarakterTemizle(Eval("Baslik").ToString())+"-"+Eval("HizmetId") %>'><%#Eval("Baslik") %></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource ID="SqlDataSourceKurslar" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT [HizmetId], [Baslik] FROM [Hizmetler]"></asp:SqlDataSource>
                                </ul>
                        </li>
                        <%--<li>
                            <a href="/Teachers">Eğitmenler</a>

                            <ul class="nicdark_sub_menu">
                                <asp:Repeater ID="RepeaterOgretmenler" runat="server" DataSourceID="SqlDataSourceOgretmenlers">
                                    <ItemTemplate>
                                        <li><a href='/TeacherDetails/<%#SiteProjeORM.Tools.KarakterTemizle(Eval("AdSoyad").ToString()+"-"+Eval("OgretmenId")) %>'><%#Eval("AdSoyad") %></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                               
                                <asp:SqlDataSource ID="SqlDataSourceOgretmenlers" runat="server" ConnectionString="<%$ ConnectionStrings:EducationConnectionString %>" SelectCommand="SELECT Adi + ' ' + Soyadi AS 'AdSoyad', OgretmenId FROM Ogretmen"></asp:SqlDataSource>
                            </ul>

                        </li>--%>
                        <li>
                            <a href="/Blogs">Blog</a>
                        </li>
                        <li>
                            <a href="/Contact">Contact</a>
                        </li>
                        
                    </ul>