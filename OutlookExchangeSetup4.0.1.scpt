FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

--------------------------------------------
Outlook Exchange Setup 4.0.1
� Copyright 2008-2010 William Smith
bill@officeformachelp.com

Except where otherwise noted, this work is licensed under
http://creativecommons.org/licenses/by/3.0/

This script may be freely modified for personal or commercial
purposes but may not be republished for profit without prior consent.

If you find this script useful or have ideas for improving it,
please let me know. It is only compatible with Outlook for Mac 2011.

--------------------------------------------

This script assists a user with the setup of his Exchange account
information. Below are basic instructions for using the script.
Consult the Outlook Exchange Setup 4.0 Administrator's Guide
for complete details.

1.	Customize the "network and  server properties" below with information
	appropriate to your network.

2. 	a. 	Launch Microsoft Outlook under a Mac OS X account that has no
		Outlook identity. Identities are found in
		~/Documents/Microsoft User Data/Office 2011 Identities.
	
	b. 	Close the Outlook Setup Assistant window and select
		Outlook --> Work Offline.
	
	c.	In the Finder, create a folder called "Outlook Setup Script"
		in /Library/<your company name>/ or any single location
		where all users have Read permissions.
	  
	d. 	Copy your customized script to the "Outlook Setup Script" folder.
		It should be saved as a compiled script, not an application.
		You can rename the script if you wish.
		
	e.	In Outlook select Tools --> Schedules... and create a New Schedule.
		Name: Outlook Setup
		When: At Startup
		Action: Run AppleScript, choose the saved script
			in the "Outlook Setup Script" folder.
		Click the "OK" button. Your script should be set to run
			at "Next Startup".
		
	f.	Configure any preferences, schedules, signatures, etc.
		This can include Default address format, Default time zone, fonts,
		encoding for attachments and more.
		
	g.	Quit Outlook.
		
	h.	Depending on your admin tools, you can push the script to the
		/Library folder of a new computer and the
		"~/Documents/Microsoft User Data/Office 2011 Identities/Main Identity" folder and
		to the "/System/Library/User Template/English.lproj/Documents/Microsoft User Data/
		Office 2011 Identities" folder.
		
		New users on a machine will have the pre-configured Main Identity
		folder copied to their home folders the first time they log in to a computer.
		
		The first time they launch Outlook, the "Exchange Setup" schedule
		will run the script.
		
		The script will disable the Schedule once it has run and will set Outlook
		to work online.
	  
	  
This script assumes the user's full name is in the form of "Last, First",
but is easily modified if the full name is in the form of "First Last".
It works especially well if the Mac is bound to Active Directory where
the user's short name will match his login name. Optionally, a dscl command
can be used to pull the user's EMailAddress from a directory service.

     � 	 	N 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 O u t l o o k   E x c h a n g e   S e t u p   4 . 0 . 1 
 �   C o p y r i g h t   2 0 0 8 - 2 0 1 0   W i l l i a m   S m i t h 
 b i l l @ o f f i c e f o r m a c h e l p . c o m 
 
 E x c e p t   w h e r e   o t h e r w i s e   n o t e d ,   t h i s   w o r k   i s   l i c e n s e d   u n d e r 
 h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y / 3 . 0 / 
 
 T h i s   s c r i p t   m a y   b e   f r e e l y   m o d i f i e d   f o r   p e r s o n a l   o r   c o m m e r c i a l 
 p u r p o s e s   b u t   m a y   n o t   b e   r e p u b l i s h e d   f o r   p r o f i t   w i t h o u t   p r i o r   c o n s e n t . 
 
 I f   y o u   f i n d   t h i s   s c r i p t   u s e f u l   o r   h a v e   i d e a s   f o r   i m p r o v i n g   i t , 
 p l e a s e   l e t   m e   k n o w .   I t   i s   o n l y   c o m p a t i b l e   w i t h   O u t l o o k   f o r   M a c   2 0 1 1 . 
 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 T h i s   s c r i p t   a s s i s t s   a   u s e r   w i t h   t h e   s e t u p   o f   h i s   E x c h a n g e   a c c o u n t 
 i n f o r m a t i o n .   B e l o w   a r e   b a s i c   i n s t r u c t i o n s   f o r   u s i n g   t h e   s c r i p t . 
 C o n s u l t   t h e   O u t l o o k   E x c h a n g e   S e t u p   4 . 0   A d m i n i s t r a t o r ' s   G u i d e 
 f o r   c o m p l e t e   d e t a i l s . 
 
 1 . 	 C u s t o m i z e   t h e   " n e t w o r k   a n d     s e r v e r   p r o p e r t i e s "   b e l o w   w i t h   i n f o r m a t i o n 
 	 a p p r o p r i a t e   t o   y o u r   n e t w o r k . 
 
 2 .   	 a .   	 L a u n c h   M i c r o s o f t   O u t l o o k   u n d e r   a   M a c   O S   X   a c c o u n t   t h a t   h a s   n o 
 	 	 O u t l o o k   i d e n t i t y .   I d e n t i t i e s   a r e   f o u n d   i n 
 	 	 ~ / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / O f f i c e   2 0 1 1   I d e n t i t i e s . 
 	 
 	 b .   	 C l o s e   t h e   O u t l o o k   S e t u p   A s s i s t a n t   w i n d o w   a n d   s e l e c t 
 	 	 O u t l o o k   - - >   W o r k   O f f l i n e . 
 	 
 	 c . 	 I n   t h e   F i n d e r ,   c r e a t e   a   f o l d e r   c a l l e d   " O u t l o o k   S e t u p   S c r i p t " 
 	 	 i n   / L i b r a r y / < y o u r   c o m p a n y   n a m e > /   o r   a n y   s i n g l e   l o c a t i o n 
 	 	 w h e r e   a l l   u s e r s   h a v e   R e a d   p e r m i s s i o n s . 
 	     
 	 d .   	 C o p y   y o u r   c u s t o m i z e d   s c r i p t   t o   t h e   " O u t l o o k   S e t u p   S c r i p t "   f o l d e r . 
 	 	 I t   s h o u l d   b e   s a v e d   a s   a   c o m p i l e d   s c r i p t ,   n o t   a n   a p p l i c a t i o n . 
 	 	 Y o u   c a n   r e n a m e   t h e   s c r i p t   i f   y o u   w i s h . 
 	 	 
 	 e . 	 I n   O u t l o o k   s e l e c t   T o o l s   - - >   S c h e d u l e s . . .   a n d   c r e a t e   a   N e w   S c h e d u l e . 
 	 	 N a m e :   O u t l o o k   S e t u p 
 	 	 W h e n :   A t   S t a r t u p 
 	 	 A c t i o n :   R u n   A p p l e S c r i p t ,   c h o o s e   t h e   s a v e d   s c r i p t 
 	 	 	 i n   t h e   " O u t l o o k   S e t u p   S c r i p t "   f o l d e r . 
 	 	 C l i c k   t h e   " O K "   b u t t o n .   Y o u r   s c r i p t   s h o u l d   b e   s e t   t o   r u n 
 	 	 	 a t   " N e x t   S t a r t u p " . 
 	 	 
 	 f . 	 C o n f i g u r e   a n y   p r e f e r e n c e s ,   s c h e d u l e s ,   s i g n a t u r e s ,   e t c . 
 	 	 T h i s   c a n   i n c l u d e   D e f a u l t   a d d r e s s   f o r m a t ,   D e f a u l t   t i m e   z o n e ,   f o n t s , 
 	 	 e n c o d i n g   f o r   a t t a c h m e n t s   a n d   m o r e . 
 	 	 
 	 g . 	 Q u i t   O u t l o o k . 
 	 	 
 	 h . 	 D e p e n d i n g   o n   y o u r   a d m i n   t o o l s ,   y o u   c a n   p u s h   t h e   s c r i p t   t o   t h e 
 	 	 / L i b r a r y   f o l d e r   o f   a   n e w   c o m p u t e r   a n d   t h e 
 	 	 " ~ / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / O f f i c e   2 0 1 1   I d e n t i t i e s / M a i n   I d e n t i t y "   f o l d e r   a n d 
 	 	 t o   t h e   " / S y s t e m / L i b r a r y / U s e r   T e m p l a t e / E n g l i s h . l p r o j / D o c u m e n t s / M i c r o s o f t   U s e r   D a t a / 
 	 	 O f f i c e   2 0 1 1   I d e n t i t i e s "   f o l d e r . 
 	 	 
 	 	 N e w   u s e r s   o n   a   m a c h i n e   w i l l   h a v e   t h e   p r e - c o n f i g u r e d   M a i n   I d e n t i t y 
 	 	 f o l d e r   c o p i e d   t o   t h e i r   h o m e   f o l d e r s   t h e   f i r s t   t i m e   t h e y   l o g   i n   t o   a   c o m p u t e r . 
 	 	 
 	 	 T h e   f i r s t   t i m e   t h e y   l a u n c h   O u t l o o k ,   t h e   " E x c h a n g e   S e t u p "   s c h e d u l e 
 	 	 w i l l   r u n   t h e   s c r i p t . 
 	 	 
 	 	 T h e   s c r i p t   w i l l   d i s a b l e   t h e   S c h e d u l e   o n c e   i t   h a s   r u n   a n d   w i l l   s e t   O u t l o o k 
 	 	 t o   w o r k   o n l i n e . 
 	     
 	     
 T h i s   s c r i p t   a s s u m e s   t h e   u s e r ' s   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " L a s t ,   F i r s t " , 
 b u t   i s   e a s i l y   m o d i f i e d   i f   t h e   f u l l   n a m e   i s   i n   t h e   f o r m   o f   " F i r s t   L a s t " . 
 I t   w o r k s   e s p e c i a l l y   w e l l   i f   t h e   M a c   i s   b o u n d   t o   A c t i v e   D i r e c t o r y   w h e r e 
 t h e   u s e r ' s   s h o r t   n a m e   w i l l   m a t c h   h i s   l o g i n   n a m e .   O p t i o n a l l y ,   a   d s c l   c o m m a n d 
 c a n   b e   u s e d   t o   p u l l   t h e   u s e r ' s   E M a i l A d d r e s s   f r o m   a   d i r e c t o r y   s e r v i c e . 
 
   
  
 l     ��������  ��  ��        l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��    * $ Begin network and server properties     �   H   B e g i n   n e t w o r k   a n d   s e r v e r   p r o p e r t i e s      l     ��  ��    0 *------------------------------------------     �   T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        j     �� �� 0 usekerberos useKerberos  m     ��
�� boovfals     !   l     �� " #��   " A ; Set this property to true only if Macs in your environment    # � $ $ v   S e t   t h i s   p r o p e r t y   t o   t r u e   o n l y   i f   M a c s   i n   y o u r   e n v i r o n m e n t !  % & % l     �� ' (��   ' %  are bound to Active Directory.    ( � ) ) >   a r e   b o u n d   t o   A c t i v e   D i r e c t o r y . &  * + * l     �� , -��   , > 8 Kerberos support works only if your network is properly    - � . . p   K e r b e r o s   s u p p o r t   w o r k s   o n l y   i f   y o u r   n e t w o r k   i s   p r o p e r l y +  / 0 / l     �� 1 2��   1   configured.    2 � 3 3    c o n f i g u r e d . 0  4 5 4 l     ��������  ��  ��   5  6 7 6 j    �� 8�� 0 kerberosrealm kerberosRealm 8 m     9 9 � : :  e x a m p l e . c o m 7  ; < ; l     �� = >��   = 8 2 For most Kerberos environments the Kerberos realm    > � ? ? d   F o r   m o s t   K e r b e r o s   e n v i r o n m e n t s   t h e   K e r b e r o s   r e a l m <  @ A @ l     �� B C��   B 2 , will be the same as the E-mail domain name.    C � D D X   w i l l   b e   t h e   s a m e   a s   t h e   E - m a i l   d o m a i n   n a m e . A  E F E l     �� G H��   G D > This property is used only if the userKerberos property above    H � I I |   T h i s   p r o p e r t y   i s   u s e d   o n l y   i f   t h e   u s e r K e r b e r o s   p r o p e r t y   a b o v e F  J K J l     �� L M��   L  	 is true.    M � N N    i s   t r u e . K  O P O l     ��������  ��  ��   P  Q R Q j    �� S�� 0 
domainname 
domainName S m     T T � U U  e x a m p l e . c o m R  V W V l     �� X Y��   X   example: "domain.com"    Y � Z Z ,   e x a m p l e :   " d o m a i n . c o m " W  [ \ [ l     ��������  ��  ��   \  ] ^ ] j   	 �� _��  0 exchangeserver ExchangeServer _ m   	 
 ` ` � a a ( e x c h a n g e . e x a m p l e . c o m ^  b c b l     �� d e��   d + % example: "ExchangeServer.domain.com"    e � f f J   e x a m p l e :   " E x c h a n g e S e r v e r . d o m a i n . c o m " c  g h g l     ��������  ��  ��   h  i j i j    �� k�� >0 extendedexchangeserveraddress ExtendedExchangeServerAddress k m    ��
�� boovfals j  l m l l     �� n o��   n < 6 Are you connecting to an Exchange Server 2007 server?    o � p p l   A r e   y o u   c o n n e c t i n g   t o   a n   E x c h a n g e   S e r v e r   2 0 0 7   s e r v e r ? m  q r q l     �� s t��   s 7 1 If so, you may need to use the extended address:    t � u u b   I f   s o ,   y o u   m a y   n e e d   t o   u s e   t h e   e x t e n d e d   a d d r e s s : r  v w v l     �� x y��   x = 7 "ExchangeServer.domain.com/exchange/user@example.com".    y � z z n   " E x c h a n g e S e r v e r . d o m a i n . c o m / e x c h a n g e / u s e r @ e x a m p l e . c o m " . w  { | { l     �� } ~��   } ; 5 Set this to "true" if you need the extended address.    ~ �   j   S e t   t h i s   t o   " t r u e "   i f   y o u   n e e d   t h e   e x t e n d e d   a d d r e s s . |  � � � l     ��������  ��  ��   �  � � � j    �� ��� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL � m    ��
�� boovtrue �  � � � l     �� � ���   � 9 3 If Exchange users will connect to a backend server    � � � � f   I f   E x c h a n g e   u s e r s   w i l l   c o n n e c t   t o   a   b a c k e n d   s e r v e r �  � � � l     �� � ���   � A ; within the same network then SSL is probably not required.    � � � � v   w i t h i n   t h e   s a m e   n e t w o r k   t h e n   S S L   i s   p r o b a b l y   n o t   r e q u i r e d . �  � � � l     �� � ���   � 4 . OWA connections will probably require SSL and    � � � � \   O W A   c o n n e c t i o n s   w i l l   p r o b a b l y   r e q u i r e   S S L   a n d �  � � � l     �� � ���   � * $ this setting should be set to true.    � � � � H   t h i s   s e t t i n g   s h o u l d   b e   s e t   t o   t r u e . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� .0 exchangeserversslport ExchangeServerSSLPort � m    ����� �  � � � l     �� � ���   � 8 2 If ExchangeServerSSL is false set the port to 80.    � � � � d   I f   E x c h a n g e S e r v e r S S L   i s   f a l s e   s e t   t h e   p o r t   t o   8 0 . �  � � � l     �� � ���   � 8 2 If ExchangeServerSSL is true set the port to 443.    � � � � d   I f   E x c h a n g e S e r v e r S S L   i s   t r u e   s e t   t h e   p o r t   t o   4 4 3 . �  � � � l     �� � ���   � 4 . Use a different port number only if specified    � � � � \   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   s p e c i f i e d �  � � � l     �� � ���   �   by your administrator.    � � � � .   b y   y o u r   a d m i n i s t r a t o r . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� "0 directoryserver DirectoryServer � m     � � � � �  g c . e x a m p l e . c o m �  � � � l     �� � ���   � 0 * example: "GlobalCatalogServer.domain.com"    � � � � T   e x a m p l e :   " G l o b a l C a t a l o g S e r v e r . d o m a i n . c o m " �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 , OWA connections cannot use the OWA address.    � � � � X   O W A   c o n n e c t i o n s   c a n n o t   u s e   t h e   O W A   a d d r e s s . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication � m    ��
�� boovtrue �  � � � l     �� � ���   � 7 1 This will almost always be true. The LDAP server    � � � � b   T h i s   w i l l   a l m o s t   a l w a y s   b e   t r u e .   T h e   L D A P   s e r v e r �  � � � l     �� � ���   � < 6 in a Windows network will be a Global Catalog server,    � � � � l   i n   a   W i n d o w s   n e t w o r k   w i l l   b e   a   G l o b a l   C a t a l o g   s e r v e r , �  � � � l     �� � ���   � 2 , which is separate from the Exchange Server.    � � � � X   w h i c h   i s   s e p a r a t e   f r o m   t h e   E x c h a n g e   S e r v e r . �  � � � l     �� � ���   � 2 , OWA connections can not use the OWA address    � � � � X   O W A   c o n n e c t i o n s   c a n   n o t   u s e   t h e   O W A   a d d r e s s �  � � � l     �� � ���   �   with this setting.    � � � � &   w i t h   t h i s   s e t t i n g . �  � � � l     ��������  ��  ��   �  � � � j    �� ��� 80 directoryserverrequiresssl DirectoryServerRequiresSSL � m    ��
�� boovfals �  � � � l     �� � ���   � 9 3 If Exchange users will connect to a backend server    � � � � f   I f   E x c h a n g e   u s e r s   w i l l   c o n n e c t   t o   a   b a c k e n d   s e r v e r �  � � � l     �� � ���   � 3 - within the same network then SSL is probably    � � � � Z   w i t h i n   t h e   s a m e   n e t w o r k   t h e n   S S L   i s   p r o b a b l y �  � � � l     �� � ���   � 0 * not required. OWA connections can not use    � � � � T   n o t   r e q u i r e d .   O W A   c o n n e c t i o n s   c a n   n o t   u s e �  � � � l     �� � ���   � ) # the OWA address with this setting.    � � � � F   t h e   O W A   a d d r e s s   w i t h   t h i s   s e t t i n g . �  � � � l     ��������  ��  ��   �  � � � j     �� �� 00 directoryserversslport DirectoryServerSSLPort  m    ����� �  l     ����   C = If DirectoryServerRequiresSSL is false set the port to 3268.    � z   I f   D i r e c t o r y S e r v e r R e q u i r e s S S L   i s   f a l s e   s e t   t h e   p o r t   t o   3 2 6 8 .  l     ��	��   B < If DirectoryServerRequiresSSL is true set the port to 3269.   	 �

 x   I f   D i r e c t o r y S e r v e r R e q u i r e s S S L   i s   t r u e   s e t   t h e   p o r t   t o   3 2 6 9 .  l     ����   4 . Use a different port number only if specified    � \   U s e   a   d i f f e r e n t   p o r t   n u m b e r   o n l y   i f   s p e c i f i e d  l     ����     by your administrator.    � .   b y   y o u r   a d m i n i s t r a t o r .  l     ��������  ��  ��    l     ����   D > OWA connections cannot use the OWA address with this setting.    � |   O W A   c o n n e c t i o n s   c a n n o t   u s e   t h e   O W A   a d d r e s s   w i t h   t h i s   s e t t i n g .  l     ��������  ��  ��    j   ! %�� �� >0 directoryservermaximumresults DirectoryServerMaximumResults  m   ! $����� !"! l     ��#$��  # E ? When searching the Global Address list, this number determines   $ �%% ~   W h e n   s e a r c h i n g   t h e   G l o b a l   A d d r e s s   l i s t ,   t h i s   n u m b e r   d e t e r m i n e s" &'& l     ��()��  ( 0 * the maximum number of entries to display.   ) �** T   t h e   m a x i m u m   n u m b e r   o f   e n t r i e s   t o   d i s p l a y .' +,+ l     ��������  ��  ��  , -.- j   & *��/�� 60 directoryserversearchbase DirectoryServerSearchBase/ m   & )00 �11  . 232 l     ��45��  4 + % example: "cn=users,dc=domain,dc=com"   5 �66 J   e x a m p l e :   " c n = u s e r s , d c = d o m a i n , d c = c o m "3 787 l     ��������  ��  ��  8 9:9 l     ��;<��  ; @ : Search base will be optional in many environments and its   < �== t   S e a r c h   b a s e   w i l l   b e   o p t i o n a l   i n   m a n y   e n v i r o n m e n t s   a n d   i t s: >?> l     ��@A��  @ D > format will vary greatly. Experiment first connecting without   A �BB |   f o r m a t   w i l l   v a r y   g r e a t l y .   E x p e r i m e n t   f i r s t   c o n n e c t i n g   w i t h o u t? CDC l     ��EF��  E , & entering the search base information.   F �GG L   e n t e r i n g   t h e   s e a r c h   b a s e   i n f o r m a t i o n .D HIH l     ��������  ��  ��  I JKJ j   + -��L�� 40 getemailaddressusingdscl getEMailAddressUsingDSCLL m   + ,��
�� boovfalsK MNM l     ��OP��  O ? 9 If the Macs are connected to a directory service such as   P �QQ r   I f   t h e   M a c s   a r e   c o n n e c t e d   t o   a   d i r e c t o r y   s e r v i c e   s u c h   a sN RSR l     ��TU��  T B < Active Directory, then they can probably use dscl to return   U �VV x   A c t i v e   D i r e c t o r y ,   t h e n   t h e y   c a n   p r o b a b l y   u s e   d s c l   t o   r e t u r nS WXW l     �YZ�  Y F @ the current user's E-mail address instead of trying to parse it   Z �[[ �   t h e   c u r r e n t   u s e r ' s   E - m a i l   a d d r e s s   i n s t e a d   o f   t r y i n g   t o   p a r s e   i tX \]\ l     �~^_�~  ^   from the display name.    _ �`` 0   f r o m   t h e   d i s p l a y   n a m e .  ] aba l     �}�|�{�}  �|  �{  b cdc l     �zef�z  e < 6 Using dscl is preferred. Otherwise, set this to false   f �gg l   U s i n g   d s c l   i s   p r e f e r r e d .   O t h e r w i s e ,   s e t   t h i s   t o   f a l s ed hih l     �yjk�y  j ; 5 and set the next property to the appropriate number.   k �ll j   a n d   s e t   t h e   n e x t   p r o p e r t y   t o   t h e   a p p r o p r i a t e   n u m b e r .i mnm l     �x�w�v�x  �w  �v  n opo j   . 0�uq�u 0 emailformat emailFormatq m   . /�t�t p rsr l     �stu�s  t E ? When dscl is unavailable to determine a user's E-mail address,   u �vv ~   W h e n   d s c l   i s   u n a v a i l a b l e   t o   d e t e r m i n e   a   u s e r ' s   E - m a i l   a d d r e s s ,s wxw l     �ryz�r  y C = it can be parsed using the display name of the user's login.   z �{{ z   i t   c a n   b e   p a r s e d   u s i n g   t h e   d i s p l a y   n a m e   o f   t h e   u s e r ' s   l o g i n .x |}| l     �q~�q  ~ 2 , Set the next two properties to the examples    ��� X   S e t   t h e   n e x t   t w o   p r o p e r t i e s   t o   t h e   e x a m p l e s} ��� l     �p���p  � 4 . that correspond to your organization's setup.   � ��� \   t h a t   c o r r e s p o n d   t o   y o u r   o r g a n i z a t i o n ' s   s e t u p .� ��� l     �o�n�m�o  �n  �m  � ��� l     �l���l  � 0 * 1: E-mail format is first.last@domain.com   � ��� T   1 :   E - m a i l   f o r m a t   i s   f i r s t . l a s t @ d o m a i n . c o m� ��� l     �k���k  � + % 2: E-mail format is first@domain.com   � ��� J   2 :   E - m a i l   f o r m a t   i s   f i r s t @ d o m a i n . c o m� ��� l     �j���j  � O I 3: E-mail format is flast@domain.com (first name initial plus last name)   � ��� �   3 :   E - m a i l   f o r m a t   i s   f l a s t @ d o m a i n . c o m   ( f i r s t   n a m e   i n i t i a l   p l u s   l a s t   n a m e )� ��� l     �i���i  � / ) 4: E-mail format is shortName@domain.com   � ��� R   4 :   E - m a i l   f o r m a t   i s   s h o r t N a m e @ d o m a i n . c o m� ��� l     �h�g�f�h  �g  �f  � ��� j   1 3�e��e 0 displayname displayName� m   1 2�d�d � ��� l     �c���c  � 0 * 1: Display name displays as "Last, First"   � ��� T   1 :   D i s p l a y   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "� ��� l     �b���b  � / ) 2: Display name displays as "First Last"   � ��� R   2 :   D i s p l a y   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l     �a�`�_�a  �`  �_  � ��� j   4 8�^��^ (0 verifyemailaddress verifyEMailAddress� m   4 5�]
�] boovfals� ��� l     �\���\  � > 8 If set to "true", a dialog will ask the user to confirm   � ��� p   I f   s e t   t o   " t r u e " ,   a   d i a l o g   w i l l   a s k   t h e   u s e r   t o   c o n f i r m� ��� l     �[���[  �   his E-mail address.   � ��� (   h i s   E - m a i l   a d d r e s s .� ��� l     �Z�Y�X�Z  �Y  �X  � ��� j   9 =�W��W *0 verifyserveraddress verifyServerAddress� m   9 :�V
�V boovfals� ��� l     �U���U  � > 8 If set to "true", a dialog will ask the user to confirm   � ��� p   I f   s e t   t o   " t r u e " ,   a   d i a l o g   w i l l   a s k   t h e   u s e r   t o   c o n f i r m� ��� l     �T���T  � #  his Exchange server address.   � ��� :   h i s   E x c h a n g e   s e r v e r   a d d r e s s .� ��� l     �S�R�Q�S  �R  �Q  � ��� j   > B�P��P 0 	scheduled  � m   > ?�O
�O boovfals� ��� l     �N���N  � + % Exchange accounts don't require that   � ��� J   E x c h a n g e   a c c o u n t s   d o n ' t   r e q u i r e   t h a t� ��� l     �M���M  � 4 . the "Send & Receive All" schedule be enabled.   � ��� \   t h e   " S e n d   &   R e c e i v e   A l l "   s c h e d u l e   b e   e n a b l e d .� ��� l     �L���L  � . ( Change this setting to true if the user   � ��� P   C h a n g e   t h i s   s e t t i n g   t o   t r u e   i f   t h e   u s e r� ��� l     �K���K  � 7 1 will also be connecting to POP or IMAP accounts.   � ��� b   w i l l   a l s o   b e   c o n n e c t i n g   t o   P O P   o r   I M A P   a c c o u n t s .� ��� l     �J�I�H�J  �I  �H  � ��� j   C I�G��G 0 errormessage errorMessage� m   C F�� ��� � S e t u p   o f   y o u r   a c c o u n t   f a i l e d .   P l e a s e   c o n t a c t   y o u r   w o r k s t a t i o n   a d m i n i s t r a t o r   f o r   a s s i s t a n c e .� ��� l     �F���F  � 2 , Customize this error message for your users   � ��� X   C u s t o m i z e   t h i s   e r r o r   m e s s a g e   f o r   y o u r   u s e r s� ��� l     �E���E  � #  if their account setup fails   � ��� :   i f   t h e i r   a c c o u n t   s e t u p   f a i l s� ��� l     �D�C�B�D  �C  �B  � ��� l     �A���A  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �@���@  �   End server properties   � ��� ,   E n d   s e r v e r   p r o p e r t i e s� � � l     �?�?   0 *------------------------------------------    � T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   l     �>�=�<�>  �=  �<    l     �;	�;   0 *------------------------------------------   	 �

 T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     �:�:     Begin get user name    � (   B e g i n   g e t   u s e r   n a m e  l     �9�9   0 *------------------------------------------    � T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l     �8�7�6�8  �7  �6    l     �5�5   W Q User information is pulled from the account settings of the current user account    � �   U s e r   i n f o r m a t i o n   i s   p u l l e d   f r o m   t h e   a c c o u n t   s e t t i n g s   o f   t h e   c u r r e n t   u s e r   a c c o u n t  l     �4�3�2�4  �3  �2    l     �1�0  O     !"! k    ## $%$ r    &'& n    	()( 1    	�/
�/ 
pnam) 1    �.
�. 
curu' o      �-�- 0 	shortname 	shortName% *�,* r    +,+ n    -.- 1    �+
�+ 
fnam. 1    �*
�* 
curu, o      �)�) 0 fullname fullName�,  " m     //�                                                                                  sevs  alis    �  Macintosh HD               �&|H+  ���System Events.app                                              ��L�7��        ����  	                CoreServices    �&�j      �8'7    ����ǧ�Ǧ  :Macintosh HD:System:Library:CoreServices:System Events.app  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �1  �0   010 l     �(�'�&�(  �'  �&  1 232 l     �%45�%  4 0 *------------------------------------------   5 �66 T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -3 787 l     �$9:�$  9   End get user name   : �;; $   E n d   g e t   u s e r   n a m e8 <=< l     �#>?�#  > 0 *------------------------------------------   ? �@@ T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -= ABA l     �"�!� �"  �!  �   B CDC l     �EF�  E 0 *------------------------------------------   F �GG T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -D HIH l     �JK�  J %  Begin email address properties   K �LL >   B e g i n   e m a i l   a d d r e s s   p r o p e r t i e sI MNM l     �OP�  O 0 *------------------------------------------   P �QQ T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -N RSR l     ����  �  �  S TUT l  �V��V Z   �WXY�W =   Z[Z o    �� 40 getemailaddressusingdscl getEMailAddressUsingDSCL[ m    �
� boovtrueX k    ,\\ ]^] r    *_`_ I   (�a�
� .sysoexecTEXT���     TEXTa b    $bcb b    "ded m     ff �gg ( d s c l   .   - r e a d   / U s e r s /e o     !�� 0 	shortname 	shortNamec m   " #hh �ii `   E M a i l A d d r e s s   |   a w k   ' B E G I N   { F S = " :   " }   { p r i n t   $ 2 } '�  ` o      �� 0 emailaddress emailAddress^ j�j l  + +����  �  �  �  Y klk F   / Bmnm =  / 6opo o   / 4�� 0 emailformat emailFormatp m   4 5�� n =  9 @qrq o   9 >�
�
 0 displayname displayNamer m   > ?�	�	 l sts k   E zuu vwv l  E E����  �  �  w xyx l  E E�z{�  z D > first.last@domain.com and full name displays as "Last, First"   { �|| |   f i r s t . l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "y }~} l  E E����  �  �  ~ � r   E J��� m   E F�� ���  ,  � n     ��� 1   G I�
� 
txdl� 1   F G� 
�  
ascr� ��� r   K Q��� n   K O��� 4   L O���
�� 
citm� m   M N���� � o   K L���� 0 fullname fullName� o      ���� 0 	firstname 	firstName� ��� r   R Z��� n   R V��� 4   S V���
�� 
citm� m   T U���� � o   R S���� 0 fullname fullName� o      ���� 0 lastname lastName� ��� r   [ b��� m   [ ^�� ���  � n     ��� 1   _ a��
�� 
txdl� 1   ^ _��
�� 
ascr� ��� r   c x��� b   c v��� b   c p��� b   c l��� b   c h��� o   c d���� 0 	firstname 	firstName� m   d g�� ���  .� o   h k���� 0 lastname lastName� m   l o�� ���  @� o   p u���� 0 
domainname 
domainName� o      ���� 0 emailaddress emailAddress� ���� l  y y��������  ��  ��  ��  t ��� F   } ���� =  } ���� o   } ����� 0 emailformat emailFormat� m   � ����� � =  � ���� o   � ����� 0 displayname displayName� m   � ����� � ��� k   � ��� ��� l  � ���������  ��  ��  � ��� l  � �������  � C = first.last@domain.com and full name displays as "First Last"   � ��� z   f i r s t . l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l  � ���������  ��  ��  � ��� r   � ���� m   � ��� ���   � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� n   � ���� 4   � ����
�� 
citm� m   � ����� � o   � ����� 0 fullname fullName� o      ���� 0 	firstname 	firstName� ��� r   � ���� n   � ���� 4   � ����
�� 
citm� m   � ����� � o   � ����� 0 fullname fullName� o      ���� 0 lastname lastName� ��� r   � ���� m   � ��� ���  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 	firstname 	firstName� m   � ��� ���  .� o   � ����� 0 lastname lastName� m   � ��� ���  @� o   � ����� 0 
domainname 
domainName� o      ���� 0 emailaddress emailAddress� ���� l  � ���������  ��  ��  ��  � ��� F   � ���� =  � ���� o   � ����� 0 emailformat emailFormat� m   � ����� � =  � ���� o   � ����� 0 displayname displayName� m   � ����� � ��� k   ��� ��� l  � ���������  ��  ��  � ��� l  � ��� ��    ? 9 first@domain.com and full name displays as "Last, First"    � r   f i r s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "�  l  � ���������  ��  ��    r   � � m   � �		 �

  ,   n      1   � ���
�� 
txdl 1   � ���
�� 
ascr  r   � � n   � � 4   � ���
�� 
citm m   � �����  o   � ����� 0 fullname fullName o      ���� 0 	firstname 	firstName  r   � � n   � � 4   � ���
�� 
citm m   � �����  o   � ����� 0 fullname fullName o      ���� 0 lastname lastName  r   � m   � � �     n     !"! 1   ���
�� 
txdl" 1   � ���
�� 
ascr #$# r  %&% b  '(' b  )*) o  ���� 0 	firstname 	firstName* m  ++ �,,  @( o  ���� 0 
domainname 
domainName& o      ���� 0 emailaddress emailAddress$ -��- l ��������  ��  ��  ��  � ./. F  (010 = 232 o  ���� 0 emailformat emailFormat3 m  ���� 1 = &454 o  $���� 0 displayname displayName5 m  $%���� / 676 k  +Z88 9:9 l ++��������  ��  ��  : ;<; l ++��=>��  = = 7 first@domain.com if full name displays as "First Last"   > �?? n   f i r s t @ d o m a i n . c o m   i f   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "< @A@ l ++��������  ��  ��  A BCB r  +2DED m  +.FF �GG   E n     HIH 1  /1��
�� 
txdlI 1  ./��
�� 
ascrC JKJ r  39LML n  37NON 4  47��P
�� 
citmP m  56���� O o  34���� 0 fullname fullNameM o      ���� 0 	firstname 	firstNameK QRQ r  :BSTS n  :>UVU 4  ;>��W
�� 
citmW m  <=���� V o  :;���� 0 fullname fullNameT o      ���� 0 lastname lastNameR XYX r  CJZ[Z m  CF\\ �]]  [ n     ^_^ 1  GI��
�� 
txdl_ 1  FG��
�� 
ascrY `a` r  KXbcb b  KVded b  KPfgf o  KL���� 0 	firstname 	firstNameg m  LOhh �ii  @e o  PU���� 0 
domainname 
domainNamec o      ���� 0 emailaddress emailAddressa j��j l YY��������  ��  ��  ��  7 klk F  ]pmnm = ]dopo o  ]b���� 0 emailformat emailFormatp m  bc���� n = gnqrq o  gl���� 0 displayname displayNamer m  lm���� l sts k  s�uu vwv l ss��������  ��  ��  w xyx l ss��z{��  z ? 9 flast@domain.com and full name displays as "Last, First"   { �|| r   f l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "y }~} l ss��������  ��  ��  ~ � r  sz��� m  sv�� ���  ,  � n     ��� 1  wy��
�� 
txdl� 1  vw��
�� 
ascr� ��� r  {���� n  {��� 4  |���
�� 
citm� m  }~���� � o  {|���� 0 fullname fullName� o      ���� 0 	firstname 	firstName� ��� r  ����� n  ����� 4  �����
�� 
citm� m  ������ � o  ���� 0 fullname fullName� o      �~�~ 0 lastname lastName� ��� r  ����� m  ���� ���  � n     ��� 1  ���}
�} 
txdl� 1  ���|
�| 
ascr� ��� r  ����� b  ����� b  ����� b  ����� l ����{�z� n  ����� 4  ���y�
�y 
cha � m  ���x�x � o  ���w�w 0 	firstname 	firstName�{  �z  � o  ���v�v 0 lastname lastName� m  ���� ���  @� o  ���u�u 0 
domainname 
domainName� o      �t�t 0 emailaddress emailAddress� ��s� l ���r�q�p�r  �q  �p  �s  t ��� F  ����� = ����� o  ���o�o 0 emailformat emailFormat� m  ���n�n � = ����� o  ���m�m 0 displayname displayName� m  ���l�l � ��� k  ���� ��� l ���k�j�i�k  �j  �i  � ��� l ���h���h  � > 8 flast@domain.com and full name displays as "First Last"   � ��� p   f l a s t @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "� ��� l ���g�f�e�g  �f  �e  � ��� r  ����� m  ���� ���   � n     ��� 1  ���d
�d 
txdl� 1  ���c
�c 
ascr� ��� r  ����� n  ����� 4  ���b�
�b 
citm� m  ���a�a � o  ���`�` 0 fullname fullName� o      �_�_ 0 	firstname 	firstName� ��� r  ����� n  ����� 4  ���^�
�^ 
citm� m  ���]�] � o  ���\�\ 0 fullname fullName� o      �[�[ 0 lastname lastName� ��� r  ����� m  ���� ���  � n     ��� 1  ���Z
�Z 
txdl� 1  ���Y
�Y 
ascr� ��� r  ����� l ����X�W� b  ����� b  ����� b  ����� n  ����� 4  ���V�
�V 
cha � m  ���U�U � o  ���T�T 0 	firstname 	firstName� o  ���S�S 0 lastname lastName� m  ���� ���  @� o  ���R�R 0 
domainname 
domainName�X  �W  � o      �Q�Q 0 emailaddress emailAddress� ��P� l ���O�N�M�O  �N  �M  �P  � ��� F  ���� = ���� o  ��L�L 0 emailformat emailFormat� m  �K�K � = ��� o  �J�J 0 displayname displayName� m  �I�I � ��� k  F�� ��� l �H�G�F�H  �G  �F  � ��� l �E �E    C = shortName@domain.com and full name displays as "Last, First"    � z   s h o r t N a m e @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " L a s t ,   F i r s t "�  l �D�C�B�D  �C  �B    r   m  		 �

  ,   n      1  �A
�A 
txdl 1  �@
�@ 
ascr  r  % n  # 4   #�?
�? 
citm m  !"�>�>  o   �=�= 0 fullname fullName o      �<�< 0 	firstname 	firstName  r  &. n  &* 4  '*�;
�; 
citm m  ()�:�:  o  &'�9�9 0 fullname fullName o      �8�8 0 lastname lastName  r  /6 m  /2 �     n     !"! 1  35�7
�7 
txdl" 1  23�6
�6 
ascr #$# r  7D%&% b  7B'(' b  7<)*) o  78�5�5 0 	shortname 	shortName* m  8;++ �,,  @( o  <A�4�4 0 
domainname 
domainName& o      �3�3 0 emailaddress emailAddress$ -�2- l EE�1�0�/�1  �0  �/  �2  � ./. F  I^010 = IR232 o  IN�.�. 0 emailformat emailFormat3 m  NQ�-�- 1 = U\454 o  UZ�,�, 0 displayname displayName5 m  Z[�+�+ / 6�*6 k  a�77 898 l aa�)�(�'�)  �(  �'  9 :;: l aa�&<=�&  < B < shortName@domain.com and full name displays as "First Last"   = �>> x   s h o r t N a m e @ d o m a i n . c o m   a n d   f u l l   n a m e   d i s p l a y s   a s   " F i r s t   L a s t "; ?@? l aa�%�$�#�%  �$  �#  @ ABA r  ahCDC m  adEE �FF   D n     GHG 1  eg�"
�" 
txdlH 1  de�!
�! 
ascrB IJI r  ioKLK n  imMNM 4  jm� O
�  
citmO m  kl�� N o  ij�� 0 fullname fullNameL o      �� 0 	firstname 	firstNameJ PQP r  pxRSR n  ptTUT 4  qt�V
� 
citmV m  rs�� U o  pq�� 0 fullname fullNameS o      �� 0 lastname lastNameQ WXW r  y�YZY m  y|[[ �\\  Z n     ]^] 1  }�
� 
txdl^ 1  |}�
� 
ascrX _`_ r  ��aba b  ��cdc b  ��efe o  ���� 0 	shortname 	shortNamef m  ��gg �hh  @d o  ���� 0 
domainname 
domainNameb o      �� 0 emailaddress emailAddress` i�i l ������  �  �  �  �*  �  �  �  U jkj l     ����  �  �  k lml l     �no�  n 0 *------------------------------------------   o �pp T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -m qrq l     �st�  s #  End email address properties   t �uu :   E n d   e m a i l   a d d r e s s   p r o p e r t i e sr vwv l     �
xy�
  x 0 *------------------------------------------   y �zz T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -w {|{ l     �	���	  �  �  | }~} l     ���   0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -~ ��� l     ����  � , & Exchange Server 2007 extended address   � ��� L   E x c h a n g e   S e r v e r   2 0 0 7   e x t e n d e d   a d d r e s s� ��� l     ����  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ����  �  �  � ��� l ���� ��� Z  ��������� = ����� o  ������ >0 extendedexchangeserveraddress ExtendedExchangeServerAddress� m  ����
�� boovtrue� r  ����� b  ����� b  ����� o  ������  0 exchangeserver ExchangeServer� m  ���� ���  / e x c h a n g e /� o  ������ 0 emailaddress emailAddress� o      ����  0 exchangeserver ExchangeServer��  ��  �   ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  �   End get user name   � ��� $   E n d   g e t   u s e r   n a m e� ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ������  �   Begin account setup   � ��� (   B e g i n   a c c o u n t   s e t u p� ��� l     ������  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     ��������  ��  ��  � ��� l �o������ Q  �o���� k  �F�� ��� l ����������  ��  ��  � ��� Z  ��������� = ����� o  ������ (0 verifyemailaddress verifyEMailAddress� m  ����
�� boovtrue� k  ���� ��� r  ����� I ������
�� .sysodlogaskr        TEXT� m  ���� ��� b P l e a s e   v e r i f y   t h a t   y o u r   e m a i l   a d d r e s s   i s   c o r r e c t .� ����
�� 
dtxt� o  ������ 0 emailaddress emailAddress� ����
�� 
disp� m  ������ � ����
�� 
btns� J  ���� ��� m  ���� ���  C a n c e l� ���� m  ���� ���  O K��  � �����
�� 
dflt� J  ���� ���� m  ���� ���  O K��  ��  � o      ���� 0 verifyemail verifyEmail� ���� r  ����� n  ����� 1  ����
�� 
ttxt� o  ������ 0 verifyemail verifyEmail� o      ���� 0 emailaddress emailAddress��  ��  ��  � ��� l ����������  ��  ��  � ��� Z  �A������� = � ��� o  ������ *0 verifyserveraddress verifyServerAddress� m  ����
�� boovtrue� k  =�� ��� r  /��� I +����
�� .sysodlogaskr        TEXT� m     � p P l e a s e   v e r i f y   t h a t   y o u r   E x c h a n g e   S e r v e r   n a m e   i s   c o r r e c t .� ��
�� 
dtxt o  	����  0 exchangeserver ExchangeServer ��
�� 
disp m  ����  ��
�� 
btns J   	
	 m   �  C a n c e l
 �� m   �  O K��   ����
�� 
dflt J   % �� m   # �  O K��  ��  � o      ���� 0 verifyserver verifyServer� �� r  0= n  07 1  37��
�� 
ttxt o  03���� 0 verifyserver verifyServer o      ����  0 exchangeserver ExchangeServer��  ��  ��  �  l BB��������  ��  ��    O  BD k  HC   !"! I HM������
�� .miscactvnull��� ��� null��  ��  " #$# r  N�%&% I N�����'
�� .corecrel****      � null��  ' ��()
�� 
kocl( m  RU��
�� 
Eact) ��*��
�� 
prdt* l 	X�+����+ K  X�,, ��-.
�� 
pnam- b  Y^/0/ m  Y\11 �22  M a i l b o x   -  0 o  \]���� 0 fullname fullName. ��34
�� 
unme3 o  ab���� 0 	shortname 	shortName4 ��56
�� 
fnam5 o  cd���� 0 fullname fullName6 ��78
�� 
emad7 o  gh���� 0 emailaddress emailAddress8 ��9:
�� 
host9 o  kp����  0 exchangeserver ExchangeServer: ��;<
�� 
usss; o  sx���� 60 exchangeserverrequiresssl ExchangeServerRequiresSSL< ��=>
�� 
port= o  {����� .0 exchangeserversslport ExchangeServerSSLPort> ��?@
�� 
ExLS? o  ������ "0 directoryserver DirectoryServer@ ��AB
�� 
LDAuA o  ������ N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthenticationB ��CD
�� 
LDSLC o  ������ 80 directoryserverrequiresssl DirectoryServerRequiresSSLD ��EF
�� 
LDMXE o  ������ >0 directoryservermaximumresults DirectoryServerMaximumResultsF ��G��
�� 
LDSBG o  ������ 60 directoryserversearchbase DirectoryServerSearchBase��  ��  ��  ��  & o      ���� (0 newexchangeaccount newExchangeAccount$ HIH l ����������  ��  ��  I JKJ l ����LM��  L e _ The following lines enable Kerberos support if the userKerberos property above is set to true.   M �NN �   T h e   f o l l o w i n g   l i n e s   e n a b l e   K e r b e r o s   s u p p o r t   i f   t h e   u s e r K e r b e r o s   p r o p e r t y   a b o v e   i s   s e t   t o   t r u e .K OPO l ����������  ��  ��  P QRQ Z  ��ST����S = ��UVU o  ������ 0 usekerberos useKerberosV m  ����
�� boovtrueT k  ��WW XYX r  ��Z[Z o  ������ 0 usekerberos useKerberos[ n      \]\ 1  ����
�� 
Kerb] o  ������ (0 newexchangeaccount newExchangeAccountY ^��^ r  ��_`_ b  ��aba b  ��cdc o  ������ 0 	shortname 	shortNamed m  ��ee �ff  @b o  ������ 0 kerberosrealm kerberosRealm` n      ghg 1  ����
�� 
ExGIh o  ������ (0 newexchangeaccount newExchangeAccount��  ��  ��  R iji l ����~�}�  �~  �}  j klk l ���|mn�|  m Q K The Me Contact record is now automatically created with the first account.   n �oo �   T h e   M e   C o n t a c t   r e c o r d   i s   n o w   a u t o m a t i c a l l y   c r e a t e d   w i t h   t h e   f i r s t   a c c o u n t .l pqp l ���{rs�{  r < 6 Set the first and last name of the Me Contact record.   s �tt l   S e t   t h e   f i r s t   a n d   l a s t   n a m e   o f   t h e   M e   C o n t a c t   r e c o r d .q uvu l ���z�y�x�z  �y  �x  v wxw r  ��yzy o  ���w�w 0 	firstname 	firstNamez n      {|{ 1  ���v
�v 
pFrN| 1  ���u
�u 
meCnx }~} r  � � o  ���t�t 0 lastname lastName� n      ��� 1  ���s
�s 
pLsN� 1  ���r
�r 
meCn~ ��� r  ��� K  �� �q��
�q 
radd� o  �p�p 0 emailaddress emailAddress� �o��n
�o 
type� m  �m
�m EATyeWrk�n  � n      ��� 1  �l
�l 
EmAd� 1  �k
�k 
meCn� ��� l �j�i�h�j  �i  �h  � ��� l �g���g  � R L We're done. Set the schedules back to normal and set Outlook to work online   � ��� �   W e ' r e   d o n e .   S e t   t h e   s c h e d u l e s   b a c k   t o   n o r m a l   a n d   s e t   O u t l o o k   t o   w o r k   o n l i n e� ��� l �f�e�d�f  �e  �d  � ��� r  ,��� o  �c�c 0 	scheduled  � n      ��� 1  '+�b
�b 
ScEn� 4  '�a�
�a 
cSch� m  #&�� ��� $ S e n d   &   R e c e i v e   A l l� ��� I -9�`��_
�` .coredelonull���     obj � 4  -5�^�
�^ 
cSch� m  14�� ���  E x c h a n g e   S e t u p�_  � ��� r  :A��� m  :;�]
�] boovfals� 1  ;@�\
�\ 
wkOf� ��[� l BB�Z�Y�X�Z  �Y  �X  �[   m  BE��                                                                                  OPIM  alis    �  Macintosh HD               �&|H+  �t�Microsoft Outlook.app                                          �ەȚs�        ����  	                Microsoft Office 2011     �&�j      Ț�F    �t����  EMacintosh HD:Applications:Microsoft Office 2011:Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��   ��W� l EE�V�U�T�V  �U  �T  �W  � R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  � k  No�� ��� l NN�P�O�N�P  �O  �N  � ��� I Nm�M��
�M .sysodlogaskr        TEXT� o  NS�L�L 0 errormessage errorMessage� �K��
�K 
disp� m  VW�J�J � �I��
�I 
btns� J  Z_�� ��H� m  Z]�� ���  O K�H  � �G��F
�G 
dflt� J  bg�� ��E� m  be�� ���  O K�E  �F  � ��D� l nn�C�B�A�C  �B  �A  �D  ��  ��  � ��� l     �@�?�>�@  �?  �>  � ��� l     �=���=  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l     �<���<  �   End account setup   � ��� $   E n d   a c c o u n t   s e t u p� ��;� l     �:���:  � 0 *------------------------------------------   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�;       �9��8 9 T `�7�6�5 ��4�3�2�10�0�/�.�-�,�+���9  � �*�)�(�'�&�%�$�#�"�!� �����������* 0 usekerberos useKerberos�) 0 kerberosrealm kerberosRealm�( 0 
domainname 
domainName�'  0 exchangeserver ExchangeServer�& >0 extendedexchangeserveraddress ExtendedExchangeServerAddress�% 60 exchangeserverrequiresssl ExchangeServerRequiresSSL�$ .0 exchangeserversslport ExchangeServerSSLPort�# "0 directoryserver DirectoryServer�" N0 %directoryserverrequiresauthentication %DirectoryServerRequiresAuthentication�! 80 directoryserverrequiresssl DirectoryServerRequiresSSL�  00 directoryserversslport DirectoryServerSSLPort� >0 directoryservermaximumresults DirectoryServerMaximumResults� 60 directoryserversearchbase DirectoryServerSearchBase� 40 getemailaddressusingdscl getEMailAddressUsingDSCL� 0 emailformat emailFormat� 0 displayname displayName� (0 verifyemailaddress verifyEMailAddress� *0 verifyserveraddress verifyServerAddress� 0 	scheduled  � 0 errormessage errorMessage
� .aevtoappnull  �   � ****
�8 boovfals
�7 boovfals
�6 boovtrue�5�
�4 boovtrue
�3 boovfals�2��1�
�0 boovfals�/ �. 
�- boovfals
�, boovfals
�+ boovfals� �������
� .aevtoappnull  �   � ****� k    o�� �� T�� ��� ���  �  �  �  � f/�����fh��
�	�������������	+F\h��������	+E[g���� ��������������� �����������1����������������������������e����������������������������������
� 
curu
� 
pnam� 0 	shortname 	shortName
� 
fnam� 0 fullname fullName
� .sysoexecTEXT���     TEXT�
 0 emailaddress emailAddress
�	 
bool
� 
ascr
� 
txdl
� 
citm� 0 	firstname 	firstName� 0 lastname lastName
� 
cha � 
� 
dtxt
�  
disp
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT�� 0 verifyemail verifyEmail
�� 
ttxt�� 0 verifyserver verifyServer
�� .miscactvnull��� ��� null
�� 
kocl
�� 
Eact
�� 
prdt
�� 
unme
�� 
emad
�� 
host
�� 
usss
�� 
port
�� 
ExLS
�� 
LDAu
�� 
LDSL
�� 
LDMX
�� 
LDSB�� 
�� .corecrel****      � null�� (0 newexchangeaccount newExchangeAccount
�� 
Kerb
�� 
ExGI
�� 
meCn
�� 
pFrN
�� 
pLsN
�� 
radd
�� 
type
�� EATyeWrk
�� 
EmAd
�� 
cSch
�� 
ScEn
�� .coredelonull���     obj 
�� 
wkOf��  ��  �� �p� *�,�,E�O*�,�,E�UOb  e  ��%�%j E�OPYgb  k 	 b  k �& :���,FO��l/E�O��k/E` Oa ��,FO�a %_ %a %b  %E�OPYb  k 	 b  l �& <a ��,FO��k/E�O��l/E` Oa ��,FO�a %_ %a %b  %E�OPY�b  l 	 b  k �& 4a ��,FO��l/E�O��k/E` Oa ��,FO�a %b  %E�OPY�b  l 	 b  l �& 4a ��,FO��k/E�O��l/E` Oa ��,FO�a %b  %E�OPY9b  m 	 b  k �& =a ��,FO��l/E�O��k/E` Oa ��,FO�a  k/_ %a !%b  %E�OPY �b  m 	 b  l �& =a "��,FO��k/E�O��l/E` Oa #��,FO�a  k/_ %a $%b  %E�OPY �b  a % 	 b  k �& 4a &��,FO��l/E�O��k/E` Oa '��,FO�a (%b  %E�OPY Mb  a % 	 b  l �& 4a )��,FO��k/E�O��l/E` Oa *��,FO�a +%b  %E�OPY hOb  e  b  a ,%�%Ec  Y hO�b  e  7a -a .�a /la 0a 1a 2lva 3a 4kva 5 6E` 7O_ 7a 8,E�Y hOb  e  ?a 9a .b  a /la 0a :a ;lva 3a <kva 5 6E` =O_ =a 8,Ec  Y hOa > �*j ?O*a @a Aa B�a C�%a D���a E�a Fb  a Gb  a Hb  a Ib  a Jb  a Kb  	a Lb  a Mb  a Na % OE` POb   e  &b   _ Pa Q,FO�a R%b  %_ Pa S,FY hO�*a T,a U,FO_ *a T,a V,FOa W�a Xa Ya %*a T,a Z,FOb  *a [a \/a ],FO*a [a ^/j _Of*a `,FOPUOPW (X a bb  a /la 0a ckva 3a dkva e 6OPascr  ��ޭ