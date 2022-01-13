# Zenity-App
      Zenity ve bash script kullanarak yazılmış, wget komutu ile web'den dosya indirmeye yarayan uygulamadır.

## Zenity nedir
      * Zenity çeşitli basit diyalog türleri oluşturmanıza olanak sağlar. 
      Kullanıcıyla grafiksel olarak etkileşime giren basit diyaloglar oluşturmak için Zenity kullanabilirsiniz.

## Wget nedir
      GNU Wget, web'den dosya indirmek için bir komut satırı yardımcı programıdır. 
      Wget ile HTTP, HTTPS ve FTP protokollerini kullanarak dosyaları indirebilirsiniz.
      Wget komutunun temel sözdizimi:

      - wget [parametre] [url]

## Kurulum

#  <h3>Zenity kurulumu</h3>

- <pre class="terminal"><code class="terminal-line" prefix="$">sudo apt-get install zenity</code></pre>

# <h3>Wget kurulumu</h3>

- <pre class="terminal"><code class="terminal-line" prefix="$">sudo apt install wget</code></pre>

# <h3>Zenity-App kurulumu ve çalıştırılması</h3>

- <pre class="terminal"><code class="terminal-line" prefix="$">git clone https://github.com/selcuksan/zenity-app.git</code></pre>


- <pre class="terminal"><code class="terminal-line" prefix="$">cd zenity-app</code></pre>
- <pre class="terminal"><code class="terminal-line" prefix="$">bash zenity-app.sh</code></pre>


# Uygulamanın Özellikleri

## Açılış Ekranı

 ![acilis_ekrani](https://user-images.githubusercontent.com/56341239/149326128-0ab3cdae-0061-467e-a5f8-fac8b3a110c5.PNG)
 
  - Wget komutu hangi parametre ile çalıştırmak isteniyorsa o seçilip devam edilir.

## -i parametresi
      Aynı anda birden fazla dosya indirmek istiyorsanız, -i parametresini ve ardından
      indirilecek URL'lerin listesini içeren bir dosyanın yolunu kullanın.
      Her URL'nin ayrı bir satırda olması gerekir.

      $ wget -i indirmeLinkleri.txt
### Uygulama içi görüntü
 ![i-parametresi](https://user-images.githubusercontent.com/56341239/149326682-0a154416-fbee-488f-9722-4a6f62f05315.PNG)

  - -i parametresi seçildikten sonra indirme linklerinin bulunduğu dosya seçilerek indirme işlemi gerçekleştirilir.

## -O parametresi
      İndirilen dosyayı farklı bir adla kaydetmek için -O parametresini ve ardından seçilen adı girin.

      $ wget -O farkliAd https://github.com/gohugoio/hugo/archive/master.zip
### Uygulama içi görüntü
![farklıİsim-1](https://user-images.githubusercontent.com/56341239/149327343-d0b45619-77b1-4af3-9d08-491348ca0b1c.PNG)

![farklıİsim-2](https://user-images.githubusercontent.com/56341239/149327351-b33e3443-01ba-4d24-b837-c3dab4c7d826.PNG)

  - İndirme linki girildikten sonra dosyaya verilecek yeni isim de istenir ve dosya yeni ismiyle indirilir.

## -P parametresi

      Varsayılan olarak, wget indirilen dosyayı geçerli çalışma dizinine kaydeder.
      Dosyayı belirli bir konuma kaydetmek için -P parametresini kullanın.

      $ wget -P /mnt/iso http://mirrors.mit.edu/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1804.iso
### Uygulama içi görüntü
![p param 1](https://user-images.githubusercontent.com/56341239/149327743-fae96dc4-acaa-4a5d-b311-34d341456d7f.PNG)

![p param dizin sec](https://user-images.githubusercontent.com/56341239/149327758-03f17e56-f93c-4d6d-b048-941fbad299ef.PNG)

- İndirme linki girildikten sonra dosyanın kaydedileceği dizin seçilir. Sonrasında dosya istenilen dizine indirilir.

## -b parametresi

      Arka planda indirmek için -b seçeneğini kullanın.

      $ wget -b https://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-DVD-x86_64-Current.iso
### Uygulama içi görüntü
![b-param 1](https://user-images.githubusercontent.com/56341239/149327907-9f7ac1ee-689d-4962-beb4-5bc623e4407f.PNG)
- Arka planda indirmek için
- 
## --no-check-certificate parametresi

      Geçersiz bir SSL sertifikasına sahip bir ana bilgisayardan HTTPS üzerinden dosya indirmek istiyorsanız
      --no-check-certificate parametresini kullanın.

      $ wget --no-check-certificate https://domain-with-invalid-ss.com
### Uygulama içi görüntü
![sertifika](https://user-images.githubusercontent.com/56341239/149328141-e2749b29-0a8d-413d-b570-d41377373979.PNG)

- Geçersiz bir SSL sertifikasına sahip bir ana bilgisayardan HTTPS üzerinden dosya indirmek istiyorsanız

### Uygulama içi görüntü

![baasarili](https://user-images.githubusercontent.com/56341239/149329623-e66cb4e4-915c-46a4-ab41-38bbb1f33ed0.PNG)
- Başarılı işlem mesajı

![basarisiz](https://user-images.githubusercontent.com/56341239/149329635-f0aa90f4-3eef-4338-909a-72ea1f8a431f.PNG)
- Başarısız işlem mesajı


# Kullanılan Teknolojiler
- Bash Script
- Zenity
- Nano text editor
