<%-- 
    Document   : cuestionario
    Created on : 25/05/2022, 05:20:01 AM
    Author     : 52552
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="IMG/LOGO.png">
    <link rel="stylesheet" href="CSS/form.css">
    <title>Cuestionario</title>
</head>
<body>
    <%

            //primero vamos a saber si tiene una sesion
            String correo = "";
            String contra = "";
            HttpSession sesionusu = request.getSession();
            if(sesionusu.getAttribute("usuario") == null){
        
        %>

            <jsp:forward page="index.html">
                <jsp:param name="error" value="es obbligatorio tener una sesion activa"></jsp:param>
            </jsp:forward>
        
        <%

            } else { 

                //si hay sesion
                correo = (String) sesionusu.getAttribute("correo");
                contra = (String) sesionusu.getAttribute("contra");

            %>
    <p>
        El siguiente cuestionario nos ayudará a darnos una buena idea acerca de tu perfil empático, en base a él
        nosotros vamos a indicarte tus puntos de mejora y posteriormente medir tu progreso, porfavor respondelo
        honestamente con las respuestas que mejor te describan.
    </p>
    <br>

    <form action="EscalasIniciales" id="formulario" method="post">
        <div class="wrap">
            <div>
                <h2>1. Sueño y fantaseo, bastante a menudo, acerca de las cosas que me podrían suceder</h2>
                <div>
                    <input type="radio" name="pregunta1" value="1" id="1">
                    <label for="1">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta1" value="2" id="2">
                    <label for="2">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta1" value="3" id="3">
                    <label for="3">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta1" value="4" id="4">
                    <label for="4">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta1" value="5" id="5">
                    <label for="5">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>2. A menudo tengo sentimientos tiernos y de preocupación hacia la gente menos afortunada que yo</h2>
                <div>
                    <input type="radio" name="pregunta2" value="1" id="6">
                    <label for="6">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta2" value="2" id="7">
                    <label for="7">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta2" value="3" id="8">
                    <label for="8">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta2" value="4" id="9">
                    <label for="9">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta2" value="5" id="10">
                    <label for="10">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>3. A menudo encuentro difícil ver las cosas desde el punto de vista de otra persona</h2>
                <div>
                    <input type="radio" name="pregunta3" value="5" id="11">
                    <label for="11">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta3" value="4" id="12">
                    <label for="12">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta3" value="3" id="13">
                    <label for="13">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta3" value="2" id="14">
                    <label for="14">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta3" value="1" id="15">
                    <label for="15">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>4. A veces no me siento muy preocupado por otras personas cuando tienen problemas</h2>
                <div>
                    <input type="radio" name="pregunta4" value="5" id="16">
                    <label for="16">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta4" value="4" id="17">
                    <label for="17">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta4" value="3" id="18">
                    <label for="18">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta4" value="2" id="19">
                    <label for="19">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta4" value="1" id="20">
                    <label for="20">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>5. Verdaderamente me identifico con los sentimientos de los personajes de una novela</h2>
                <div>
                    <input type="radio" name="pregunta5" value="1" id="21">
                    <label for="21">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta5" value="2" id="22">
                    <label for="22">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta5" value="3" id="23">
                    <label for="23">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta5" value="4" id="24">
                    <label for="24">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta5" value="5" id="25">
                    <label for="25">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>6. En situaciones de emergencia me siento aprensivo e incómodo</h2>
                <div>
                    <input type="radio" name="pregunta6" value="1" id="26">
                    <label for="26">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta6" value="2" id="27">
                    <label for="27">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta6" value="3" id="28">
                    <label for="28">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta6" value="4" id="29">
                    <label for="29">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta6" value="5" id="30">
                    <label for="30">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>7.Soy normalmente objetivo cuando veo una película u obra de teatro y no me involucro completamente</h2>
                <div>
                    <input type="radio" name="pregunta7" value="5" id="31">
                    <label for="31">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta7" value="4" id="32">
                    <label for="32">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta7" value="3" id="33">
                    <label for="33">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta7" value="2" id="34">
                    <label for="34">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta7" value="1" id="35">
                    <label for="35">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>8. Intento tener en cuenta cada una de las partes (opiniones) en un conflicto antes de tomar una decisión</h2>
                <div>
                    <input type="radio" name="pregunta8" value="1" id="36">
                    <label for="36">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta8" value="2" id="37">
                    <label for="37">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta8" value="3" id="38">
                    <label for="38">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta8" value="4" id="39">
                    <label for="39">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta8" value="5" id="40">
                    <label for="40">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>9. Cuando veo que a alguien se le toma el pelo tiendo a protegerlo</h2>
                <div>
                    <input type="radio" name="pregunta9" value="1" id="41">
                    <label for="41">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta9" value="2" id="42">
                    <label for="42">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta9" value="3" id="43">
                    <label for="43">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta9" value="4" id="44">
                    <label for="44">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta9" value="5" id="45">
                    <label for="45">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>10. Normalmente siento desesperanza cuando estoy en medio de una situación muy emotiva</h2>
                <div>
                    <input type="radio" name="pregunta10" value="1" id="46">
                    <label for="46">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta10" value="2" id="47">
                    <label for="47">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta10" value="3" id="48">
                    <label for="48">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta10" value="4" id="49">
                    <label for="49">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta10" value="5" id="50">
                    <label for="50">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>11. A menudo intento comprender mejor a mis amigos imaginándome cómo ven ellos las cosas (poniéndome en su lugar)</h2>
                <div>
                    <input type="radio" name="pregunta11" value="1" id="51">
                    <label for="51">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta11" value="2" id="52">
                    <label for="52">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta11" value="3" id="53">
                    <label for="53">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta11" value="4" id="54">
                    <label for="54">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta11" value="5" id="55">
                    <label for="55">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>12. Resulta raro para mí implicarme completamente en un buen libro o película</h2>
                <div>
                    <input type="radio" name="pregunta12" value="5" id="56">
                    <label for="56">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta12" value="4" id="57">
                    <label for="57">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta12" value="3" id="58">
                    <label for="58">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta12" value="2" id="59">
                    <label for="59">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta12" value="1" id="60">
                    <label for="60">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>13. Cuando veo a alguien herido tiendo a permanecer calmado</h2>
                <div>
                    <input type="radio" name="pregunta13" value="5" id="61">
                    <label for="61">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta13" value="4" id="62">
                    <label for="62">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta13" value="3" id="63">
                    <label for="63">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta13" value="2" id="64">
                    <label for="64">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta13" value="1" id="65">
                    <label for="65">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>14. Las desgracias de otros normalmente no me molestan mucho</h2>
                <div>
                    <input type="radio" name="pregunta14" value="5" id="66">
                    <label for="66">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta14" value="4" id="67">
                    <label for="67">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta14" value="3" id="68">
                    <label for="68">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta14" value="2" id="69">
                    <label for="69">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta14" value="1" id="70">
                    <label for="70">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>15. Si estoy seguro que tengo la razón en algo no pierdo tiempo escuchando los argumentos de los demás</h2>
                <div>
                    <input type="radio" name="pregunta15" value="5" id="71">
                    <label for="71">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta15" value="4" id="72">
                    <label for="72">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta15" value="3" id="73">
                    <label for="73">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta15" value="2" id="74">
                    <label for="74">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta15" value="1" id="75">
                    <label for="75">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>16 . Después de ver una obra de teatro o cine me he sentido como si fuera uno de los personajes</h2>
                <div>
                    <input type="radio" name="pregunta16" value="1" id="76">
                    <label for="76">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta16" value="2" id="77">
                    <label for="77">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta16" value="3" id="78">
                    <label for="78">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta16" value="4" id="79">
                    <label for="79">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta16" value="5" id="80">
                    <label for="80">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>17. Cuando estoy en una situación emocionalmente tensa me asusto</h2>
                <div>
                    <input type="radio" name="pregunta17" value="1" id="81">
                    <label for="81">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta17" value="2" id="82">
                    <label for="82">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta17" value="3" id="83">
                    <label for="83">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta17" value="4" id="84">
                    <label for="84">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta17" value="5" id="85">
                    <label for="85">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>18. Cuando veo a alguien que está siendo tratado injustamente a veces no siento ninguna compasión por él</h2>
                <div>
                    <input type="radio" name="pregunta18" value="1" id="86">
                    <label for="86">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta18" value="2" id="87">
                    <label for="87">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta18" value="3" id="88">
                    <label for="88">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta18" value="4" id="89">
                    <label for="89">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta18" value="5" id="90">
                    <label for="90">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>19. Normalmente soy bastante eficaz al ocuparme de emergencias</h2>
                <div>
                    <input type="radio" name="pregunta19" value="5" id="91">
                    <label for="91">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta19" value="4" id="92">
                    <label for="92">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta19" value="3" id="93">
                    <label for="93">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta19" value="2" id="94">
                    <label for="94">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta19" value="1" id="95">
                    <label for="95">me describe muy bien</label>
                </div>
            </div>
            <br>

            <div>
                <h2>20. A menudo estoy bastante afectado emocionalmente por cosas que veo que ocurren</h2>
                <div>
                    <input type="radio" name="pregunta20" value="1" id="96">
                    <label for="96">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta20" value="2" id="97">
                    <label for="97">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta20" value="3" id="98">
                    <label for="98">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta20" value="4" id="99">
                    <label for="99">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta20" value="5" id="100">
                    <label for="100">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>21. Pienso que hay dos partes para cada cuestión e intento tener en cuenta ambas partes</h2>
                <div>
                    <input type="radio" name="pregunta21" value="1" id="101">
                    <label for="101">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta21" value="2" id="102"> 
                    <label for="102">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta21" value="3" id="103">
                    <label for="103">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta21" value="4" id="104">
                    <label for="104">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta21" value="5" id="105">
                    <label for="105">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>22. Me describiría como una persona bastante sensible</h2>
                <div>
                    <input type="radio" name="pregunta22" value="1" id="106">
                    <label for="106">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta22" value="2" id="107">
                    <label for="107">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta22" value="3" id="108">
                    <label for="108">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta22" value="4" id="109">
                    <label for="109">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta22" value="5" id="110">
                    <label for="110">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>23. Cuando veo una buena película puedo muy fácilmente situarme en el lugar del protagonista</h2>
                <div>
                    <input type="radio" name="pregunta23" value="1" id="111">
                    <label for="111">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta23" value="2" id="112">
                    <label for="112">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta23" value="3" id="114">
                    <label for="114">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta23" value="4" id="115">
                    <label for="115">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta23" value="5" id="116">
                    <label for="116">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>24. Tiendo a perder el control durante las emergencias</h2>
                <div>
                    <input type="radio" name="pregunta24" value="1" id="117">
                    <label for="117">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta24" value="2" id="118">
                    <label for="118">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta24" value="3" id="119">
                    <label for="119">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta24" value="4" id="120">
                    <label for="120">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta24" value="5" id="121">
                    <label for="121">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>25. Cuando estoy disgustado con alguien normalmente intento ponerme en su lugar por un momento</h2>
                <div>
                    <input type="radio" name="pregunta25" value="1" id="122">
                    <label for="122">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta25" value="2" id="123">
                    <label for="123">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta25" value="3" id="124">
                    <label for="124">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta25" value="4" id="125">
                    <label for="125">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta25" value="5" id="126">
                    <label for="126">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>26. Cuando estoy leyendo una historia interesante o una novela imagino cómo me sentiría si los acontecimientos de la historia me sucedieran a mí</h2>
                <div>
                    <input type="radio" name="pregunta26" value="1" id="127">
                    <label for="127">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta26" value="2" id="128">
                    <label for="128">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta26" value="3" id="129">
                    <label for="129">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta26" value="4" id="130">
                    <label for="130">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta26" value="5" id="131">
                    <label for="131">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>27. Cuando veo a alguien que necesita urgentemente ayuda en una emergencia me derrumbo</h2>
                <div>
                    <input type="radio" name="pregunta27" value="1" id="132">
                    <label for="132">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta27" value="2" id="133">
                    <label for="133">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta27" value="3" id="134">
                    <label for="134">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta27" value="4" id="135">
                    <label for="135">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta27" value="5" id="136">
                    <label for="136">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div>
                <h2>28. Antes de criticar a alguien intento imaginar cómo me sentiría si estuviera en su lugar</h2>
                <div>
                    <input type="radio" name="pregunta28" value="1" id="137">
                    <label for="137">no me describe bien</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta28" value="2" id="138">
                    <label for="138">me describe un poco</label>
                </div>
            
                <div>
                    <input type="radio" name="pregunta28" value="3" id="139">
                    <label for="139">me describe bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta28" value="4" id="140">
                    <label for="140">me describe bastante bien</label>
                </div>

                <div>
                    <input type="radio" name="pregunta28" value="5" id="141">
                    <label for="141">me describe muy bien</label>
                </div>
            </div>
            <br>
            <div class="botones"><input type="submit" value="Enviar"> <input type="reset"></div>
        </div>
    </form>
    <%
    
        }
    
    %>
</body>
</html>