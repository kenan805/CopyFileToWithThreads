   M S B A M L   `   `   `  ����   CopyFileToWithThreads,    &CopyFileToWithThreads.Views.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       � Title$  
CopyToFile��$	��365��$	��720�� � 	Resources  �� 
TargetType �� Property �� Value��%u  '��       '�� i     '��     �� " ��.���  � ��$ Center=���  � ��$ 10q���  � ��$ 20(���  � ��$ 50���� " ��.���  � ��$ Center=���  � ��$	 480����  � ��$ 17(���  � ��$ 30����  � ��$ Center=���  � ��$ 20q��� " ��.���  � ��$ Center=���  � ��$	 100����  � ��$ 20(�.���  � RowDefinitions �� �� �� .+���  �� Orientation$ 
Horizontal=�.+��� $
��From���� -    ��Name$ txbFromFile���� -    ��Name$ btnFromFile��$��File...������ *FromFileCommand+� $��1��.+��� $ 
Horizontal=�.+��� $��To���� -   $ 	txbToFile���� -   $ 	btnToFile��$��File...������ *ToFileCommand+� $��2��.+��� $ 
Horizontal=�.+�� -   	 �Name$	 	pbLoading��$	��560��$��30��$��10q�
 � Maximum$	
 100Q��� .+��� -   $ btnCopyFile��$
��Copy��$��5q����� *CopyFileCommand+�� -   $ 
btnSuspend��$��Suspend��$��5,0,5,5q����� *SuspendCommand+�� -   $ 	btnResume��$��Resume������ *ResumeCommand+