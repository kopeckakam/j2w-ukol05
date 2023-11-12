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
    <h1>Registrace na letní dětský tábor</h1>
    <form class="formular" action="/" method="post">
        <label for="jmeno" class="radek">Jméno:</label>
        [@spring.formInput path="form.jmeno" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="prijmeni" class="radek">Příjmení:</label>
        [@spring.formInput path="form.prijmeni" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="datumNarozeni" class="radek">Datum narození:</label>
        [@spring.formInput path="form.datumNarozeni" fieldType="date"/]

        [@spring.bind "form.vek"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="pohlavi" class="radek">Pohlaví:</label>
        <div>
            <input type="radio" id="pohlavi:divka" name="pohlavi" value="dívka">
            <label for="pohlavi:divka">dívka</label>
        </div>
        <div>
            <input type="radio" id="pohlavi:chlapec" name="pohlavi" value="chlapec">
            <label for="pohlavi:chlapec">chlapec</label>
        </div>
        [@spring.bind "form.pohlavi"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="turnus" class="radek">Turnus:</label>
        <div>
            <input type="radio" id="turnus-1" name="turnus" value="turnus-1">
            <label for="turnus-1">turnus-1: 5. až 11. července</label>
        </div>
        <div>
            <input type="radio" id="turnus-2" name="turnus" value="turnus-2">
            <label for="turnus-2">turnus-2: 12. až 18. července</label>
        </div>
        <div>
            <input type="radio" id="turnus-3" name="turnus" value="turnus-3">
            <label for="turnus-3">turnus-3: 19. až 25. července</label>
        </div>
        [@spring.bind "form.turnus"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>


        <label for="email" class="radek">E-mail na rodiče:</label>
        [@spring.formInput path="form.email"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="telefon" class="radek">Telefon na rodiče:</label>
        [@spring.formInput path="form.telefon"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Objednat</button>
        </div>
    </form>
</main>
</body>
</html>
