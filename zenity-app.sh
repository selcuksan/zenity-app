#!/bin/sh

rc=1
while [ $rc -eq 1 ]; do
  ans=$(zenity --info --title="Parametreler" \
      --text 'Parametre Seçin' \
      --ok-label Quit \
      --extra-button Parametresiz \
      --extra-button -i \
      --extra-button -O \
      --extra-button -P \
      --extra-button -b \
      --extra-button --no-check-certificate \
       )
  rc=$?
  
  echo $ans
  if [[ $ans = "Parametresiz" ]]
  then
	echo "Tekli İndirme"
	row=$(zenity --forms --title="Parametresiz İndirme" \
	--text="İndirme Linkini Yapıştırın" \
	--add-entry="Link: ")
	echo $row
	if [[ $row = "" ]]
	then
		zenity --info --title="İndirme Tamamlandı" \
		--text="İndirme Başarısız"
	else
		wget $row
		zenity --info --title="İndirme Tamamlandı" \
		--text="İndirme Başarılı"
	fi
	continue
	
  elif [[ $ans = "-i" ]]
  then
        echo "Çoklu İndirme"
        zenity --file-selection \
	--title "Dosya seç" \
	--filename "\home\${USER}/" \
	--multiple > path.txt
	path=$( cat path.txt )
	if [[ $path = "" ]]
	then
		zenity --info --title="İndirme Tamamlandı" \
		--text="İndirme Başarısız"
	else
		wget -i $path
		zenity --info --title="İndirme Tamamlandı" \
		--text="İndirme Başarılı"
	fi
	continue
  
  elif [[ $ans = "-O" ]]
  then
        echo "Farklı isimle kaydet"
        row=$(zenity --forms --title="Farklı isimle kaydet" \
	--text="İndirme Linkini Yapıştırın" \
	--add-entry="Link: "
	)
	echo $row
	if [[ $row = "" ]]
	then
		zenity --info --title="İndirme Tamamlanamadı" \
		--text="İndirme Başarısız"
	else
		isim=$(zenity --forms --title="Farklı isimle kaydet" \
		--text="Farklı İsimle Kaydet" \
		--add-entry="İsim: ")
		echo $isim
		wget -O $isim $row
		zenity --info --title="İndirme Tamamlandı" \
		--text="İndirme Başarılı"
	fi
	continue
	
  elif [[ $ans = "-P" ]]
  then
        echo "Farklı dizine kaydet"
        row=$(zenity --forms --title="Farklı dizine kaydet" \
	--text="İndirme Linkini Yapıştırın" \
	--add-entry="Link: "
	)
	echo $row
	if [[ $row = "" ]]
	then
		zenity --info --title="İndirme Tamamlanamadı" \
		--text="İndirme Başarısız"
	else
		zenity --file-selection \
		--title "Dizin seç" \
		--filename "\home\${USER}/"\
		--directory > path.txt
		dizin=$( cat path.txt )
		echo $dizin
		wget -P $dizin $row
		zenity --info --title="İndirme Tamamlandı" \
		--text="İndirme Başarılı"
	fi
	continue
  elif [[ $ans = "-b" ]]
  then
	echo "Arkaplanda İndirme"
	row=$(zenity --forms --title="Arkaplanda İndirme" \
	--text="İndirme Linkini Yapıştırın" \
	--add-entry="Link: ")
	echo $row
	if [[ $row = "" ]]
	then
		zenity --info --title="İndirme Tamamlanamadı" \
		--text="İndirme Başarısız"
	else
		wget -b $row
		zenity --info --title="İndirme Tamamlandı" \
		--text="İndirme Başarılı"
	fi
	continue
  elif [[ $ans = "--no-check-certificate" ]]
  then
	echo "Sertifika Kontrolünü Atla"
	row=$(zenity --forms --title="Sertifika Kontrolünü Atla" \
	--text="İndirme Linkini Yapıştırın" \
	--add-entry="Link: ")
	echo $row
	if [[ $row = "" ]]
	then
		zenity --info --title="İndirme Tamamlanamadı" \
		--text="İndirme Başarısız"
	else
		wget --no-check-certificate $row
		zenity --info --title="İndirme Tamamlandı" \
		--text="İndirme Başarılı"
	fi
	continue
	
  fi
done

