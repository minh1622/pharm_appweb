   M S B A M L   `   `   `  ����K  GQuanLyKhoByPharm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanLyKhoByPharmQuanLyKhoByPharm  5      %    QuanLyKhoByPharm.UserControlAdd   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:QuanLyKhoByPharm     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	       	  AddVM  � DataContext#  [  5        MaterialDesignBody#���  5
      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   6*   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   $��15q�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  
������   Kind$ ArrowDownBoldBox=�5       $��25��5!      $��25��5"      $��Center=�5#      $��20 0 0 0q�5$      �� 5%      $��
Nhập kho��6   $��Center=�5&      
������$��20(�5(      5)      5*      � 5,   
   $��1��6   $��15q�6   .+�5-      #  MaterialDesignThemes.Wpf.Card  .��5.      � .+�5/      �� $	��120��6V   $��
5 15 30 15q�6b   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Mã hóa đơn��6v   ��6   �� *Id+ �� UpdateSourceTrigger$ PropertyChanged=�6�   (  "System.Windows.Controls.DatePicker  50      $	��120��6D   $ 	Ngay nhap��6P      SelectedDate 6!   �� *	DateInput+6P   �� 51      $��Tạo hóa đơn��67   $��	320 5 5 5q�6M   $	��130��6`   ��6   �� *Taohd+6n   52      53      54      � 55   
   $��2��6   $��15q�6   .+�56        .��57      � .+�58      �� $	��100��6   $��
5 15 30 15q�6+   	 �� DisplayMemberPath$	 Displayname��59      $ Tên sản phẩm��5<      
 �� 
IsEditable
 .   MaterialDesignComboBox#��[ 5>      ��5:      �� *Object+ �� SelectedItem 5;      �� *SelectedObject+ �� Mode$ TwoWay=�$ PropertyChanged=�5>   Q   �� 5?      $��70��6Y   $��
5 15 30 15q�6d   $ Số lượng��6x   ��6   �� *Count+$ PropertyChanged=�6�   �� 5@      $��70��6^   $��
5 15 30 15q�6i   $ Giá nhập��6}   ��6   �� *
InputPrice+$ PropertyChanged=�6�   �� 5A      $��70��6_   $��
5 15 30 15q�6j   $ 	Giá bán��6~   ��6   �� *OutputPrice+$ PropertyChanged=�6�     5B      $	��120��6@   $ Hạn SD��6L    6!   �� *HanSD+6L   5C      5D      5E      � 5H   
   $��3��6   $��15q�6   .+�5I        $��Right=�6"   .��5J      � .+�5K      �� $��Refresh��69   $��5q�6K   $	��100��6V   ��6   �� *	Refresh+6d   �� 5L      $��Thêm��6<   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5M      $��Sửa��6=   $��5q�6K   $	��100��6V   ��6   �� *EditCommand+6d   �� 5N      $
��Xóa��6?   $��5q�6M   
���  ��$	��100��6i   ��6   �� *DeleteCommand+6w   �� 5O      $��
Nhập kho��6@   $��5q�6S   
����  �$	��100��6p   ��6   �� *NhapkhoCommand+6~   5P      5Q      5R      � 5U   
   $��4��6   $��15q�6   .+�5V        $��Stretch=�6"   .��5W      �� $
��Auto=�6   .��5X      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 5Y      �� 5Z      .P�5[   "   �� $��Mã hóa đơn��61    �� DisplayMemberBinding 6E   �� *
Input.Id+6q   �� 5\   "   $��Tên sản phẩm��61    6G   �� *Object.Displayname+6}   �� 5]   "   $��Số lượng��61    6C   �� *Cout+6k   �� 5^   "   $��Giá nhập��61    6C   �� *
InputPrice+6q   �� 5_   "   $��Giá xuất��61    6C   �� *OutputPrice+6r   �� 5`   "   $��Ngày nhập��61    6D   �� *Input.CreDate+6u   �� 5a   "   $��Hạn SD��61    6A   �� *HanSD+6j   5b      5d      5e      5f      5g      5h      5i      