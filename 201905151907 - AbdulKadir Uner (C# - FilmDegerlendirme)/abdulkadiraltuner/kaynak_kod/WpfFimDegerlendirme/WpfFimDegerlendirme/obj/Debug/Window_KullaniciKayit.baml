   M S B A M L   `   `   `  ����N  JWpfFimDegerlendirme, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WpfFimDegerlendirmeWpfFimDegerlendirme  5   	   /    )WpfFimDegerlendirme.Window_KullaniciKayit   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:WpfFimDegerlendirme     5   	   -   5          � Title$  Kullanıcı Kayıt��5   	   $	��398��6!   $	��350��6.    � 
ResizeMode$ NoResize=�6:    � WindowStartupLocation$ CenterScreen=�6P   .��5	      � .+�5
   
   �� -   5         ��Name$ label��5
      $
��Left=�6   $��25��6:   $��	39,47,0,0q�6F   $	��Top=�6Y   $��82��6q   $��Ad Soyad��6|   �� 5   
   -   5         ��Name$ 
txtAdSoyad��5      $
��Left=�6&   $��23��6A   $��
126,49,0,0q�6M    �� TextWrapping$
 Wrap=�6a   $	��Top=�6u   $	��170��6�   �� 5   
   -   5        $ 
label_Copy��5      $
��Left=�6$   $��25��6?   $��	39,75,0,0q�6K   $	��Top=�6^   $��82��6v   $��Kullanıcı Adı��6�   �� 5   
   -   5        $ txtKullaniciAdi��5      $
��Left=�6+   $��23��6F   $��
126,77,0,0q�6R   $
 Wrap=�6f   $	��Top=�6z   $	��170��6�   �� 5   
   -   5        $ label_Copy1��5      $
��Left=�6%   $��25��6@   $��
39,103,0,0q�6L   $	��Top=�6`   $��82��6x   $��Eposta Adresi��6�   �� 5   
   -   5        $ txtEpostaAdresi��5      $
��Left=�6+   $��23��6F   $��126,105,0,0q�6R   $
 Wrap=�6g   $	��Top=�6{   $	��170��6�   �� 5   
   -   5        $ label_Copy2��5      $
��Left=�6%   $��25��6@   $��
39,131,0,0q�6L   $	��Top=�6`   $��82��6x   $��Doğum Tarihi��6�   (  "System.Windows.Controls.DatePicker  5   
   -	   5          Name$ dtDogumTarihi��5      $
��Left=�6,   $��126,133,0,0q�6G   $	��Top=�6\   $	��170��6t   �� 5   
   -
   5        $ label_Copy3��5      $
��Left=�6%   $��25��6@   $��
39,160,0,0q�6L   $	��Top=�6`   $��82��6x   $��Şifre��6�   �� 5   
   -   5        $ txtSifre��5      $
��Left=�6$   $��23��6?   $��126,162,0,0q�6K   $
 Wrap=�6`   $	��Top=�6t   $	��170��6�   �� 5   
   -   5        $ label_Copy4��5      $
��Left=�6%   $��25��6@   $��
39,188,0,0q�6L   $	��Top=�6`   $��82��6x   $��Şifre Tekrar��6�   �� 5   
   -   5        $ txtSifreTekrar��5      $
��Left=�6*   $��23��6E   $��126,190,0,0q�6Q   $
 Wrap=�6f   $	��Top=�6z   $	��170��6�   �� 5   
   -   5        $ label_Copy5��5      $
��Left=�6%   $��25��6@   $��
39,216,0,0q�6L   $	��Top=�6`   $��82��6x   $��Cinsiyet��6�   �� 5   
   -   5         ��Name$ 
cbCinsiyet��5      $
��Left=�6'   $��126,218,0,0q�6B   $	��Top=�6W   $	��170��6o    �� SelectedIndex$ 0��6{   .@�5      �� $��Kadın��6   �� 5      $��Erkek��6   �� 5      $��Diğer��6   5      �� 5   
   -   5        	 ��Name$	 
btnKayitOl��5      $��	Kayıt Ol��6%   $
��Left=�68   $��31��6S   $��126,257,0,0q�6_   $	��Top=�6t   $	��170��6�   6�   5      5      