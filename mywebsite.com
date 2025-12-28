<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Meu Site</title>

  <!-- ESSENCIAL PRA MOBILE -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <style>
    * {
      box-sizing: border-box;
    }

    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #0f172a;
      color: #ffffff;
      text-align: center;
      min-height: 100vh;

      /* CENTRALIZA */
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: flex-start;

      padding: 16px;
    }

    h1 {
      color: #60a5fa;
      font-size: clamp(1.6rem, 5vw, 2.4rem);
      margin-top: 20px;
    }

    p {
      font-size: clamp(1rem, 4vw, 1.2rem);
      max-width: 600px;
    }

    img {
      width: 100%;
      max-width: 500px;
      height: auto;
      border-radius: 12px;
      margin: 20px 0;
    }

    #google_translate_element {
      margin: 16px 0;
      transform: scale(1.1);
    }
  </style>
</head>

<body>

  <h1>Bem-vindo ao meu site 🌐</h1>
  <p>Este site funciona perfeitamente no celular.</p>

  <!-- TROQUE PELO LINK RAW OU IMGUR -->
  <img src="COLE_AQUI_O_LINK_DA_IMAGEM.png" alt="Imagem do site">

  <!-- TRADUTOR -->
  <div id="google_translate_element"></div>

  <script>
    function googleTranslateElementInit() {
      new google.translate.TranslateElement(
        {
          pageLanguage: 'pt',
          layout: google.translate.TranslateElement.InlineLayout.SIMPLE
        },
        'google_translate_element'
      );
    }
  </script>

  <script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

</body>
</html>
