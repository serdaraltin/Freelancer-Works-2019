   M S B A M L   `   `   `  ����N  JWpfFimDegerlendirme, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WpfFimDegerlendirmeWpfFimDegerlendirme  5   	   7    1WpfFimDegerlendirme.Window_KullaniciHesapAyarlari   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:WpfFimDegerlendirme     5   	   -   5          � Title$  Hesap Ayarları��5   	   $	��356��6    $	��338��6-    � 
ResizeMode$ NoResize=�69    � WindowStartupLocation$ CenterScreen=�6O   .��5	      � .+�5
   
   �� -   5         ��Name$ label��5
      $
��Left=�6   $��25��6:   $��	28,35,0,0q�6F   $	��Top=�6Y   $��82��6q   $��Ad Soyad��6|   �� 5   
   -   5         ��Name$ 
txtAdSoyad��5      $
��Left=�6&   $��23��6A   $��
115,37,0,0q�6M    �� TextWrapping$
 Wrap=�6a   $	��Top=�6u   $	��170��6�   �� 5   
   -   5        $ label_Copy1��5      $
��Left=�6%   $��25��6@   $��	28,68,0,0q�6L   $	��Top=�6_   $��82��6w   $��Eposta Adresi��6�   �� 5   
   -   5        $ txtEpostaAdresi��5      $
��Left=�6+   $��23��6F   $��
115,70,0,0q�6R   $
 Wrap=�6f   $	��Top=�6z   $	��170��6�   �� 5   
   -   5        $ label_Copy2��5      $
��Left=�6%   $��25��6@   $��	28,96,0,0q�6L   $	��Top=�6_   $��82��6w   $��Doğum Tarihi��6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dtDogumTarihi��5      $
��Left=�6,   $��
115,98,0,0q�6G   $	��Top=�6[   $	��170��6s   �� 5   
   -   5        $ label_Copy3��5      $
��Left=�6%   $��25��6@   $��
28,125,0,0q�6L   $	��Top=�6`   $��82��6x   $��Şifre��6�   �� 5   
   -	   5        $ txtSifre��5      $
��Left=�6$   $��23��6?   $��115,127,0,0q�6K   $
 Wrap=�6`   $	��Top=�6t   $	��170��6�   �� 5   
   -
   5        $ label_Copy4��5      $
��Left=�6%   $��25��6@   $��
28,153,0,0q�6L   $	��Top=�6`   $��82��6x   $��Şifre Tekrar��6�   �� 5   
   -   5        $ txtSifreTekrar��5      $
��Left=�6*   $��23��6E   $��115,155,0,0q�6Q   $
 Wrap=�6f   $	��Top=�6z   $	��170��6�   �� 5   
   -   5        $ label_Copy5��5      $
��Left=�6%   $��25��6@   $��
28,181,0,0q�6L   $	��Top=�6`   $��82��6x   $��Cinsiyet��6�   �� 5   
   -   5         ��Name$ 
cbCinsiyet��5      $
��Left=�6'   $��115,183,0,0q�6B   $	��Top=�6W   $	��170��6o    �� SelectedIndex$ 0��6{   .@�5      �� $��Kadın��6   �� 5      $��Erkek��6   �� 5      $��Diğer��6   5      �� 5   
   -   5        	 ��Name$	 
btnKayitOl��5      $��	Güncelle��6%   $
��Left=�68   $��31��6S   $��115,219,0,0q�6_   $	��Top=�6t   $	��170��6�   6�   5      5      