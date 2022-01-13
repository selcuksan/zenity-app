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


## Uygulamanın Özellikleri

## Açılış Ekranı

 
### -i parametresi 
      Aynı anda birden fazla dosya indirmek istiyorsanız, -i parametresini ve ardından
      indirilecek URL'lerin listesini içeren bir dosyanın yolunu kullanın.
      Her URL'nin ayrı bir satırda olması gerekir.

      $ wget -i indirmeLinkleri.txt
 
### -O parametresi
      İndirilen dosyayı farklı bir adla kaydetmek için -O parametresini ve ardından seçilen adı girin.

      $ wget -O farkliAd https://github.com/gohugoio/hugo/archive/master.zip
### -P parametresi

      Varsayılan olarak, wget indirilen dosyayı geçerli çalışma dizinine kaydeder.
      Dosyayı belirli bir konuma kaydetmek için -P parametresini kullanın.

      $ wget -P /mnt/iso http://mirrors.mit.edu/centos/7/isos/x86_64/CentOS-7-x86_64-Minimal-1804.iso

### -b parametresi

      Arka planda indirmek için -b seçeneğini kullanın.

      $ wget -b https://download.opensuse.org/tumbleweed/iso/openSUSE-Tumbleweed-DVD-x86_64-Current.iso

### --no-check-certificate parametresi

      Geçersiz bir SSL sertifikasına sahip bir ana bilgisayardan HTTPS üzerinden dosya indirmek istiyorsanız
      --no-check-certificate parametresini kullanın.

      $ wget --no-check-certificate https://domain-with-invalid-ss.com


