   M S B A M L   `   `   `  ����N  JWpfFimDegerlendirme, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WpfFimDegerlendirmeWpfFimDegerlendirme  5   	   0    *WpfFimDegerlendirme.Window_SenaristDuzenle   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:WpfFimDegerlendirme     5   	   -   5          � Title$  Senarist Duzenle��5   	   $	��300��6"   $	��300��6/    � 
ResizeMode$ NoResize=�6R    � WindowStartupLocation$ CenterScreen=�6h   .��5	      � .+�5
   
   �� -   5         ��Name$ label_Copy1��5
      $��Adı Soyadı��6%   $
��Left=�6:   $��	55,14,0,0q�6U   $	��Top=�6h   �� 5   
   -   5         ��Name$ txtSenarist_AdSoyad��5      $
��Left=�6/   $��23��6J   $��	55,40,0,0q�6V    �� TextWrapping$
 Wrap=�6i   $	��Top=�6}   $	��174��6�   �� 5   
   -   5        $ label_Copy2��5      $��Doğum Tarihi��6%   $
��Left=�6<   $��	55,68,0,0q�6W   $	��Top=�6j   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dtSenarist_DogumTarihi��5      $
��Left=�65   $��
144,70,0,0q�6P   $	��Top=�6d   $��85��6|   �� 5   
   -   5        $ label_Copy3��5      $��Doğum Yeri��6%   $
��Left=�6:   $��	55,99,0,0q�6U   $	��Top=�6h   �� 5   
   -   5        $ txtSenarist_DogumYeri��5      $
��Left=�61   $��23��6L   $��144,102,0,0q�6X   $
 Wrap=�6m   $	��Top=�6�   $��85��6�   �� 5   
   -   5        $ label_Copy4��5      $��	Hakkında��6%   $
��Left=�68   $��
55,164,0,0q�6S   $	��Top=�6g   �� 5   
   -	   5        $ txtSenarist_Hakkinda��5      $
��Left=�60   $��23��6K   $��
55,190,0,0q�6W   $
 Wrap=�6k   $	��Top=�6   $	��174��6�   �� 5   
   -
   5        $ label_Copy13��5      $��Doğum Tarihi��6&   $
��Left=�6=   $��
55,128,0,0q�6X   $	��Top=�6l     5   
   -   5        $ dtSenarist_OlumTarihi��5      $
��Left=�64   $��144,130,0,0q�6O   $	��Top=�6d   $��85��6|   �� 5   
   -   5         ��Name$ btnGuncelle��5      $��Guncelle��6&   $
��Left=�69   $��32��6T   $��150,218,0,0q�6`   $	��Top=�6u   $	��114��6�   6�   5      5      