   M S B A M L   `   `   `  ����K  GQuanLyKhoByPharm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanLyKhoByPharmQuanLyKhoByPharm  5   	   "    QuanLyKhoByPharm.ItemAccount   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:QuanLyKhoByPharm     5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	    	  AccVM  � DataContext#  [  5	   	     MaterialDesignBody#���  5      $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignFont#���  5       � Title$ ItemAccount��5   	   $	��600��6   $
��1080��6*   .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   6*   �� 5      $
��auto �6   6-   �� 5      $
��auto �6   6-   �� 5      $
��auto �6   6-   �� 5      $
��auto �6   6-   �� 5      6   .+�5   
   � $��0��6   $��15q�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5       '  !MaterialDesignThemes.Wpf.PackIcon  
������   Kind$
 Home=�5"      $��25��5#      $��25��5$      $��Center=�5%      $��20 0 0 0q�5&      �� 5'      $��Quản lý tài khoản��6   $��Center=�5(      
������$��20(�5*      5+      5,      � 5.   
   $��1��6   $��15q�6   .+�5/      #  MaterialDesignThemes.Wpf.Card  .��50      � .+�51      �� $	��100��6Y   $��
5 15 30 15q�6e   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đăng nhập��6y   ��6   �� *Tendn+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 52      $	��100��6Y   $��
5 15 30 15q�6e   $ Tên hiển thị��6y   ��6   �� *Tenht+$ PropertyChanged=�6�   G� 53      -   5        	 G�Name$	 PasswordBox1��53   "   $ Mật khẩu��68   $	��110��6b   $��
5 15 30 15q�6n   .  (System.Windows.Interactivity.Interaction
   Triggers
 54      /  )System.Windows.Interactivity.EventTrigger  55         	EventName$ PasswordChanged��6-   .  (System.Windows.Interactivity.TriggerBase   Actions. 56   "   6  0System.Windows.Interactivity.InvokeCommandAction     Command 68   �� *PasswordChangedCommand+   CommandParameter 57   (   ��  �� ElementName$ PasswordBox1��58      5:      G� 5;      -   5        $	 PasswordBox2��5;   "   $ Nhập lại mật khẩu��68   $	��130��6k   $��
5 15 30 15q�6w   
 5<        5=      $ PasswordChanged��6-   . 5>   "      68   �� *RPasswordChangedCommand+ 5?   (   �� $ PasswordBox2��5@      5B      5C      5D      5E      � 5I   
   $��2��6   $��15q�6   .+�5J        $��Right=�6"   .��5K      � .+�5L      �� $��Tạo tài khoản��6<   $��5q�6T   $	��150��6_   ��6   �� *
AddCommand+6m   �� 5M      $
��Xóa��6?   $��5q�6M   
���  ��$	��100��6i   ��6   �� *DeleteCommand+6w   5N      5O      5P      � 5R   
   $��3��6   $��15q�6   .+�5S        .��5T      � .+�5U      ��  �� 
IsReadOnly . $	��100��6n   $��
5 15 30 15q�6z   $ Tên đăng nhập��6�   ��60   �� *
UserName+$ PropertyChanged=�6�   �� 5V      $	��100��6`   $��
5 15 30 15q�6l   $ Tên hiển thị��6�   ��6   �� *Displayname+$ PropertyChanged=�6�   G� 5W      -   5        $	 OldPass��5W   "   $ Mật khẩu cũ��63   $	��120��6`   $��
5 15 30 15q�6l   
 5X        5Y      $ PasswordChanged��6-   . 5Z   "      68   �� *OldPasswordChangedCommand+ 5[   (   �� $ OldPass��5\      5^      G� 5_      -   5        $	 NewPass��5_   "   $ Mật khẩu mới��63   $	��120��6a   $��
5 15 30 15q�6m   
 5`        5a      $ PasswordChanged��6-   . 5b   "      68   �� *NewPasswordChangedCommand+ 5c   (   �� $ NewPass��5d      5f      G� 5g      -   5        $	 	ReNewPass��5g   "   $% Nhập lại mật khẩu mới��65   $	��140��6l   $��
5 15 30 15q�6x   
 5h        5i      $ PasswordChanged��6-   . 5j   "      68   �� *ReNewPasswordChangedCommand+ 5k   (   �� $ 	ReNewPass��5l      5n      5p      5q      5r      � 5u   
   $��4��6   $��15q�6   .+�5v        $��Right=�6"   .��5w      � .+�5x      �� $��Đổi mật khẩu��6H   $��5q�6_   $	��120��6j   ��6   �� *ChangePasswordCommand+6x   5y      5z      5{      � 5~   
   $��5��6   $��15q�6   .+�5        $��Stretch=�6"   .��5�      �� $
��Auto=�6   .��5�      �� ��6   �� *List+ �� SelectedItem 6<   �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View 5�      �� 5�      .P�5�   "   �� $��ID��61    �� DisplayMemberBinding 6=   �� *Id+6c   �� 5�   "   $��Tên đăng nhập��61    6H   �� *
UserName+6t   �� 5�   "   $��Tên hiển thị��61    6G   �� *Displayname+6v   5�      5�      5�      5�      5�      5�      5�      