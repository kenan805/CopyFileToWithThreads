   M S B A M L   `   `   `  ����  CopyFileToWithThreads,    &CopyFileToWithThreads.Views.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  
CopyToFile��5   	   $	��365��6   $	��720��6)    � 	Resources 5       �� 
TargetType �� Property �� Value��%p  '��       '�� �     '�� �    �� 5	   
   " ��6   .�5
      ��  � ��$ Center=�62   �� 5       � ��$ 10q�6'   �� 5       � ��$ 20(�6)   �� 5       � ��$ 50��6&   5      �� 5   
   " ��6   .�5      ��  � ��$ Center=�62   �� 5       � ��$	 480��6&   �� 5       � ��$ 17(�6)   �� 5       � ��$ 30��6'   �� 5       � ��$ Center=�69   �� 5       � ��$ 20q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ Center=�62   �� 5       � ��$	 100��6&   �� 5       � ��$ 20(�6)   5      5      .��5      �  � RowDefinitions 5   
   �� 5       �� 5!      �� 5"      .+�5%   
   ��  �� Orientation$ 
Horizontal=�6   .+�5&      �� $
��From��6   �� 5'      -   5         ��Name$ txbFromFile��5'      �� 5(      -   5         ��Name$ btnFromFile��5(      $��File...��6*   ��6<   �� *FromFileCommand+5)      � 5*   
   $��1��6   .+�5+      �� $ 
Horizontal=�6   .+�5,      �� $��To��6   �� 5-      -   5        $ 	txbToFile��5-      �� 5.      -   5        $ 	btnToFile��5.      $��File...��6,   ��6>   �� *ToFileCommand+5/      50      � 51   
   $��2��6   .+�52      �� $ 
Horizontal=�6   .+�53      �� .+�54      � -   5        	 �Name$	 	pbLoading��54   "   $	��560��55      $��30��56      $��10q�57      
 � Maximum$	
 100Q�58      �� 59      -   5         ��Name$ textProgress��59       $��Right=�66   $��22(�6R   $	��0 %��6`   5:      �� 5;      .+�5<      �� -   5        $ btnCopyFile��5<      $
��Copy��62   $��5q�6A   ��6L   �� *CopyFileCommand+�� 5=      -   5        $ 
btnSuspend��5=      $��Suspend��61   $��5,0,5,5q�6C   ��6T   �� *SuspendCommand+�� 5>      -	   5        $ 	btnResume��5>      $��Resume��60   ��6A   �� *ResumeCommand+5?      5@      5A      5B      5C      