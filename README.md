# POC

## Flavors BuildTypes

Para configurar flavors no seu projeto recomendo que assista o seguinte [vídeo](https://www.youtube.com/watch?v=Vhm1Cv2uPko).

Além dos Flavors é possível utilizar o Dart-Define na linha de comando para passar valores como está feito neste projeto. Caso não tenha necessidade de criar versões diferentes do app, para cada flavor o dart-define é uma maneira mais simples de resolver esse problema, abaixo está um exemplo de como declarar uma variável e como recupera-la.

        Command line:

        flutter run --dart-define=ENV=FLUTTER_APP_ENV --dart-define=APP_NAME=FLUTTER_APP_NAME

        Flutter App:
        
        const ENV = String.fromEnvironment('ENV'); // FLUTTER_APP_ENV
        const APP_NAME = String.fromEnvironment('APP_NAME'); // FLUTTER_APP_NAME


## Fastlane

Este projeto tem finalidade de mostrar como configurar o fastlane para fazer deploy automático no firebase APP_DISTRIBUTION.

Para configurar o fastlane em sua maquina a documentação do mesmo indica que seja feita com o  Ruby e o Bundler.

Todo o passo a passo foi montado a partir da documentação do [Fastlane](https://docs.fastlane.tools/).

1 - Instalar Ruby

Windows: 

* Baixe o executável [Aqui](https://www.ruby-lang.org/pt/documentation/installation/#rubyinstaller) e instale.

MacOS 

* Instale o [HomeBrew](https://brew.sh/index_pt-br)
* Rode o comando "brew install ruby"

2 - Instalar Bundler

* Após instalar o Ruby rode o comando: 'gem install bundler'

3 - Configuração

 * Crie um arquivo ./Gemfile na pasta raíz de cada projeto android / ios com o conteúdo

        source "https://rubygems.org"

        gem "fastlane"

* Rode o comando 'bundle update'. Não esqueça de adicionar os novos arquivos para o controle de versão.

4 - Instalar FASTLANE 

 * MacOS: Rode o comando 'brew install fastlane'
 * MacOS/Windows/Linux: rode o comando 'sudo gem install fastlane'
 * Rode o comando 'fastlane init', será solicitado algumas informações, basta preenche-las e continuar.
 * Rode o comando 'fastlane test' para ver o status e se possui algum erro.


Feito isso uma pasta "fastlane" será criada dentro do android/app ou ios/_______, iremos configurar o deploy automático modificando o arquivo Fastfile dentro delas.

ANDROID SETUP

1- Adicione o plugin do firebase app_distribution

* Rode o comando "fastlane add_plugin firebase_app_distribution"
* Modifique o arquivo Fastfile seguindo o exemplo neste projeto.

* Para executasr alguma lane criada basta rodar o comando "fastlane nome_da_lane"

Este [vídeo](https://www.youtube.com/watch?v=yZNFC6N4tkU) mostra na prática boa parte do que foi feito aqui.

 Possíveis erros:

 * JAVA_HOME: verifique se possui o java instalado e se o mesmo está nas variáveis de ambiente, cada ambiente possui uma forma diferente de verificar e adicionar.





