<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>nenazhimai.com</title>
    <style>
        body {
            background-color: #111;
            color: #fff;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        button {
            padding: 20px 40px;
            font-size: 24px;
            background-color: #e60000;
            border: none;
            border-radius: 12px;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body>

    <h1>nenazhimai.com</h1>
    <button onclick="playFart()">НЕ НАЖИМАЙ!</button>

    <audio id="fartSound">
        <source src="https://www.myinstants.com/media/sounds/fart-with-reverb.mp3" type="audio/mpeg">
        Ваш браузер не поддерживает аудио элемент.
    </audio>

    <script>
        function playFart() {
            document.getElementById('fartSound').play();
        }
    </script>

</body>
</html>
