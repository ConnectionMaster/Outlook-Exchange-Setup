FasdUAS 1.101.10   ��   ��    k             l      ��  ��   4.

--------------------------------------------
Outlook Exchange Setup 4.0
� Copyright 2008-2010 William Smith
bill@officeformachelp.com

Except where otherwise noted, this work is licensed under http://creativecommons.org/licenses/by/3.0/

This script may be freely modified for personal or commercial purposes but may not be republished for profit without prior consent.

If you find this script useful or have ideas for improving it, please let me know. It is only compatible with Outlook 2011 for Mac.

This script is used in conjunction with the OutlookExchangeSetup4.0.scpt script or later.

1.	Configure the OutlookExchangeSetup4.0.scpt file with your Exchange Server settings

2.	Copy the OutlookExchangeSetup4.0.scpt file to a commonly accessible folder on your computer such as /Library/yourCompanyName. Make sure all users have read permission for the script file..

3.	Create a new user account.

4.	Launch Microsoft Outlook for Mac and set up and configure all preferences, schedules, rules, etc., that all users should have by default.

5.	Create a new schedule using Tools --> Schedules...

	Name it exactly "Exchange Setup".
	Set it to run "At Startup".
	Add Action "Run AppleScript" and select your pre-configured OutlookExchangeSetup4.0.scpt file.
	Click the OK button and to save the "Exchange Setup" schedule. It should be enabled.

6.	Run this script. It does three things:

	a.) It will copy the current Microsoft User Data folder to the User Template folder.
	b.) It will copy all Microsoft preferences to the User Template folder.
	c.) It will set the default mail application to Outlook in the User Template folder.

7.	To test, create a new user account on the same computer and log in. Launch Microsoft Outlook for Mac. Your new user account should run the script and then delete the "Exchange Setup" schedule.

     � 	 	\ 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 O u t l o o k   E x c h a n g e   S e t u p   4 . 0 
 �   C o p y r i g h t   2 0 0 8 - 2 0 1 0   W i l l i a m   S m i t h 
 b i l l @ o f f i c e f o r m a c h e l p . c o m 
 
 E x c e p t   w h e r e   o t h e r w i s e   n o t e d ,   t h i s   w o r k   i s   l i c e n s e d   u n d e r   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y / 3 . 0 / 
 
 T h i s   s c r i p t   m a y   b e   f r e e l y   m o d i f i e d   f o r   p e r s o n a l   o r   c o m m e r c i a l   p u r p o s e s   b u t   m a y   n o t   b e   r e p u b l i s h e d   f o r   p r o f i t   w i t h o u t   p r i o r   c o n s e n t . 
 
 I f   y o u   f i n d   t h i s   s c r i p t   u s e f u l   o r   h a v e   i d e a s   f o r   i m p r o v i n g   i t ,   p l e a s e   l e t   m e   k n o w .   I t   i s   o n l y   c o m p a t i b l e   w i t h   O u t l o o k   2 0 1 1   f o r   M a c . 
 
 T h i s   s c r i p t   i s   u s e d   i n   c o n j u n c t i o n   w i t h   t h e   O u t l o o k E x c h a n g e S e t u p 4 . 0 . s c p t   s c r i p t   o r   l a t e r . 
 
 1 . 	 C o n f i g u r e   t h e   O u t l o o k E x c h a n g e S e t u p 4 . 0 . s c p t   f i l e   w i t h   y o u r   E x c h a n g e   S e r v e r   s e t t i n g s 
 
 2 . 	 C o p y   t h e   O u t l o o k E x c h a n g e S e t u p 4 . 0 . s c p t   f i l e   t o   a   c o m m o n l y   a c c e s s i b l e   f o l d e r   o n   y o u r   c o m p u t e r   s u c h   a s   / L i b r a r y / y o u r C o m p a n y N a m e .   M a k e   s u r e   a l l   u s e r s   h a v e   r e a d   p e r m i s s i o n   f o r   t h e   s c r i p t   f i l e . . 
 
 3 . 	 C r e a t e   a   n e w   u s e r   a c c o u n t . 
 
 4 . 	 L a u n c h   M i c r o s o f t   O u t l o o k   f o r   M a c   a n d   s e t   u p   a n d   c o n f i g u r e   a l l   p r e f e r e n c e s ,   s c h e d u l e s ,   r u l e s ,   e t c . ,   t h a t   a l l   u s e r s   s h o u l d   h a v e   b y   d e f a u l t . 
 
 5 . 	 C r e a t e   a   n e w   s c h e d u l e   u s i n g   T o o l s   - - >   S c h e d u l e s . . . 
 
 	 N a m e   i t   e x a c t l y   " E x c h a n g e   S e t u p " . 
 	 S e t   i t   t o   r u n   " A t   S t a r t u p " . 
 	 A d d   A c t i o n   " R u n   A p p l e S c r i p t "   a n d   s e l e c t   y o u r   p r e - c o n f i g u r e d   O u t l o o k E x c h a n g e S e t u p 4 . 0 . s c p t   f i l e . 
 	 C l i c k   t h e   O K   b u t t o n   a n d   t o   s a v e   t h e   " E x c h a n g e   S e t u p "   s c h e d u l e .   I t   s h o u l d   b e   e n a b l e d . 
 
 6 . 	 R u n   t h i s   s c r i p t .   I t   d o e s   t h r e e   t h i n g s : 
 
 	 a . )   I t   w i l l   c o p y   t h e   c u r r e n t   M i c r o s o f t   U s e r   D a t a   f o l d e r   t o   t h e   U s e r   T e m p l a t e   f o l d e r . 
 	 b . )   I t   w i l l   c o p y   a l l   M i c r o s o f t   p r e f e r e n c e s   t o   t h e   U s e r   T e m p l a t e   f o l d e r . 
 	 c . )   I t   w i l l   s e t   t h e   d e f a u l t   m a i l   a p p l i c a t i o n   t o   O u t l o o k   i n   t h e   U s e r   T e m p l a t e   f o l d e r . 
 
 7 . 	 T o   t e s t ,   c r e a t e   a   n e w   u s e r   a c c o u n t   o n   t h e   s a m e   c o m p u t e r   a n d   l o g   i n .   L a u n c h   M i c r o s o f t   O u t l o o k   f o r   M a c .   Y o u r   n e w   u s e r   a c c o u n t   s h o u l d   r u n   t h e   s c r i p t   a n d   t h e n   d e l e t e   t h e   " E x c h a n g e   S e t u p "   s c h e d u l e . 
 
   
  
 l     ��������  ��  ��        l     ��  ��    4 . Where do you want to copy your Outlook files?     �   \   W h e r e   d o   y o u   w a n t   t o   c o p y   y o u r   O u t l o o k   f i l e s ?      l     ��������  ��  ��        l     ����  r         I    ��  
�� .sysodlogaskr        TEXT  m        �  L T h i s   s c r i p t   w i l l   c o p y   t h e   d e f a u l t   s e t   o f   O u t l o o k   f i l e s   t o   y o u r   c o m p u t e r ' s   U s e r   T e m p l a t e   f o l d e r   o r   t o   a   f o l d e r   o f   y o u r   c h o i c e . 
 
 W h e r e   w o u l d   y o u   l i k e   t o   c o p y   t h e   f i l e s ?  ��  
�� 
appr  m       �    C o p y   f i l e s  ��   !
�� 
disp   m    ����  ! �� " #
�� 
btns " J     $ $  % & % m     ' ' � ( (  C a n c e l &  ) * ) m     + + � , ,  A n o t h e r   f o l d e r *  -�� - m    	 . . � / / ( U s e r   T e m p l a t e   f o l d e r��   # �� 0��
�� 
dflt 0 J     1 1  2�� 2 m     3 3 � 4 4 ( U s e r   T e m p l a t e   f o l d e r��  ��    o      ���� 0 folderchoice folderChoice��  ��     5 6 5 l     ��������  ��  ��   6  7 8 7 l   ' 9���� 9 Z    ' : ;���� : =    < = < n     > ? > 1    ��
�� 
bhit ? o    ���� 0 folderchoice folderChoice = m     @ @ � A A  A n o t h e r   f o l d e r ; I    #�������� *0 copytoanotherfolder copyToAnotherFolder��  ��  ��  ��  ��  ��   8  B C B l     ��������  ��  ��   C  D E D l  ( ; F���� F Z   ( ; G H���� G =  ( / I J I n   ( + K L K 1   ) +��
�� 
bhit L o   ( )���� 0 folderchoice folderChoice J m   + . M M � N N ( U s e r   T e m p l a t e   f o l d e r H I   2 7�������� 40 copytousertemplatefolder copyToUserTemplateFolder��  ��  ��  ��  ��  ��   E  O P O l     ��������  ��  ��   P  Q R Q i      S T S I      �������� 40 copytousertemplatefolder copyToUserTemplateFolder��  ��   T k     e U U  V W V l     ��������  ��  ��   W  X Y X l     �� Z [��   Z . ( Get the path to the current home folder    [ � \ \ P   G e t   t h e   p a t h   t o   t h e   c u r r e n t   h o m e   f o l d e r Y  ] ^ ] l     �� _ `��   _ ' ! in the form of /Users/homefolder    ` � a a B   i n   t h e   f o r m   o f   / U s e r s / h o m e f o l d e r ^  b c b l     ��������  ��  ��   c  d e d r     	 f g f n      h i h 1    ��
�� 
psxp i l     j���� j I    �� k��
�� .earsffdralis        afdr k m     ��
�� afdrcusr��  ��  ��   g o      ���� 0 
homefolder 
homeFolder e  l m l l  
 
��������  ��  ��   m  n o n l  
 
�� p q��   p N H copy the Microsoft User Data folder from the current user's home folder    q � r r �   c o p y   t h e   M i c r o s o f t   U s e r   D a t a   f o l d e r   f r o m   t h e   c u r r e n t   u s e r ' s   h o m e   f o l d e r o  s t s l  
 
�� u v��   u ? 9 to /System/Library/User Template/English.lproj/Documents    v � w w r   t o   / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / D o c u m e n t s t  x y x l  
 
��������  ��  ��   y  z { z r   
  | } | b   
  ~  ~ b   
  � � � b   
  � � � m   
  � � � � �  " � o    ���� 0 
homefolder 
homeFolder � m     � � � � � : D o c u m e n t s / M i c r o s o f t   U s e r   D a t a  m     � � � � �  " } o      ���� 
0 mud MUD {  � � � r     � � � b     � � � b     � � � m     � � � � �  " � m     � � � � � j / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / D o c u m e n t s � m     � � � � �  " � o      ���� 0 utdocuments UTDocuments �  � � � r    ' � � � c    % � � � b    # � � � b    ! � � � b     � � � m     � � � � �  c p   - f R   � o    ���� 
0 mud MUD � m      � � � � �    � o   ! "���� 0 utdocuments UTDocuments � m   # $��
�� 
TEXT � o      ���� 0 copymud copyMUD �  � � � I  ( /�� � �
�� .sysoexecTEXT���     TEXT � o   ( )���� 0 copymud copyMUD � �� ���
�� 
badm � m   * +��
�� boovtrue��   �  � � � l  0 0��������  ��  ��   �  � � � l  0 0�� � ���   � I C copy the Microsoft preferences from the current user's home folder    � � � � �   c o p y   t h e   M i c r o s o f t   p r e f e r e n c e s   f r o m   t h e   c u r r e n t   u s e r ' s   h o m e   f o l d e r �  � � � l  0 0�� � ���   � I C to /System/Library/User Template/English.lproj/Library/Preferences    � � � � �   t o   / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / L i b r a r y / P r e f e r e n c e s �  � � � l  0 0��������  ��  ��   �  � � � r   0 5 � � � b   0 3 � � � o   0 1���� 0 
homefolder 
homeFolder � m   1 2 � � � � � D L i b r a r y / P r e f e r e n c e s / * [ M m ] i c r o s o f t * � o      ���� 0 mspreferences MSPreferences �  � � � r   6 A � � � b   6 ? � � � b   6 ; � � � m   6 7 � � � � �  " � m   7 : � � � � � ~ / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / L i b r a r y / P r e f e r e n c e s � m   ; > � � � � �  " � o      ���� 0 utpreferences UTPreferences �  � � � r   B Q � � � c   B O � � � b   B M � � � b   B K � � � b   B G � � � m   B E � � � � �  c p   - f R   � o   E F���� 0 mspreferences MSPreferences � m   G J � � � � �    � o   K L���� 0 utpreferences UTPreferences � m   M N��
�� 
TEXT � o      ���� &0 copymspreferences copyMSPreferences �  � � � I  R Y�� � �
�� .sysoexecTEXT���     TEXT � o   R S���� &0 copymspreferences copyMSPreferences � �� ���
�� 
badm � m   T U��
�� boovtrue��   �  � � � l  Z Z��������  ��  ��   �  � � � I  Z c�� � �
�� .sysoexecTEXT���     TEXT � m   Z ] � � � � �� d e f a u l t s   w r i t e   / S y s t e m / L i b r a r y / U s e r \   T e m p l a t e / E n g l i s h . l p r o j / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . L a u n c h S e r v i c e s   L S H a n d l e r s   ' ( { L S H a n d l e r R o l e A l l   =   " c o m . m i c r o s o f t . o u t l o o k " ;   L S H a n d l e r U R L S c h e m e   =   m a i l t o ; } ) ' � �� ���
�� 
badm � m   ^ _��
�� boovtrue��   �  ��� � l  d d��������  ��  ��  ��   R  � � � l     ��������  ��  ��   �  ��� � i     � � � I      �������� *0 copytoanotherfolder copyToAnotherFolder��  ��   � k     � � �  � � � l     ��������  ��  ��   �  � � � r     	 � � � I    ��� �
�� .sysostflalis    ��� null�   � �~ ��}
�~ 
prmp � m     � � � � � r S e l e c t   a   f o l d e r   f o r   y o u r   d e f a u l t   O u t l o o k   f o r   M a c   f i l e s . . .�}   � o      �|�| 0 	thefolder 	theFolder �    r   
  n   
  1    �{
�{ 
psxp o   
 �z�z 0 	thefolder 	theFolder o      �y�y 0 	thefolder 	theFolder  l   �x�w�v�x  �w  �v   	 l   �u
�u  
 . ( Get the path to the current home folder    � P   G e t   t h e   p a t h   t o   t h e   c u r r e n t   h o m e   f o l d e r	  l   �t�t   ' ! in the form of /Users/homefolder    � B   i n   t h e   f o r m   o f   / U s e r s / h o m e f o l d e r  l   �s�r�q�s  �r  �q    r     n     1    �p
�p 
psxp l   �o�n I   �m�l
�m .earsffdralis        afdr m    �k
�k afdrcusr�l  �o  �n   o      �j�j 0 
homefolder 
homeFolder  l   �i�h�g�i  �h  �g    l   �f !�f    N H copy the Microsoft User Data folder from the current user's home folder   ! �"" �   c o p y   t h e   M i c r o s o f t   U s e r   D a t a   f o l d e r   f r o m   t h e   c u r r e n t   u s e r ' s   h o m e   f o l d e r #$# l   �e%&�e  % ? 9 to /System/Library/User Template/English.lproj/Documents   & �'' r   t o   / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / D o c u m e n t s$ ()( l   �d�c�b�d  �c  �b  ) *+* r    #,-, b    !./. b    010 b    232 m    44 �55  "3 o    �a�a 0 
homefolder 
homeFolder1 m    66 �77 : D o c u m e n t s / M i c r o s o f t   U s e r   D a t a/ m     88 �99  "- o      �`�` 
0 mud MUD+ :;: r   $ -<=< b   $ +>?> b   $ )@A@ b   $ 'BCB m   $ %DD �EE  "C o   % &�_�_ 0 	thefolder 	theFolderA m   ' (FF �GG < / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a? m   ) *HH �II  "= o      �^�^ 0 utdocuments UTDocuments; JKJ r   . 9LML c   . 7NON b   . 5PQP b   . 3RSR b   . 1TUT m   . /VV �WW  c p   - f R  U o   / 0�]�] 
0 mud MUDS m   1 2XX �YY   Q o   3 4�\�\ 0 utdocuments UTDocumentsO m   5 6�[
�[ 
TEXTM o      �Z�Z 0 copymud copyMUDK Z[Z I  : M�Y\�X
�Y .sysoexecTEXT���     TEXT\ b   : I]^] b   : E_`_ b   : Aaba b   : ?cdc m   : ;ee �ff  m k d i r   - p  d m   ; >gg �hh  "b o   ? @�W�W 0 	thefolder 	theFolder` m   A Dii �jj  D o c u m e n t s^ m   E Hkk �ll  "�X  [ mnm I  N S�Vo�U
�V .sysoexecTEXT���     TEXTo o   N O�T�T 0 copymud copyMUD�U  n pqp l  T T�S�R�Q�S  �R  �Q  q rsr l  T T�Ptu�P  t I C copy the Microsoft preferences from the current user's home folder   u �vv �   c o p y   t h e   M i c r o s o f t   p r e f e r e n c e s   f r o m   t h e   c u r r e n t   u s e r ' s   h o m e   f o l d e rs wxw l  T T�Oyz�O  y I C to /System/Library/User Template/English.lproj/Library/Preferences   z �{{ �   t o   / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / L i b r a r y / P r e f e r e n c e sx |}| l  T T�N�M�L�N  �M  �L  } ~~ r   T [��� b   T Y��� o   T U�K�K 0 
homefolder 
homeFolder� m   U X�� ��� D L i b r a r y / P r e f e r e n c e s / * [ M m ] i c r o s o f t *� o      �J�J 0 mspreferences MSPreferences ��� r   \ k��� b   \ i��� b   \ e��� b   \ a��� m   \ _�� ���  "� o   _ `�I�I 0 	thefolder 	theFolder� m   a d�� ��� & L i b r a r y / P r e f e r e n c e s� m   e h�� ���  "� o      �H�H 0 utpreferences UTPreferences� ��� r   l {��� c   l y��� b   l w��� b   l u��� b   l q��� m   l o�� ���  c p   - f R  � o   o p�G�G 0 mspreferences MSPreferences� m   q t�� ���   � o   u v�F�F 0 utpreferences UTPreferences� m   w x�E
�E 
TEXT� o      �D�D &0 copymspreferences copyMSPreferences� ��� I  | ��C��B
�C .sysoexecTEXT���     TEXT� b   | ���� b   | ���� m   | �� ���  m k d i r   - p   '� o    ��A�A 0 	thefolder 	theFolder� m   � ��� ��� ( L i b r a r y / P r e f e r e n c e s '�B  � ��� I  � ��@��?
�@ .sysoexecTEXT���     TEXT� o   � ��>�> &0 copymspreferences copyMSPreferences�?  � ��� l  � ��=�<�;�=  �<  �;  � ��� r   � ���� c   � ���� b   � ���� b   � ���� m   � ��� ���   d e f a u l t s   w r i t e   '� o   � ��:�: 0 	thefolder 	theFolder� m   � ��� ��� L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . L a u n c h S e r v i c e s '   L S H a n d l e r s   ' ( { L S H a n d l e r R o l e A l l   =   " c o m . m i c r o s o f t . o u t l o o k " ;   L S H a n d l e r U R L S c h e m e   =   m a i l t o ; } ) '� m   � ��9
�9 
TEXT� o      �8�8 0 emaildefaults emailDefaults� ��� l  � ��7�6�5�7  �6  �5  � ��� I  � ��4��3
�4 .sysoexecTEXT���     TEXT� o   � ��2�2 0 emaildefaults emailDefaults�3  � ��1� l  � ��0�/�.�0  �/  �.  �1  ��       �-�����-  � �,�+�*�, 40 copytousertemplatefolder copyToUserTemplateFolder�+ *0 copytoanotherfolder copyToAnotherFolder
�* .aevtoappnull  �   � ****� �) T�(�'���&�) 40 copytousertemplatefolder copyToUserTemplateFolder�(  �'  � �%�$�#�"�!� ��% 0 
homefolder 
homeFolder�$ 
0 mud MUD�# 0 utdocuments UTDocuments�" 0 copymud copyMUD�! 0 mspreferences MSPreferences�  0 utpreferences UTPreferences� &0 copymspreferences copyMSPreferences� ��� � � � � � � � ���� � � � � � � �
� afdrcusr
� .earsffdralis        afdr
� 
psxp
� 
TEXT
� 
badm
� .sysoexecTEXT���     TEXT�& f�j �,E�O�%�%�%E�O��%�%E�O�%�%�%�&E�O��el O��%E�O�a %a %E�Oa �%a %�%�&E�O��el Oa �el OP� � ������� *0 copytoanotherfolder copyToAnotherFolder�  �  � 	���������� 0 	thefolder 	theFolder� 0 
homefolder 
homeFolder� 
0 mud MUD� 0 utdocuments UTDocuments� 0 copymud copyMUD� 0 mspreferences MSPreferences� 0 utpreferences UTPreferences� &0 copymspreferences copyMSPreferences� 0 emaildefaults emailDefaults� � ��
�	��468DFHVX�egik�����������
� 
prmp
�
 .sysostflalis    ��� null
�	 
psxp
� afdrcusr
� .earsffdralis        afdr
� 
TEXT
� .sysoexecTEXT���     TEXT� �*��l E�O��,E�O�j �,E�O�%�%�%E�O�%�%�%E�O�%�%�%�&E�O�a %�%a %a %j O�j O�a %E�Oa �%a %a %E�Oa �%a %�%�&E�Oa �%a %j O�j Oa �%a %�&E�O�j OP� �������
� .aevtoappnull  �   � ****� k     ;��  ��  7��  D� �   �  �  �  �  �� ���� ' + .�� 3�������� @�� M��
�� 
appr
�� 
disp
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 0 folderchoice folderChoice
�� 
bhit�� *0 copytoanotherfolder copyToAnotherFolder�� 40 copytousertemplatefolder copyToUserTemplateFolder� <����k����mv��kv� E�O��,�  
*j+ Y hO��,a   
*j+ Y h ascr  ��ޭ