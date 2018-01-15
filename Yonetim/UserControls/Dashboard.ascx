<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.ascx.cs" Inherits="SiteProje.Yonetim.UserControls.Dashboard" %>
<div class="row">
             <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="info-box green-bg">
						<i class="fa fa-check"></i>
						<div class="count">İçerik Eklerken Talimatlar Dogrultusunda Hareket Ediniz !</div>
											
					</div><!--/.info-box-->			
				</div>

                  <div class="col-lg-12">
                     
                      <!--Project Activity start-->
                      <section class="panel">
                          
                          <div class="panel-group m-bot20" id="accordion">
                          <div class="panel panel-default">
                              <div class="panel-heading">
                                  <h4 class="panel-title">
                                      <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                          Çoklu içerik ve sabit içerik Ekleme islemi icin
                                      </a>
                                  </h4>
                              </div>
                              <div id="collapseOne" class="panel-collapse collapse" style="height: 0px;">
                                  <div class="panel-body">
                                      Lütfen harici kaynaklardan yazılar ekleyeceğiniz zaman ekleyeceğiniz yazıyı ilk önce not defterine yapıştırınız ve not defterinden kopyalayarak editör içine Ctrl+V işlemi yaparak yapıştırınız.Bu işlem ekleyeceğiniz yazının web materyallerinden temizlenerek sayfanızın daha düzgün ve sorunsuz çalışmasını sağlamak içindir. Eğer yazılarınızda hala problem olduğunu düşünüyorsanız yazı editörü içindeki <span style="text-decoration:underline;">" Source "</span> kısmını açınız ve içeriği kopyalayıp tekrardan not defterine atınız ve Ctrl+H ile div olan içerikleri p ile değiştiriniz yazınız daha düzgün gözükecektir.
                                  </div>
                              </div>
                          </div>
                          <div class="panel panel-default">
                              <div class="panel-heading">
                                  <h4 class="panel-title">
                                      <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                          Resim ekleme islemi icin
                                      </a>
                                  </h4>
                              </div>
                              <div id="collapseTwo" class="panel-collapse collapse" style="height: 0px;">
                                  <div class="panel-body">
                                      Lütfen Resimlerinizi 3MB'dan küçük olacak şekilde ve .jpg formatında yüklemeye özen gösteriniz. ".png" uzantılı resim dosyaları içerik olarak büyük boyutlu olduğu ve ağır görsel alt yapı bileşenleri içerdiği için sisteme geç yüklenebilir veya hata alabilirsiniz.
                                  </div>
                              </div>
                          </div>
                          
                      </div>
                      </section>
                      <!--Project Activity end-->
                  </div>
              </div>