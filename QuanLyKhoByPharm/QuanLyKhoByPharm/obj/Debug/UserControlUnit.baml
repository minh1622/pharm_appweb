   M S B A M L   `   `   `  ����K  GQuanLyKhoByPharm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanLyKhoByPharmQuanLyKhoByPharm  5      &     QuanLyKhoByPharm.UserControlUnit   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:QuanLyKhoByPharm     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	       
  UnitVM  � DataContext#  [  5        MaterialDesignBody#���  5
      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   6*   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   $��15q�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  
������   Kind$ TapeMeasure=�5      $��25��5       $��25��5!      $��Center=�5"      $��20 0 0 0q�5#      �� 5$      $��Đơn vị đo��6   $��Center=�5%      
������$��20(�5'      5(      5)      � 5+   
   $��1��6   $��15q�6   .+�5,      #  MaterialDesignThemes.Wpf.Card  .��5-      � .+�5.      �� $��
5 15 30 15q�6m   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đơn vị đo��6�   ��6   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�6�   5/      50      51      � 54   
   $��2��6   $��15q�6   .+�55        $��Right=�6"   .��56      � .+�57      �� $��Thêm��6<   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6d   �� 58      $��Sửa��6=   $��5q�6K   $	��100��6V   ��6   �� *EditCommand+6d   �� 59      $
��Xóa��6?   $��5q�6M   
���  ��$	��100��6i   ��6   �� *DeleteCommand+6w   5:      5;      5<      � 5?   
   $��3��6   $��15q�6   .+�5@        $��Stretch=�6"   .��5A      �� $
��Auto=�6   .��5B      �� ��6   �� *List+$ TwoWay=�$ PropertyChanged=�	 �� SelectedItem	 6n   �� *SelectedItem+$ TwoWay=�
 �� View
 5C      �� 5D      .P�5E   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *Id+6c   �� 5F   "   $��Tên đơn vị đo��61    6H   �� *Displayname+6w   5G      5I      5J      5K      5L      5M      5N      