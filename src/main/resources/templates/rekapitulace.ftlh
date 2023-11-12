[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<main>
    <h1>Registrace úspěšná</h1>
    <form class="formular" action="/" method="post">
        <label for="jmeno" class="radek">Jméno:</label>
        <span>${form.jmeno}</span><br>

        <label for="prijmeni" class="radek">Příjmení:</label>
        <span>${form.prijmeni}</span><br>

        <label for="datumNarozeni" class="radek">Datum narození:</label>
        <span>${form.datumNarozeni}</span><br>

        <label for="pohlavi" class="radek">Pohlaví:</label>
        <span>${form.pohlavi}</span><br>

        <label for="turnus" class="radek">Turnus:</label>
        <span>${form.turnus}</span><br>

        <label for="email" class="radek">E-mail na rodiče:</label>
        <span>${form.email}</span><br>

        <label for="telefon" class="radek">Telefon na rodiče:</label>
        <span>${form.telefon}</span>

    </form>
</main>
</body>
</html>
