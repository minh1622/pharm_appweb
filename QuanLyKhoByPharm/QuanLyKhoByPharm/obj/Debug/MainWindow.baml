   M S B A M L   `   `   `  ����K  GQuanLyKhoByPharm, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:QuanLyKhoByPharmQuanLyKhoByPharm  5   	   !    QuanLyKhoByPharm.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:QuanLyKhoByPharm     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5	   	   -   5          �Name$  MainWd��5   	      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignFont#���  5   	    
 MainVM � DataContext# [ 5   	    � Title$ 
MainWindow��5   	   $	��650��6   $
��1080��6)   
������� � 
ResizeMode$ NoResize=�6I    � WindowStartupLocation$ CenterScreen=�6_    � WindowStyle$
 None=�6�   .  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
   	   	EventName$	 Loaded��6   .  (System.Windows.Interactivity.TriggerBase
   Actions.
 5      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6$   �� *LoadedWindowCommand+   CommandParameter 5   (   ��  �� ElementName$ MainWd��5       � 	Resources 5        OpenMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	CloseMenu��%�  &	       &	 �     �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 70Q�63     5       $ 0:0:0.5��6'   $	 200Q�69   5!      5"      �� 5#   
   .��5$      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5%        $ 0��6'   $	 200Q�63     5&      $ 0:0:0.5��6'   $ 70Q�69   5'      5(      5)       � Triggers 5*      :� 5+   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5,      �� #��[ 6   5-      :� 5.   
   $ ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5/      �� #��[ 6   50      .��52      � ��54   
   �� 55       �� Opacity$	 0.1Q�6    �� ImageSource$% /PhotoApp/Logo - Pharm Team.png��6'    j� Stretch$ Uniform=�6U   .+�58   
   � -   5         �Name$ GridMain��58      $��Right=�59      $��Bottom=�5:      $	��590��5;      $
��1010��5<       � ColumnDefinitions 5=      �� 5>      $
��983* �6#   �� 5?      $	��27* �6#   5A      � 5B   
   $��60��6    J� Opacity$	 0.6Q�6   $	��Top=�6)   ���	#FF5C99D6 J� Effect 5C      3  -System.Windows.Media.Effects.DropShadowEffect  5D         
BlurRadius$ 1Q�6#      ShadowDepth$ 1Q�62      Color$ 	#FFACACAC��6B   .+�5F      ��   �� Orientation$  
Horizontal=�6   $��Right=�62   .+�5G      '  !MaterialDesignThemes.Wpf.PopupBox  !   PlacementMode$! BottomAndAlignRightEdges=�6*   "   	StaysOpen" .  $��10q�6e   #   PopupContent.# 5H      �� $	��150��6!   .+�5I      �� $��Settings��6!   �� 5J      $��Account��6D   ��6!   �� *AccountCommand+6D   �� 5K      $
��Help��6!   �� 5L      �� 5M      $��Logout��6!   �� 5N      $
��Exit��5P   !   ��5N   !   �� *ExitCommand+��5O   !   �� $ MainWd��5P   !   5Q      5R      5S      �� 5T      $��Center=�6   $��Center=�5U      $��22(�5V      $1��+Quản lý kho thuốc Design by Pharm Team��5W      6H   5X      � 5Y   
   -   5        $ GridMenu��5Y      $��70��6!   $
��Left=�6,   ���	#FF31577E 5Z        5[      $ 2Q�6#   $ 1Q�62   $ 	#FFAEAEAE��6B   .+�5`      �� .+�5d      � $	��150��6   
�������$ J� RenderTransformOrigin$$ 0.5,0.5&�67   z�5e      V� 5f      .~�5g      �� �� 5h      �� 5i      T� 5j      5k      .+�5m      �� -   5        % ��Name$% ButtonOpenMenu��5m      $��60��65   $��60��6A   $��5q�6L   $��Right=�6W   $	��Top=�6s    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6�   ���	#FF31577E��6�   Z� ��6�   Z� .��5n      '	  !MaterialDesignThemes.Wpf.PackIcon	  & 	  Kind$
& Menu=�62   $��25��6>   $��25��6I   5o      �� 5p      -   5        $% ButtonCloseMenu��5p      $y�	Collapsed=�66   $��60��6M   $��60��6Y   $��5q�6d   $��Right=�6o   $	��Top=�6�   #��[ 6�   ���	#FF31577E��6�   Z� ��6�   Z� .��5q      	  $& 	ArrowLeft=�62   $��25��6C   $��25��6N   5r      �� 5s      $��80��6   $��Bottom=�6(   5t      �� 5z      -   5        ' ��Name$' ListViewMenu��5z      ���	#FF5C99D6$��Disabled=�5|      .@�5~      �� -   5        ( ��Name$( ItemHome��5~   #   $��60��65   .��5      �� $  
Horizontal=�6%   .+�5�      	  $
& Home=�66   $��25��6B   $��25��6N   $��10q�6Y   �� 5�      $��Trang chủ��6(   $��Center=�69   $��20 10q�6T   5�      5�      �� 5�      -   5        $( ItemAdd��5�   #   $��60��64   .��5�      �� $  
Horizontal=�6%   .+�5�      	  $& ArrowDownBoldBox=�66   $��25��6N   $��25��6Z   $��10q�6e   �� 5�      $��
Nhập kho��6(   $��Center=�68   $��20 10q�6S   5�      5�      �� 5�      -	   5        $( ItemOut��5�   #   $��60��64   .��5�      �� $  
Horizontal=�6%   .+�5�      	  $& ArrowUpBoldBox=�66   $��25��6L   $��25��6X   $��10q�6c   �� 5�      $��
Xuất kho��6(   $��Center=�68   $��20 10q�6T   5�      5�      �� 5�      -
   5        $( 
ItemObject��5�   #   $��60��67   .��5�      �� $  
Horizontal=�6%   .+�5�      	  $& AlignHorizontalLeft=�66   $��25��6Q   $��25��6]   $��10q�6h   �� 5�      $��Sản phẩm��6(   $��Center=�68   $��20 10q�6T   5�      5�      �� 5�      -   5        $( ItemUnit��5�   #   $��60��65   .��5�      �� $  
Horizontal=�6%   .+�5�      	  $& TapeMeasure=�66   $��25��6I   $��25��6U   $��10q�6`   �� 5�      $��Đơn vị đo��6(   $��Center=�69   $��20 10q�6U   5�      5�      �� 5�      -   5        $( 
ItemReport��5�   #   $��60��67   .��5�      �� $  
Horizontal=�6%   .+�5�      	  $& 	FileChart=�66   $��25��6G   $��25��6S   $��10q�6^   �� 5�      $��	Báo cáo��6(   $��Center=�67   $��20 10q�6S   5�      5�      5�      5�      5�      5�      5�      