   M S B A M L   `   `   `  ����K  GQuanLyKhoByPharm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanLyKhoByPharmQuanLyKhoByPharm  5      (    "QuanLyKhoByPharm.UserControlObject   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:QuanLyKhoByPharm     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         ObjectVM  � DataContext#  [  5        MaterialDesignBody#���  5
      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   6*   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   $��15q�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  
������   Kind$ AlignHorizontalLeft=�5      $��25��5       $��25��5!      $��Center=�5"      $��20 0 0 0q�5#      �� 5$      $��Quản lý sản phẩm��6   $��Center=�5%      
������$��20(�5'      5(      5)      � 5+   
   $��1��6   $��15q�6   .+�5,      #  MaterialDesignThemes.Wpf.Card  .��5-      � .+�5.      �� $	��200��6l   $��
5 15 30 15q�6x   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên sản phẩm��6�   ��6   �� *DisplayName+ �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�6�   �� 5/      $��70��6   	 �� DisplayMemberPath$	 Displayname��6*   $ 
Đơn vị��6�   
 �� 
IsEditable
 .   MaterialDesignComboBox#��[ 6�   ��6J   �� *Unit+ �� SelectedItem 6g   �� *SelectedUnit+$ TwoWay=�$ PropertyChanged=�6+  50      51      52      � 56   
   $��2��6   $��15q�6   .+�57        $��Right=�6"   .��58      � .+�59      �� $��Refresh��69   $��5q�6K   $	��100��6V   ��6   �� *	Refresh+6d   �� 5:      $��Thêm��6<   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5;      $��Sửa��6=   $��5q�6K   $	��100��6V   ��6   �� *EditCommand+6d   �� 5<      $
��Xóa��6?   $��5q�6M   
���  ��$	��100��6i   ��6   �� *DeleteCommand+6w   5=      5>      5?      � 5B   
   $��3��6   $��15q�6   .+�5C        $��Stretch=�6"   .��5D      �� $
��Auto=�6   .��5E      �� ��6   �� *List+$ TwoWay=�$ PropertyChanged=� 6n   �� *SelectedItem+$ TwoWay=� �� View 5F      �� 5G      .P�5H   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *Id+6c   �� 5I   "   $��Tên sản phẩm��61    6G   �� *Displayname+6v   �� 5J   "   $��
Đơn vị��61    6A   �� *Unit.Displayname+6u   5K      5M      5N      5O      5P      5Q      5R      