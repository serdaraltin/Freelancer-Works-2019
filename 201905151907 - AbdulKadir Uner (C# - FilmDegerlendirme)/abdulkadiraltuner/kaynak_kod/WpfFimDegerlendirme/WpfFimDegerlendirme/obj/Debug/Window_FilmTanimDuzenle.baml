   M S B A M L   `   `   `  ����N  JWpfFimDegerlendirme, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WpfFimDegerlendirmeWpfFimDegerlendirme  5   	   1    +WpfFimDegerlendirme.Window_FilmTanimDuzenle   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:WpfFimDegerlendirme     5   	   -   5          � Title$  Film Tanım Düzenle��5   	   $	��300��6$   $	��300��61    � 
ResizeMode$ NoResize=�6=    � WindowStartupLocation$ CenterScreen=�6S   .��5	      � .+�5
   
   �� -   5         ��Name$ btnFilmTanim_Ekle��5
      $��	Güncelle��6,   $
��Left=�6?   $��34��6Z   $��115,209,0,0q�6f   $	��Top=�6{   $	��120��6�   6�   �� 5   
   -   5         ��Name$ label2��5      $��Ad��6    $
��Left=�6-   $��	55,21,0,0q�6H   $	��Top=�6[   $��23��6s   �� 5   
   -   5         ��Name$ txtFilmTanim_Ad��5      $��Right=�6+   $��23��6G   $��	0,21,56,0q�6S    �� TextWrapping$
 Wrap=�6f   $	��Top=�6z   $	��138��6�   �� 5   
   -   5        $ label2_Copy��5      $��Süre��6%   $
��Left=�64   $��	55,49,0,0q�6O   $	��Top=�6b   $��23��6z   $��38��6�   �� 5   
   -   5        $ txtFilmTanim_Sure��5      $��Right=�6-   $��23��6I   $��	0,49,56,0q�6U   $
 Wrap=�6h   $	��Top=�6|   $	��138��6�   �� 5   
   -   5        $ label2_Copy1��5      $��Kategori��6&   $
��Left=�69   $��	55,77,0,0q�6T   $	��Top=�6g   $��28��6   $��61��6�   �� 5   
   -   5         ��Name$ cbFilmTanim_Kategori��5      $
��Left=�61   $��
115,78,0,0q�6L   $	��Top=�6`   $	��120��6x   �� 5   
   -	   5        $ label2_Copy2��5      $��Senarist��6&   $
��Left=�69   $��
55,105,0,0q�6T   $	��Top=�6h   $��28��6�   $��61��6�   �� 5   
   -
   5        $ cbFilmTanim_Senarist��5      $
��Left=�61   $��115,106,0,0q�6L   $	��Top=�6a   $	��120��6y   �� 5   
   -   5        $ label2_Copy3��5      $��	Yönetmen��6&   $
��Left=�69   $��
52,133,0,0q�6T   $	��Top=�6h   $��28��6�   $��71��6�   �� 5   
   -   5        $ cbFilmTanim_Yonetmen��5      $
��Left=�61   $��115,134,0,0q�6L   $	��Top=�6a   $	��120��6y   �� 5   
   -   5        $ label2_Copy4��5      $��Vizyon Tarihi��6&   $
��Left=�6>   $��
56,161,0,0q�6Y   $	��Top=�6m   $��23��6�   $��80��6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dtFilmTanim_VizyonTarih��5      $
��Left=�66   $��133,161,0,0q�6Q   $	��Top=�6f   5      5      