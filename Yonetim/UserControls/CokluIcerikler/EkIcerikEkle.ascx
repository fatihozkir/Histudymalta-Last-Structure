<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EkIcerikEkle.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.CokluIcerikler.EkIcerikEkle" %>

            <div class="row">
                <div class="col-lg-12">
					<h5 class="page-header"><i class="fa fa-table"></i> <asp:Label ID="lblBaslik" runat="server"></asp:Label></h5>
				</div>
                  <div class="col-sm-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Resim Ekle
                          </header>
                            <div class="form-group">
                                <br />
                                 <label class="col-sm-2 control-label">Dosya:</label>
                                <div class="col-sm-10">
                                          <asp:FileUpload CssClass="form-control" AllowMultiple="true" ID="fileUploadResim"  runat="server" />
                                    </div>
                                          <br />
                                 <label class="col-sm-2 control-label">&nbsp;</label>    
                                <div class="col-sm-10">  
                                    <br />   
                                          <asp:Button CssClass="btn btn-success"  ID="btnResimEkle" runat="server" Text="Resmi Ekle" OnClick="btnResimEkle_Click" />
                                    </div>
                                          <br />
                                          <br />
                                          <asp:Literal ID="ltrBilgi" runat="server"></asp:Literal>
                                      </div>
                                      <div class="form-group">
                                          <br /><br />
                                          <asp:DataList ID="DataListResimler" runat="server" RepeatDirection="Horizontal" OnItemCommand="DataListResimler_ItemCommand" >
                                              <ItemTemplate>
                                                  <div class="col-sm-3">
                                                      <asp:Image ID="IcerikResim" Width="100" Height="100" ImageUrl='<%#"/Upload/Images/Small/"+Eval("ResimUrl") %>' runat="server" />
                                                      <br />
                                                      <asp:LinkButton ID="LinkBtnKaldir" CssClass="btn btn-danger" CommandName="Sil" CommandArgument='<%#Eval("ResimId")+"!"+Eval("ResimUrl") %>' runat="server"><i class="fa fa-times"></i></asp:LinkButton>
                                                  </div>
                                                  
                                              </ItemTemplate>
                                          </asp:DataList>
                                          </div>

                      </section>
                  </div>
                  <div class="col-sm-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Dosya Ekle
                          </header>
                          <div class="form-group">
                                           <br />
                                      <label class="col-sm-2 control-label">Dosya Adı:</label>
                                      <div class="col-sm-10">
                                          <asp:TextBox ID="txtDosyaBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                                      </div>
                                          <br />
                                          <br />
                                          <label class="col-sm-2 control-label">Dosya:</label>
                                      <div class="col-sm-10">
                                          <asp:FileUpload CssClass="form-control" AllowMultiple="true" ID="fileUploadDosya"  runat="server" />
                                      </div>
                                          <br />
                                          <br />
                                  <label class="col-sm-2 control-label">&nbsp;</label>
                                      <div class="col-sm-10">
                                           <asp:Button CssClass="btn btn-success"  ID="btnDosyaEkle" runat="server" Text="Dosya Ekle" OnClick="btnDosyaEkle_Click"  />
                                          
                                      </div>
                                          
                                          
                                          <br />
                                          <br />
                                          <asp:Literal ID="ltrDosyBilgi" runat="server"></asp:Literal>
                                          
                                          
                         
                    
                                      </div>
                          <asp:GridView ID="gridDosyalar" GridLines="None" Cssclass="table table-striped table-advance table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="DosyaId" OnRowCommand="gridDosyalar_RowCommand">
                                                  <Columns>
                                                      <asp:BoundField DataField="DosyaUrl" HeaderText="DosyaUrl" SortExpression="DosyaUrl" />
                                                      <asp:TemplateField HeaderText="İşlem">
                                                          <ItemTemplate>
                                                              <asp:LinkButton CssClass="btn btn-danger" CommandArgument='<%#Eval("DosyaId")+"!"+Eval("DosyaUrl") %>' CommandName="Sil" ID="LinkBtnSil" runat="server"><i class="fa fa-times"></i></asp:LinkButton>
                                                          </ItemTemplate>
                                                      </asp:TemplateField>
                                                  </Columns>
                                              </asp:GridView>
                      </section>
                  </div>
              </div>