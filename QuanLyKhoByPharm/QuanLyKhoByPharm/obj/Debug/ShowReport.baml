   M S B A M L   `   `   `  ����K  GQuanLyKhoByPharm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanLyKhoByPharmQuanLyKhoByPharm  5   	   !    QuanLyKhoByPharm.ShowReport   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:QuanLyKhoByPharm     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   	      ShowRPVM  � DataContext#  [  5   	     MaterialDesignBody#���  5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	    � Title$ 	Báo Cáo��5   	   $	��500��6    � WindowStartupLocation$ CenterScreen=�5   	   $
��1080��5   	   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   6*   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��0��6   $��15q�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  
������   Kind$ 	FileChart=�5      $��25��5      $��25��5       $��Center=�5!      $��20 0 0 0q�5"      �� 5#      $��Chi tiết báo cáo��6   $��Center=�5$      
������$��20(�5&      5'      5(      � 5+   
   $��2��6   $��15q�6   .+�5,      #  MaterialDesignThemes.Wpf.Card  $��Stretch=�6"   .��5-      �� $
��Auto=�6   .��5.      �� ��6   �� *List+ �� SelectedItem 6<   �� *SelectedItem+	 �� Mode$	 OneWayToSource=�
 �� View
 5/      �� 50      .P�51   "   �� $��Mã hóa đơn��61    �� DisplayMemberBinding 6E   �� *
Input.Id+6q   �� 52   "   $��Tên sản phẩm��61    6G   �� *Object.Displayname+6}   �� 53   "   $��Số lượng��61    6C   �� *Cout+6k   �� 54   "   $��Giá nhập��61    6C   �� *
InputPrice+6q   �� 55   "   $��Giá xuất��61    6C   �� *OutputPrice+6r   �� 56   "   $��Ngày nhập��61    6D   �� *Input.CreDate+6u   �� 57   "   $��Hạn SD��61    6A   �� *HanSD+6j   58      5:      5;      5<      5=      5>      5?      