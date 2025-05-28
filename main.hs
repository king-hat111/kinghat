title("kinghat")
seticon("logocircle.png")
setbackground("#1a1a1a")
setbackground("back.webm")
variable(#czymoznazmienickursor, "true")
convertunits("30px", "vw", #a)
convertunits("5vh", "vw", #b)
math(a + "+" + b, #odsuniecienaglowka)
enableverticalscrolling()

variable(#polskiczyangielski, "polski")

variable(#wrapped, "w")

variable(#czymoznazmienickursor, "true")

loop
{
 if(czymoznazmienickursor + "=" + "true")
 {
  changecursor("default")
 }
}

function StworzPasekNawigacyjny()
{
  html("<nav>")
  createblurobject("PasekNawigacyjny", "8vh", "100vw", "left: 0px", "top: 0vh", "rgba(252, 248, 250, 0.25)", "4")
  createimage("logo", "logocircle.png", "5vh", "5vh", "left: 1vw", "top: <4vh", "logo", "5")
  createobject("niewidocznyklonloga", "5vh", "5vh", "left: 1vw", "top: <4vh", "rgba(252, 248, 250, 0", "5")
  createtext("Naglowek", "kinghat", "4vh", "white", "UbuntuTitle.ttf", "left: 130%", "top: <50%","none","none","none", "5")
  naglowekdlaniewidomychinfo()
  createtext("LinkDoZmianyJezyka", "JĘZYK/LANGUAGE", "2vh", "white", "InterBold.ttf", "right: 2vw", "top: <4vh","NajechanoNaLinkZmianyJezyka()","PrzestanoNajezdzacNaLinkZmianyJezyka()","OtworzOknoZmianyJezykaZiksem()", "5")
  attachtothescreen("PasekNawigacyjny")
  connectobjects("niewidocznyklonloga", "Naglowek")
  connectobjects("PasekNawigacyjny", "logo, niewidocznyklonloga, LinkDoZmianyJezyka")
  html("</nav>")
}

StworzPasekNawigacyjny()


function NajechanoNaPrzyciskZobaczMojeProjekty()
{
  changetextcolor("TekstWprzyciskuZobaczMojeProjekty", "rgb(0, 207, 255)", "0.3s")
  changeobjectcolor("PrzyciskZobaczMojeProjekty", "rgba(245, 49, 150, 0)", "0.3s")
  changecursor("pointer")
  variable(#czymoznazmienickursor, "false")
}

function PrzestanoNajezdzacNaPrzyciskZobaczMojeProjekty()
{
  changetextcolor("TekstWprzyciskuZobaczMojeProjekty", "white", "0.5s")
  changeobjectcolor("PrzyciskZobaczMojeProjekty", "#105966", "0.5s")
  variable(#czymoznazmienickursor, "true")
}

function ZobaczMojeProjekty()
{
  scrolltoobject("tekstsekcjizprojektami", "smooth")
}

function NajechanoNaPrzyciskPobierzProjekt1()
{
  if (wrapped + "=" + "true")
  {
    changecursor("pointer")
    variable(#czymoznazmienickursor, "false")
    changeobjectsize("PobierzProjekt1", "14%", "78%", "0.2s")
  }
  else
  {
    changecursor("pointer")
    variable(#czymoznazmienickursor, "false")
    changeobjectsize("PobierzProjekt1", "11%", "63%", "0.2s")
  }
}

function PrzestanoNajezdzacNaPrzyciskPobierzProjekt1()
{
  if (wrapped + "=" + "true")
  {
    variable(#czymoznazmienickursor, "true")
    changeobjectsize("PobierzProjekt1", "12%", "75%", "0.2s")
  }
  else
  {
    variable(#czymoznazmienickursor, "true")
    changeobjectsize("PobierzProjekt1", "8%", "60%", "0.2s")
  }
}

function PobierzProjektPierwszy()
{
  movetopage("thiswindow", "EncherScriptIDE.zip")
}

function NajechanoNaPrzyciskPobierzProjekt2()
{
  if (wrapped + "=" + "true")
  {
    changecursor("pointer")
    variable(#czymoznazmienickursor, "false")
    changeobjectsize("PobierzProjekt2", "14%", "78%", "0.2s")
  }
  else
  {
    changecursor("pointer")
    variable(#czymoznazmienickursor, "false")
    changeobjectsize("PobierzProjekt2", "11%", "63%", "0.2s")
  }
}

function PrzestanoNajezdzacNaPrzyciskPobierzProjekt2()
{
  if (wrapped + "=" + "true")
  {
    variable(#czymoznazmienickursor, "true")
    changeobjectsize("PobierzProjekt2", "12%", "75%", "0.2s")
  }
  else
  {
    variable(#czymoznazmienickursor, "true")
    changeobjectsize("PobierzProjekt2", "8%", "60%", "0.2s")
  }
}

function PobierzProjektDrugi()
{
  movetopage("thiswindow", "3dLasers.zip")
}


function StworzStroneGlownaPoPolsku()
{
  html("<main>")
  html("<div id='NapisyStronyGlownej' style='display:flex;flex-direction:column;align-items:center;text-align:center;'><h1 style='font-size:11vmin;font-weight:bold;line-height:1.2;margin:0;text-transform:uppercase;letter-spacing:5px;'><div style='display:block;margin-bottom:2vmin;color:transparent;-webkit-text-stroke:2px rgb(131,130,130);'>Witaj</div><div style='display:block;margin-bottom:2vmin;color:transparent;-webkit-text-stroke:2px rgb(131,130,130);white-space:nowrap;'>Na&nbsp;Stronie</div><div style='display:block;margin-bottom:2vmin;color:white;white-space:nowrap;'>king hat-a</div></h1><p style='font-size:clamp(2vmin, 3vmin, 1.3rem);;margin-top:2vmin;color:#d0d0d0;text-transform:uppercase;text-align:center;max-width:100%;word-break:break-word;'>Wszystkie projekty na tej stronie zostały stworzone przez Bartosza Świąteckiego, znanego w internecie jako king hat</p></div>")
  moveobject("NapisyStronyGlownej", "left: <50vw", "top: <49vh")
  checkobjectsize("NapisyStronyGlownej", "vh", #wysokoscnapisowstronyglownej, #szerokoscnapisowstronyglownej)
  checkobjectshift("NapisyStronyGlownej", "vh", #przesuniecienapisowstronyglownejodlewej, #przesuniecienapisowstronyglownejodgory)
  convertunits("3vmin", "vh", #mojeprzesuniecieprzyciskuzobaczmojeprojekty)
  math(wysokoscnapisowstronyglownej + "+" + przesuniecienapisowstronyglownejodgory + "+" + mojeprzesuniecieprzyciskuzobaczmojeprojekty, #odsuniecieprzyciskuzobaczmojeprojekty)
  convertunits(odsuniecieprzyciskuzobaczmojeprojekty + "vh", "px", #odsuniecieprzyciskuzobaczmojeprojektywpx)
  createobject("PrzyciskZobaczMojeProjekty", "clamp(5vmin, 6vh, 80px)", "clamp(40vmin, 30vw, 400px)", "left: <50vw", "top:" + odsuniecieprzyciskuzobaczmojeprojektywpx + "px", "#105966", "0")
  roundobject("PrzyciskZobaczMojeProjekty", "bottomleft: 3.5vmin, bottomright: 3.5vmin, topleft: 3.5vmin, topright: 3.5vmin")
  createbutton("btnzobaczmojeprojekty", "clamp(5vmin, 6vh, 80px)", "clamp(40vmin, 30vw, 400px)", "left: <50%", "top: <50%", "NajechanoNaPrzyciskZobaczMojeProjekty()", "PrzestanoNajezdzacNaPrzyciskZobaczMojeProjekty()", "ZobaczMojeProjekty()", "2")
  addborder("PrzyciskZobaczMojeProjekty", "0.4vmin", "rgb(0, 207, 255)")
  createtext("TekstWprzyciskuZobaczMojeProjekty", "ZOBACZ MOJE PROJEKTY", "2vmin", "white", "EudoxusSans-Bold.ttf", "left: <50%", "top: <50%","NajechanoNaPrzyciskZobaczMojeProjekty()","PrzestanoNajezdzacNaPrzyciskZobaczMojeProjekty()","ZobaczMojeProjekty()", "1")
  connectobjects("PrzyciskZobaczMojeProjekty", "TekstWprzyciskuZobaczMojeProjekty, btnzobaczmojeprojekty")
  html("</main>")

  html("<section>")
  createobject("SekcjaZprojektami", "103vh", "100vw", "left: 0vw", "top: 100vh", "#1a1a1a", "1")
  createobject("KontenerZblokamiProjektow", "60vmin", "100vmin", "left: <50vw", "top: <155vh", "rgba(245, 40, 145, 0)", "2")
  createobject("BlokProjektu1", "60vmin", "45vmin", "left: 0%", "top: 0%", "#292929", "2")
  createobject("BlokProjektu2", "60vmin", "45vmin", "right: 0%", "top: 0%", "#292929", "2")

  createobject("Kolider1", "5vmin", "5vmin", "left: 0vw", "top: <155vh", "rgba(245, 40, 145, 0)", "2")
  createobject("Kolider2", "5vmin", "5vmin", "left: 0vw", "top: <155vh", "rgba(245, 40, 145, 0)", "2")
  createtext("tekstsekcjizprojektami", "Moje projekty", "6vmin", "white", "EudoxusSans-Regular.ttf", "left: <50%", "top: <13%","none","none","none", "3")
  connectobjects("SekcjaZprojektami", "tekstsekcjizprojektami")

  createprojectsbox("BlokProjektu1, BlokProjektu2", "550", #wrapped)

  naglowekwprojektachdlaniewidomychinfo()
  roundobject("BlokProjektu1", "topleft: 3vmin, topright: 3vmin, bottomleft: 3vmin, bottomright: 3vmin")
  roundobject("BlokProjektu2", "topleft: 3vmin, topright: 3vmin, bottomleft: 3vmin, bottomright: 3vmin")
  createobject("tloobrazka", "33vmin", "45vmin", "left: <50%", "top: 0px", "black", "4")
  createimage("obrazprojektu1","project1.jpg", "33vmin", "33vmin", "left: <50%", "top: 0px", "image showing project 1", "3")
  roundobject("tloobrazka", "topleft: 3vmin, topright: 3vmin")
  connectobjects("tloobrazka", "obrazprojektu1")
  connectobjects("BlokProjektu1","tloobrazka")
  createimage("obrazprojektu2","project2.jpg", "33vmin", "45vmin", "left: <50%", "top: 0px", "image showing project 1", "3")
  roundobject("obrazprojektu2", "topleft: 3vmin, topright: 3vmin")
  connectobjects("BlokProjektu2","obrazprojektu2")
  addcss("BlokProjektu1", "box-shadow: 0 6px 12px rgba(0, 0, 0, 0.6),0 0 6px rgba(255, 255, 255, 0.02),inset 0 0 4px rgba(255, 255, 255, 0.04),inset 0 1px 0 rgba(255, 255, 255, 0.08);")
  addcss("BlokProjektu2", "box-shadow: 0 6px 12px rgba(0, 0, 0, 0.6),0 0 6px rgba(255, 255, 255, 0.02),inset 0 0 4px rgba(255, 255, 255, 0.04),inset 0 1px 0 rgba(255, 255, 255, 0.08);")
  createtext("TytulProjektu1", "EncherScript", "3vmin", "white", "EudoxusSans-Bold.ttf", "left: <50%", "top: <60%","none","none","none", "4")
  html("<div id='tekstprojektu1' style='font-size:1.8vmin;color:white;position:absolute;top:70%;left:50%;width:90%;letter-spacing:1px;transform:translate(-50%,-50%);text-align:center;word-wrap:break-word;line-height:1.4;'>Język programowania który łączy prostotę i funkcjonalność!</div>")
  connectobjects("BlokProjektu1", "tekstprojektu1, TytulProjektu1")
  createtext("TytulProjektu2", "Gra 3dLasers", "3vmin", "white", "EudoxusSans-Bold.ttf", "left: <50%", "top: <60%","none","none","none", "4")
  html("<div id='tekstprojektu2' style='font-size:1.8vmin;color:white;position:absolute;top:70%;left:50%;width:90%;letter-spacing:1px;transform:translate(-50%,-50%);text-align:center;word-wrap:break-word;line-height:1.4;'>Gra logiczna, która polega na układaniu laserów w odpowiedni sposób</div>")
  connectobjects("BlokProjektu2", "tekstprojektu2, TytulProjektu2")
  createobject("PobierzProjekt1", "8%", "60%", "left: <50%", "top: <85%", "#105966", "4")
  roundobject("PobierzProjekt1", "bottomleft: 3.5vmin, bottomright: 3.5vmin, topleft: 3.5vmin, topright: 3.5vmin")
  createbutton("btnpobierzprojekt1", "8%", "60%", "left: <50%", "top: <85%", "NajechanoNaPrzyciskPobierzProjekt1()", "PrzestanoNajezdzacNaPrzyciskPobierzProjekt1()", "PobierzProjektPierwszy()", "4")
  addborder("PobierzProjekt1", "0.4vmin", "rgb(0, 207, 255)")
  createtext("TekstWprzyciskuPobierzProjekt1", "Pobierz", "1.6vmin", "white", "EudoxusSans-Bold.ttf", "left: <50%", "top: <50%","NajechanoNaPrzyciskPobierzProjekt1()","PrzestanoNajezdzacNaPrzyciskPobierzProjekt1()","PobierzProjektPierwszy()", "4")
  connectobjects("PobierzProjekt1", "TekstWprzyciskuPobierzProjekt1")
  connectobjects("BlokProjektu1", "PobierzProjekt1, btnpobierzprojekt1")
  createobject("PobierzProjekt2", "8%", "60%", "left: <50%", "top: <85%", "#105966", "4")
  roundobject("PobierzProjekt2", "bottomleft: 3.5vmin, bottomright: 3.5vmin, topleft: 3.5vmin, topright: 3.5vmin")
  createbutton("btnpobierzprojekt2", "8%", "60%", "left: <50%", "top: <85%", "NajechanoNaPrzyciskPobierzProjekt2()", "PrzestanoNajezdzacNaPrzyciskPobierzProjekt2()", "PobierzProjektDrugi()", "4")
  addborder("PobierzProjekt2", "0.4vmin", "rgb(0, 207, 255)")
  createtext("TekstWprzyciskuPobierzProjekt2", "Pobierz", "1.6vmin", "white", "EudoxusSans-Bold.ttf", "left: <50%", "top: <50%","NajechanoNaPrzyciskPobierzProjekt2()","PrzestanoNajezdzacNaPrzyciskPobierzProjekt2()","PobierzProjektDrugi()", "4")
  connectobjects("PobierzProjekt2", "TekstWprzyciskuPobierzProjekt2")
  connectobjects("BlokProjektu2", "PobierzProjekt2, btnpobierzprojekt2")

  html("</section>")

  if (wrapped + "=" + "true")
  {
        changeobjectsize("SekcjaZprojektami", "250vmin", "100vw", "immediately")
    changeobjectsize("PrzyciskZobaczMojeProjekty", "clamp(5vmin, 8vh, 100px)", "clamp(40vmin, 40vw, 420px)", "immediately")
    changeobjectsize("btnzobaczmojeprojekty", "clamp(5vmin, 8vh, 100px)", "clamp(40vmin, 40vw, 420px)", "immediately")
    changetextsize("TekstWprzyciskuZobaczMojeProjekty", "2.6vmin")
    changeobjectsize("BlokProjektu1", "100vmin", "80vmin", "immediately")
      changeobjectsize("tloobrazka", "53vmin", "80vmin", "immediately")
      changeobjectsize("obrazprojektu1", "53vmin", "53vmin", "immediately")
      changeobjectsize("PobierzProjekt1", "12%", "75%", "immediately")
      changeobjectsize("btnpobierzprojekt1", "12%", "75%", "immediately")
      changetextsize("TytulProjektu1", "6vmin")
      changetextsize("tekstprojektu1", "3vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt1", "3.3vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt2", "3.3vmin")
      changeobjectsize("BlokProjektu2", "100vmin", "80vmin", "immediately")
      changeobjectsize("obrazprojektu2", "53vmin", "80vmin", "immediately")
      changeobjectsize("PobierzProjekt2", "12%", "75%", "immediately")
      changeobjectsize("btnpobierzprojekt2", "12%", "75%", "immediately")
      changeimage("obrazprojektu2", "project2wrappedversion.jpg")
      changetextsize("TytulProjektu2", "6vmin")
      changetextsize("tekstprojektu2", "3vmin")
  }
}

function StworzStroneGlownaPoAngielsku()
{
  html("<main>")
  html("<div id='NapisyStronyGlownej' style='display:flex;flex-direction:column;align-items:center;text-align:center;'><h1 style='font-size:7vmin;font-weight:bold;line-height:1.2;margin:0;text-transform:uppercase;letter-spacing:5px;'><div style='display:block;margin-bottom:2vmin;color:transparent;-webkit-text-stroke:2px rgb(131,130,130);'>WELCOME ON</div><div style='display:block;margin-bottom:2vmin;color:transparent;-webkit-text-stroke:2px rgb(131,130,130);white-space:nowrap;'>THE WEBSITE OF</div><div style='display:block;margin-bottom:2vmin;color:white;white-space:nowrap;'>king hat</div></h1><p style='font-size:clamp(0.1rem, 3vmin, 1.3rem);margin-top:2vmin;color:#d0d0d0;text-transform:uppercase;text-align:center;max-width:100%;word-break:break-word;'>All projects on this site were created by Bartosz Świątecki, known online as king hat</p></div>")
  moveobject("NapisyStronyGlownej", "left: <50vw", "top: <49vh")
  checkobjectsize("NapisyStronyGlownej", "vh", #wysokoscnapisowstronyglownej, #szerokoscnapisowstronyglownej)
  checkobjectshift("NapisyStronyGlownej", "vh", #przesuniecienapisowstronyglownejodlewej, #przesuniecienapisowstronyglownejodgory)
  convertunits("3vmin", "vh", #mojeprzesuniecieprzyciskuzobaczmojeprojekty)
  math(wysokoscnapisowstronyglownej + "+" + przesuniecienapisowstronyglownejodgory + "+" + mojeprzesuniecieprzyciskuzobaczmojeprojekty, #odsuniecieprzyciskuzobaczmojeprojekty)
  createobject("PrzyciskZobaczMojeProjekty", "clamp(5vmin, 6vh, 80px)", "clamp(40vmin, 30vw, 400px)", "left: <50vw", "top:" + odsuniecieprzyciskuzobaczmojeprojekty + "vh", "#105966", "0")
  roundobject("PrzyciskZobaczMojeProjekty", "bottomleft: 3.5vmin, bottomright: 3.5vmin, topleft: 3.5vmin, topright: 3.5vmin")
  createbutton("btnzobaczmojeprojekty", "clamp(5vmin, 6vh, 80px)", "clamp(40vmin, 30vw, 400px)", "left: <50%", "top: <50%", "NajechanoNaPrzyciskZobaczMojeProjekty()", "PrzestanoNajezdzacNaPrzyciskZobaczMojeProjekty()", "ZobaczMojeProjekty()", "2")
  addborder("PrzyciskZobaczMojeProjekty", "0.4vmin", "rgb(0, 207, 255)")
  createtext("TekstWprzyciskuZobaczMojeProjekty", "SEE MY PROJECTS", "2vmin", "white", "EudoxusSans-Bold.ttf", "left: <50%", "top: <50%","NajechanoNaPrzyciskZobaczMojeProjekty()","PrzestanoNajezdzacNaPrzyciskZobaczMojeProjekty()","ZobaczMojeProjekty()", "1")
  connectobjects("PrzyciskZobaczMojeProjekty", "TekstWprzyciskuZobaczMojeProjekty, btnzobaczmojeprojekty")
  html("</main>")

  html("<section>")
  createobject("SekcjaZprojektami", "103vh", "100vw", "left: 0vw", "top: 100vh", "#1a1a1a", "1")
  createobject("KontenerZblokamiProjektow", "60vmin", "100vmin", "left: <50vw", "top: <155vh", "rgba(245, 40, 145, 0)", "2")
  createobject("BlokProjektu1", "60vmin", "45vmin", "left: 0%", "top: 0%", "#292929", "2")
  createobject("BlokProjektu2", "60vmin", "45vmin", "right: 0%", "top: 0%", "#292929", "2")

  createobject("Kolider1", "5vmin", "5vmin", "left: 0vw", "top: <155vh", "rgba(245, 40, 145, 0)", "2")
  createobject("Kolider2", "5vmin", "5vmin", "left: 0vw", "top: <155vh", "rgba(245, 40, 145, 0)", "2")
  createtext("tekstsekcjizprojektami", "My projects", "6vmin", "white", "EudoxusSans-Regular.ttf", "left: <50%", "top: <13%","none","none","none", "3")
  connectobjects("SekcjaZprojektami", "tekstsekcjizprojektami")

  createprojectsbox("BlokProjektu1, BlokProjektu2", "550", #wrapped)

  naglowekwprojektachdlaniewidomychinfo()
  roundobject("BlokProjektu1", "topleft: 3vmin, topright: 3vmin, bottomleft: 3vmin, bottomright: 3vmin")
  roundobject("BlokProjektu2", "topleft: 3vmin, topright: 3vmin, bottomleft: 3vmin, bottomright: 3vmin")
  createobject("tloobrazka", "33vmin", "45vmin", "left: <50%", "top: 0px", "black", "4")
  createimage("obrazprojektu1","project1.jpg", "33vmin", "33vmin", "left: <50%", "top: 0px", "image showing project 1", "3")
  roundobject("tloobrazka", "topleft: 3vmin, topright: 3vmin")
  connectobjects("tloobrazka", "obrazprojektu1")
  connectobjects("BlokProjektu1","tloobrazka")
  createimage("obrazprojektu2","project2.jpg", "33vmin", "45vmin", "left: <50%", "top: 0px", "image showing project 1", "3")
  roundobject("obrazprojektu2", "topleft: 3vmin, topright: 3vmin")
  connectobjects("BlokProjektu2","obrazprojektu2")
  addcss("BlokProjektu1", "box-shadow: 0 6px 12px rgba(0, 0, 0, 0.6),0 0 6px rgba(255, 255, 255, 0.02),inset 0 0 4px rgba(255, 255, 255, 0.04),inset 0 1px 0 rgba(255, 255, 255, 0.08);")
  addcss("BlokProjektu2", "box-shadow: 0 6px 12px rgba(0, 0, 0, 0.6),0 0 6px rgba(255, 255, 255, 0.02),inset 0 0 4px rgba(255, 255, 255, 0.04),inset 0 1px 0 rgba(255, 255, 255, 0.08);")
  createtext("TytulProjektu1", "EncherScript", "3vmin", "white", "EudoxusSans-Bold.ttf", "left: <50%", "top: <60%","none","none","none", "4")
  html("<div id='tekstprojektu1' style='font-size:1.8vmin;color:white;position:absolute;top:70%;left:50%;width:90%;letter-spacing:1px;transform:translate(-50%,-50%);text-align:center;word-wrap:break-word;line-height:1.4;'>A programming language that combines simplicity and functionality!</div>")
  connectobjects("BlokProjektu1", "tekstprojektu1, TytulProjektu1")
  createtext("TytulProjektu2", "3dLasers Game", "3vmin", "white", "EudoxusSans-Bold.ttf", "left: <50%", "top: <60%","none","none","none", "4")
  html("<div id='tekstprojektu2' style='font-size:1.8vmin;color:white;position:absolute;top:70%;left:50%;width:90%;letter-spacing:1px;transform:translate(-50%,-50%);text-align:center;word-wrap:break-word;line-height:1.4;'>A logic game where you arrange lasers in the correct way</div>")
  connectobjects("BlokProjektu2", "tekstprojektu2, TytulProjektu2")
  createobject("PobierzProjekt1", "8%", "60%", "left: <50%", "top: <85%", "#105966", "4")
  roundobject("PobierzProjekt1", "bottomleft: 3.5vmin, bottomright: 3.5vmin, topleft: 3.5vmin, topright: 3.5vmin")
  createbutton("btnpobierzprojekt1", "8%", "60%", "left: <50%", "top: <85%", "NajechanoNaPrzyciskPobierzProjekt1()", "PrzestanoNajezdzacNaPrzyciskPobierzProjekt1()", "PobierzProjektPierwszy()", "4")
  addborder("PobierzProjekt1", "0.4vmin", "rgb(0, 207, 255)")
  createtext("TekstWprzyciskuPobierzProjekt1", "Download", "1.6vmin", "white", "EudoxusSans-Bold.ttf", "left: <50%", "top: <50%","NajechanoNaPrzyciskPobierzProjekt1()","PrzestanoNajezdzacNaPrzyciskPobierzProjekt1()","PobierzProjektPierwszy()", "4")
  connectobjects("PobierzProjekt1", "TekstWprzyciskuPobierzProjekt1")
  connectobjects("BlokProjektu1", "PobierzProjekt1, btnpobierzprojekt1")
  createobject("PobierzProjekt2", "8%", "60%", "left: <50%", "top: <85%", "#105966", "4")
  roundobject("PobierzProjekt2", "bottomleft: 3.5vmin, bottomright: 3.5vmin, topleft: 3.5vmin, topright: 3.5vmin")
  createbutton("btnpobierzprojekt2", "8%", "60%", "left: <50%", "top: <85%", "NajechanoNaPrzyciskPobierzProjekt2()", "PrzestanoNajezdzacNaPrzyciskPobierzProjekt2()", "PobierzProjektDrugi()", "4")
  addborder("PobierzProjekt2", "0.4vmin", "rgb(0, 207, 255)")
  createtext("TekstWprzyciskuPobierzProjekt2", "Download", "1.6vmin", "white", "EudoxusSans-Bold.ttf", "left: <50%", "top: <50%","NajechanoNaPrzyciskPobierzProjekt2()","PrzestanoNajezdzacNaPrzyciskPobierzProjekt2()","PobierzProjektDrugi()", "4")
  connectobjects("PobierzProjekt2", "TekstWprzyciskuPobierzProjekt2")
  connectobjects("BlokProjektu2", "PobierzProjekt2, btnpobierzprojekt2")

  html("</section>")

  if (wrapped + "=" + "true")
  {
        changeobjectsize("SekcjaZprojektami", "250vmin", "100vw", "immediately")
    changeobjectsize("PrzyciskZobaczMojeProjekty", "clamp(5vmin, 8vh, 100px)", "clamp(40vmin, 40vw, 420px)", "immediately")
    changeobjectsize("btnzobaczmojeprojekty", "clamp(5vmin, 8vh, 100px)", "clamp(40vmin, 40vw, 420px)", "immediately")
    changetextsize("TekstWprzyciskuZobaczMojeProjekty", "2.6vmin")
    changeobjectsize("BlokProjektu1", "100vmin", "80vmin", "immediately")
      changeobjectsize("tloobrazka", "53vmin", "80vmin", "immediately")
      changeobjectsize("obrazprojektu1", "53vmin", "53vmin", "immediately")
      changeobjectsize("PobierzProjekt1", "12%", "75%", "immediately")
      changeobjectsize("btnpobierzprojekt1", "12%", "75%", "immediately")
      changetextsize("TytulProjektu1", "6vmin")
      changetextsize("tekstprojektu1", "3vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt1", "3.3vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt2", "3.3vmin")
      changeobjectsize("BlokProjektu2", "100vmin", "80vmin", "immediately")
      changeobjectsize("obrazprojektu2", "53vmin", "80vmin", "immediately")
      changeobjectsize("PobierzProjekt2", "12%", "75%", "immediately")
      changeobjectsize("btnpobierzprojekt2", "12%", "75%", "immediately")
      changeimage("obrazprojektu2", "project2wrappedversion.jpg")
      changetextsize("TytulProjektu2", "6vmin")
      changetextsize("tekstprojektu2", "3vmin")
  }
}

StworzStroneGlownaPoPolsku()

onscreensizechange 
{
  
  checkobjectsize("NapisyStronyGlownej", "vh", #wysokoscnapisowstronyglownej, #szerokoscnapisowstronyglownej)
  checkobjectshift("NapisyStronyGlownej", "vh", #przesuniecienapisowstronyglownejodlewej, #przesuniecienapisowstronyglownejodgory)
  convertunits("3vmin", "vh", #mojeprzesuniecieprzyciskuzobaczmojeprojekty)
  math(wysokoscnapisowstronyglownej + "+" + przesuniecienapisowstronyglownejodgory + "+" + mojeprzesuniecieprzyciskuzobaczmojeprojekty, #odsuniecieprzyciskuzobaczmojeprojekty)
  convertunits(odsuniecieprzyciskuzobaczmojeprojekty + "vh", "px", #odsuniecieprzyciskuzobaczmojeprojektywpx)
  moveobjectsmoothly("PrzyciskZobaczMojeProjekty", "left: <50vw", "top: " + odsuniecieprzyciskuzobaczmojeprojektywpx + "px", "0.2s")
}

variable(#doneTrue, "false")
variable(#doneElse, "false")

variable(#lastWrapped, "w")

variable(#przyciskzmianyjezykowheight, "5vmin")
variable(#przyciskzmianyjezykowwdith, "60vmin")
variable(#btnprzyciskuzmianyjezykowheight, "6vmin")
variable(#btnprzyciskuzmianyjezykowwdith, "61vmin")
variable(#tekstprzyciskuzmianyjezykowsize, "2.3vmin")
variable(#odsuniecieprzyciskujezykaangielskiego, "53%")

loop
{
  if (wrapped + "=" + "true")
  {
    if (lastWrapped + "=" + "false")
    {
      changeobjectsize("SekcjaZprojektami", "250vmin", "100vw", "immediately")
      changeobjectsize("PrzyciskZobaczMojeProjekty", "clamp(5vmin, 8vh, 100px)", "clamp(40vmin, 40vw, 420px)", "immediately")
      changeobjectsize("btnzobaczmojeprojekty", "clamp(5vmin, 8vh, 100px)", "clamp(40vmin, 40vw, 420px)", "immediately")
      changetextsize("TekstWprzyciskuZobaczMojeProjekty", "2.6vmin")
      moveobject("tekstsekcjizprojektami", "left: <50%","top: <6%")
      changeobjectsize("BlokProjektu1", "100vmin", "80vmin", "immediately")
      changeobjectsize("tloobrazka", "53vmin", "80vmin", "immediately")
      changeobjectsize("obrazprojektu1", "53vmin", "53vmin", "immediately")
      changeobjectsize("PobierzProjekt1", "12%", "75%", "immediately")
      changeobjectsize("btnpobierzprojekt1", "12%", "75%", "immediately")
      changetextsize("TytulProjektu1", "6vmin")
      changetextsize("tekstprojektu1", "3vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt1", "3.3vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt2", "3.3vmin")
      changeobjectsize("BlokProjektu2", "100vmin", "80vmin", "immediately")
      changeobjectsize("obrazprojektu2", "53vmin", "80vmin", "immediately")
      changeobjectsize("PobierzProjekt2", "12%", "75%", "immediately")
      changeobjectsize("btnpobierzprojekt2", "12%", "75%", "immediately")
      changeimage("obrazprojektu2", "project2wrappedversion.jpg")
      changetextsize("TytulProjektu2", "6vmin")
      changetextsize("tekstprojektu2", "3vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt2", "3.3vmin")
      variable(#przyciskzmianyjezykowheight, "10vmin")
      variable(#przyciskzmianyjezykowwdith, "65vmin")
      variable(#btnprzyciskuzmianyjezykowheight, "11vmin")
      variable(#btnprzyciskuzmianyjezykowwdith, "66vmin")
      variable(#tekstprzyciskuzmianyjezykowsize, "5vmin")
      variable(#tekstokienkajezowsize, "4vmin")
      variable(#odsuniecieprzyciskujezykaangielskiego, "60%")
      variable(#lastWrapped, "true")
    }
    else if (lastWrapped + "=" + "w")
    {
      changeobjectsize("SekcjaZprojektami", "250vmin", "100vw", "immediately")
      changeobjectsize("PrzyciskZobaczMojeProjekty", "clamp(5vmin, 8vh, 100px)", "clamp(40vmin, 40vw, 420px)", "immediately")
      changeobjectsize("btnzobaczmojeprojekty", "clamp(5vmin, 8vh, 100px)", "clamp(40vmin, 40vw, 420px)", "immediately")
      changeobjectsize("BlokProjektu1", "100vmin", "80vmin", "immediately")
      changeobjectsize("tloobrazka", "53vmin", "80vmin", "immediately")
      changeobjectsize("obrazprojektu1", "53vmin", "53vmin", "immediately")
      changeobjectsize("PobierzProjekt1", "12%", "75%", "immediately")
      changeobjectsize("btnpobierzprojekt1", "12%", "75%", "immediately")
      changetextsize("TytulProjektu1", "6vmin")
      changetextsize("tekstprojektu1", "3vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt1", "3.3vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt2", "3.3vmin")
      changeobjectsize("BlokProjektu2", "100vmin", "80vmin", "immediately")
      changeobjectsize("obrazprojektu2", "53vmin", "80vmin", "immediately")
      changeobjectsize("PobierzProjekt2", "12%", "75%", "immediately")
      changeobjectsize("btnpobierzprojekt2", "12%", "75%", "immediately")
      changeimage("obrazprojektu2", "project2wrappedversion.jpg")
      changetextsize("TytulProjektu2", "6vmin")
      changetextsize("tekstprojektu2", "3vmin")
      changetextsize("TekstWprzyciskuZobaczMojeProjekty", "2.6vmin")
      moveobject("tekstsekcjizprojektami", "left: <50%","top: <6%")
      variable(#przyciskzmianyjezykowheight, "10vmin")
      variable(#przyciskzmianyjezykowwdith, "65vmin")
      variable(#btnprzyciskuzmianyjezykowheight, "11vmin")
      variable(#btnprzyciskuzmianyjezykowwdith, "66vmin")
      variable(#tekstprzyciskuzmianyjezykowsize, "5vmin")
      variable(#tekstokienkajezowsize, "4vmin")
      variable(#odsuniecieprzyciskujezykaangielskiego, "60%")
      variable(#lastWrapped, "true")
    }
  }
  else
  {
    if (lastWrapped + "=" + "true")
    {
      changeobjectsize("BlokProjektu1", "60vmin", "45vmin", "immediately")
      changeobjectsize("tloobrazka", "33vmin", "45vmin", "immediately")
      changeobjectsize("obrazprojektu1", "33vmin", "33vmin", "immediately")
      changeobjectsize("PobierzProjekt1", "8%", "60%", "immediately")
      changeobjectsize("btnpobierzprojekt1", "8%", "60%", "immediately")
      changetextsize("TytulProjektu1", "3vmin")
      changetextsize("tekstprojektu1", "1.8vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt1", "1.6vmin")
      changeobjectsize("BlokProjektu2", "60vmin", "45vmin", "immediately")
      changeobjectsize("obrazprojektu2", "33vmin", "45vmin", "immediately")
      changeobjectsize("PobierzProjekt2", "8%", "60%", "immediately")
      changeobjectsize("btnpobierzprojekt2", "8%", "60%", "immediately")
      changeimage("obrazprojektu2", "project2.jpg")
      changetextsize("TytulProjektu2", "3vmin")
      changetextsize("tekstprojektu2", "1.8vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt2", "1.6vmin")
      changeobjectsize("SekcjaZprojektami", "103vh", "100vw", "immediately")
      moveobject("tekstsekcjizprojektami", "left: <50%","top: <13%")
      changeobjectsize("PrzyciskZobaczMojeProjekty", "clamp(5vmin, 6vh, 80px)", "clamp(40vmin, 30vw, 400px)", "immediately")
      changeobjectsize("btnzobaczmojeprojekty", "clamp(5vmin, 6vh, 80px)", "clamp(40vmin, 30vw, 400px)", "immediately")
      changetextsize("TekstWprzyciskuZobaczMojeProjekty", "2vmin")
      variable(#przyciskzmianyjezykowheight, "5vmin")
      variable(#przyciskzmianyjezykowwdith, "60vmin")
      variable(#btnprzyciskuzmianyjezykowheight, "6vmin")
      variable(#btnprzyciskuzmianyjezykowwdith, "61vmin")
      variable(#tekstprzyciskuzmianyjezykowsize, "2.3vmin")
      variable(#tekstokienkajezowsize, "3vmin")
      variable(#odsuniecieprzyciskujezykaangielskiego, "53%")
      variable(#lastWrapped, "false")
    }
    else if (lastWrapped + "=" + "w")
    {
      changeobjectsize("BlokProjektu1", "60vmin", "45vmin", "immediately")
      changeobjectsize("tloobrazka", "33vmin", "45vmin", "immediately")
      changeobjectsize("obrazprojektu1", "33vmin", "33vmin", "immediately")
      changeobjectsize("PobierzProjekt1", "8%", "60%", "immediately")
      changeobjectsize("btnpobierzprojekt1", "8%", "60%", "immediately")
      changetextsize("TytulProjektu1", "3vmin")
      changetextsize("tekstprojektu1", "1.8vmin")
      changetextsize("TekstWprzyciskuPobierzProjekt1", "1.6vmin")
      changeobjectsize("BlokProjektu2", "60vmin", "45vmin", "immediately")
      changeobjectsize("obrazprojektu2", "33vmin", "45vmin", "immediately")
      changeobjectsize("PobierzProjekt2", "8%", "60%", "immediately")
      changeobjectsize("btnpobierzprojekt2", "8%", "60%", "immediately")
      changetextsize("TekstWprzyciskuPobierzProjekt2", "1.6vmin")
      changeimage("obrazprojektu2", "project2.jpg")
      changetextsize("TytulProjektu2", "3vmin")
      changetextsize("tekstprojektu2", "1.8vmin")
      changeobjectsize("SekcjaZprojektami", "103vh", "100vw", "immediately")
      moveobject("tekstsekcjizprojektami", "left: <50%","top: <13%")
      changeobjectsize("PrzyciskZobaczMojeProjekty", "clamp(5vmin, 6vh, 80px)", "clamp(40vmin, 30vw, 400px)", "immediately")
      changeobjectsize("btnzobaczmojeprojekty", "clamp(5vmin, 6vh, 80px)", "clamp(40vmin, 30vw, 400px)", "immediately")
      changetextsize("TekstWprzyciskuZobaczMojeProjekty", "2vmin")
      variable(#przyciskzmianyjezykowheight, "5vmin")
      variable(#przyciskzmianyjezykowwdith, "60vmin")
      variable(#btnprzyciskuzmianyjezykowheight, "6vmin")
      variable(#btnprzyciskuzmianyjezykowwdith, "61vmin")
      variable(#tekstokienkajezowsize, "3vmin")
      variable(#tekstprzyciskuzmianyjezykowsize, "2.3vmin")
      variable(#odsuniecieprzyciskujezykaangielskiego, "53%")
      variable(#lastWrapped, "false")
    }
  }
}

function NajechanoNaLinkZmianyJezyka()
{
  changecursor("pointer")
  addunderline("LinkDoZmianyJezyka", "0.3vmin")
  variable(#czymoznazmienickursor, "false")
}

function PrzestanoNajezdzacNaLinkZmianyJezyka()
{
  removeunderline("LinkDoZmianyJezyka")
  variable(#czymoznazmienickursor, "true")
}

function NajechanoNaPrzyciskZmianyJezykaNaPolski()
{
  changeobjectcolor("PrzyciskZmianyJezykaNaPolski", "rgb(18, 181, 178)", "immediately")
  changecursor("pointer")
  changebordercolor("PrzyciskZmianyJezykaNaPolski", "rgb(0, 153, 150)", "immediately")
  variable(#czymoznazmienickursor, "false")
}

function NajechanoNaPrzyciskZmianyJezykaNaAngielski()
{
  changeobjectcolor("PrzyciskZmianyJezykaNaAngielski", "rgb(18, 181, 178)", "immediately")
  changecursor("pointer")
  changebordercolor("PrzyciskZmianyJezykaNaAngielski", "rgb(0, 153, 150)", "immediately")
  variable(#czymoznazmienickursor, "false")
}

function PrzestanoNajezdzacNaPrzycisk()
{
  changeobjectcolor("PrzyciskZmianyJezykaNaPolski", "rgb(11, 125, 123)", "immediately")
  changeobjectcolor("PrzyciskZmianyJezykaNaAngielski", "rgb(11, 125, 123)", "immediately")
  changebordercolor("PrzyciskZmianyJezykaNaPolski", "rgb(0, 178, 157)", "immediately")
  changebordercolor("PrzyciskZmianyJezykaNaAngielski", "rgb(0, 178, 157)", "immediately")
  variable(#czymoznazmienickursor, "true")
}

function ZmienJezykNaPolski()
{
  saveinlocalstorage("jezyk", "polski")
  removeobject("TloOkienkaZmianyJezyka")
  removeobject("PrzyciemnionyObiekt")
  enableverticalscrolling()
  variable(#czymoznazmienickursor, "true")
  removehtmltag("main")
  removehtmltag("section")
  removehtmltag("footer")
  StworzStroneGlownaPoPolsku()
}

function ZmienJezykNaAngielski()
{
  saveinlocalstorage("jezyk", "angielski")
  removeobject("TloOkienkaZmianyJezyka")
  removeobject("PrzyciemnionyObiekt")
  enableverticalscrolling()
  variable(#czymoznazmienickursor, "true")
  removehtmltag("main")
  removehtmltag("section")
  removehtmltag("footer")
  StworzStroneGlownaPoAngielsku()
}

function OtworzOknoZmianyJezykaZiksem()
{
  OknoZmianyJezyka("z")
}

function OtworzOknoZmianyJezykaBezIksa()
{
  OknoZmianyJezyka("bez")
}

function NajechanoNaIksa()
{
  changeobjectcolor("CzescIksa1", "white", "immediately")
  changeobjectcolor("CzescIksa2", "white", "immediately")
  changecursor("pointer")
  variable(#czymoznazmienickursor, "false")
}

function PrzestanoNajezdzacNaIksa()
{
  changeobjectcolor("CzescIksa1", "#aaa", "immediately")
  changeobjectcolor("CzescIksa2", "#aaa", "immediately")
  variable(#czymoznazmienickursor, "true")
}

function KliknietoNaIksa()
{
  enableverticalscrolling()
  variable(#czymoznazmienickursor, "true")
  removeobject("TloOkienkaZmianyJezyka")
  removeobject("PrzyciemnionyObiekt")
}

function OknoZmianyJezyka(ziksemczybez)
{
  disableverticalscrolling()
  createobject("PrzyciemnionyObiekt", "900vh", "100vw", "left: 0vw", "top: 0vh", "rgba(0, 0, 0, 0.80)", "9")
  checkcenterofscreen(#srodekekranux, #srodekekranuy)
  createobject("TloOkienkaZmianyJezyka","50vmin","90vmin","left: <50vw","top: <" + srodekekranuy + "vh","rgb(32, 33, 33)","10")
  roundobject("TloOkienkaZmianyJezyka", "topleft: 3vmin, topright: 3vmin, bottomleft: 3vmin, bottomright: 3vmin")
  createtext("TekstWokienkuZmianyJezyka", "Wybierz język / Select Language", tekstokienkajezowsize, "white", "EudoxusSans-Regular.ttf", "left: <50%", "top: <10%","none","none","none", "11")
  createobject("PrzyciskZmianyJezykaNaPolski", przyciskzmianyjezykowheight, przyciskzmianyjezykowwdith, "left: <50%", "top: <45%", "rgb(11, 125, 123)", "11")
  createobject("PrzyciskZmianyJezykaNaAngielski", przyciskzmianyjezykowheight, przyciskzmianyjezykowwdith, "left: <50%", "top:" + odsuniecieprzyciskujezykaangielskiego, "rgb(11, 125, 123)", "11")
  createbutton("btnzmiananaanpolski", btnprzyciskuzmianyjezykowheight, btnprzyciskuzmianyjezykowwdith, "left: <50%", "top: <50%", "NajechanoNaPrzyciskZmianyJezykaNaPolski()", "PrzestanoNajezdzacNaPrzycisk()", "ZmienJezykNaPolski()", "16")
  createbutton("btnzmiananaangielski", btnprzyciskuzmianyjezykowheight, btnprzyciskuzmianyjezykowwdith, "left: <50%", "top: <50%", "NajechanoNaPrzyciskZmianyJezykaNaAngielski()", "PrzestanoNajezdzacNaPrzycisk()", "ZmienJezykNaAngielski()", "16")
  connectobjects("PrzyciskZmianyJezykaNaPolski", "btnzmiananaanpolski")
  connectobjects("PrzyciskZmianyJezykaNaAngielski", "btnzmiananaangielski")
  connectobjects("TloOkienkaZmianyJezyka", "TekstWokienkuZmianyJezyka, PrzyciskZmianyJezykaNaPolski, PrzyciskZmianyJezykaNaAngielski")
  addborder("TloOkienkaZmianyJezyka", "0.5vmin", "rgb(11, 125, 123)")
  createtext("TekstWprzyciskuJezykNaPolski", "Polski", tekstprzyciskuzmianyjezykowsize, "white", "EudoxusSans-Regular.ttf", "left: <50%", "top: <50%","NacjechanoNaPrzyciskZmianyJezykaNaPolski()","PrzestanoNajezdzacNaPrzycisk()","ZmienJezykNaPolski()", "13")
  connectobjects("PrzyciskZmianyJezykaNaPolski", "TekstWprzyciskuJezykNaPolski")
  addborder("PrzyciskZmianyJezykaNaPolski", "0.4vmin", "rgb(0, 178, 157)")
  addborder("PrzyciskZmianyJezykaNaAngielski", "0.4vmin", "rgb(0, 178, 157)")
  createtext("TekstWprzyciskuJezykNaAngielski", "English", tekstprzyciskuzmianyjezykowsize, "white", "EudoxusSans-Regular.ttf", "left: <50%", "top: <50%","NajechanoNaPrzyciskZmianyJezykaNaAngielski()","PrzestanoNajezdzacNaPrzycisk()","ZmienJezykNaAngielski()", "13")
  connectobjects("PrzyciskZmianyJezykaNaAngielski", "TekstWprzyciskuJezykNaAngielski")

  if(ziksemczybez + "=" + "z")
  {
    createobject("CzescIksa1", "2.5vmin", "0.4vmin", "left: <97%", "top: <5%", "#aaa", "12")
    rotateobject("CzescIksa1", "45")
    createobject("CzescIksa2", "2.5vmin", "0.4vmin", "left: <97%", "top: <5%", "#aaa", "12")
    rotateobject("CzescIksa2", "-45")
    createbutton("BtnIksa1", "2.5vmin", "0.4vmin", "left: <97%", "top: <5%", "NajechanoNaIksa()", "PrzestanoNajezdzacNaIksa()", "KliknietoNaIksa()", "14")
    rotateobject("BtnIksa1", "45")
    createbutton("BtnIksa2", "2.5vmin", "0.4vmin", "left: <97%", "top: <5%", "NajechanoNaIksa()", "PrzestanoNajezdzacNaIksa()", "KliknietoNaIksa()", "14")
    rotateobject("BtnIksa2", "-45")
    connectobjects("TloOkienkaZmianyJezyka", "CzescIksa1, CzescIksa2, BtnIksa1, BtnIksa2")
  }
}

checkitemfromlocalstorage("jezyk", #czyzapisanojezykuzytkownika)
if(czyzapisanojezykuzytkownika + "=" + "false")
{
  if (wrapped + "=" + "true")
  { 
    changeobjectsize("PrzyciskZobaczMojeProjekty", "clamp(5vmin, 8vh, 100px)", "clamp(40vmin, 33vw, 420px)", "immediately")
    changeobjectsize("btnzobaczmojeprojekty", "clamp(5vmin, 8vh, 100px)", "clamp(40vmin, 33vw, 420px)", "immediately")
    changetextsize("TekstWprzyciskuZobaczMojeProjekty", "2.6vmin")
    changeobjectsize("SekcjaZprojektami", "170vmin", "100vw", "immediately")
    moveobject("tekstsekcjizprojektami", "left: <50%","top: <6%")
    variable(#przyciskzmianyjezykowheight, "10vmin")
    variable(#przyciskzmianyjezykowwdith, "65vmin")
    variable(#btnprzyciskuzmianyjezykowheight, "11vmin")
    variable(#btnprzyciskuzmianyjezykowwdith, "66vmin")
    variable(#tekstprzyciskuzmianyjezykowsize, "5vmin")
    variable(#tekstokienkajezowsize, "4vmin")
    variable(#odsuniecieprzyciskujezykaangielskiego, "60%")
    variable(#lastWrapped, "true")
    OknoZmianyJezyka("bez")
  }
  else
  {
    OknoZmianyJezyka("bez")
  }
}
else
{
  readfromlocalstorage("jezyk", #polskiczyangielski)
  if(polskiczyangielski + "=" + "polski")
  {
    ZmienJezykNaPolski()
  }
  else
  {
    ZmienJezykNaAngielski()
  }
}