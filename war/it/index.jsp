<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ taglib uri="/WEB-INF/dmweb-fragment-taglib.tld" prefix="dmweb"
%><!doctype html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="gwt:property" content="locale=it">
<title>TNbus HTML5: autobus/bus line, orari, percorsi a Trento and Rovereto</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link type="text/css" rel="stylesheet" href="../main-structure-responsive.css">
<link type="text/css" rel="stylesheet" href="../SASAbusHTML5.css">
<link type="text/css" rel="stylesheet" href="../TNbusHTML5.css">

<link rel="stylesheet" href="../js/leaflet-0.6.4/leaflet.css" />
<!--[if lte IE 8]>
    <link rel="stylesheet" href="../js/leaflet-0.6.4/leaflet.ie.css" />
<![endif]-->

<link rel="stylesheet" href="../js/leaflet-0.6.4/leaflet.label.css" />

<script src="../js/leaflet-0.6.4/leaflet.js"></script>
<script src="../js/leaflet-0.6.4/leaflet.label.js"></script>

<!--                                           -->
<!-- This script loads your compiled module.   -->
<!-- If you add any GWT meta tags, they must   -->
<!-- be added before this line.                -->
<!--                                           -->
<script type="text/javascript" language="javascript" src="../tnbushtml5/tnbushtml5.nocache.js"></script>

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-35382463-1']);
  _gaq.push(['_trackPageview']);
  //_gaq.push(['_trackEvent', 'ua', 'hit', navigator.userAgent]);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<link href='http://fonts.googleapis.com/css?family=Ubuntu' rel='stylesheet' type='text/css'>

<script type='text/javascript' src='https://www.google.com/jsapi'></script>
    <script type='text/javascript'>
      google.load('visualization', '1', {packages:['gauge']});
</script>
</head>

<dmweb:body marshallerUnmarshallerPrefix="bz.davide.tnbus.html5.shared.TNbus">

<!-- RECOMMENDED if your web app will not function without JavaScript enabled -->
<noscript>
   <div style="width: 22em; position: absolute; left: 50%; margin-left: -11em; color: red; background-color: white; border: 1px solid red; padding: 4px; font-family: sans-serif">Your web
      browser must have JavaScript enabled in order for this application to display correctly.</div>
</noscript>

<!-- OPTIONAL: include this if you want history support -->
<iframe src="javascript:''" id="__gwt_historyFrame" tabIndex='-1' style="position: absolute; width: 0; height: 0; border: 0"></iframe>

	
	<dmweb:fragment viewclass="it.bz.tis.sasabus.html5.shared.SASAbusWebPage">
		<initParameters>
		<appTitle>TNbus</appTitle>
		<custom.BusStationCustomViewAndI18N>
			<busStationCustomView.BusStationSponsorsView/>
			<busRoutingViewFactory.NoRoutingSponsorViewFactory/>
			<i18n>
				<language>it</language>
					<translations><key>AboutPanel_checkingUpdates</key><text>controllo aggiornamenti ...</text></translations>
					<translations><key>AboutPanel_downloadingUpdates</key><text>download aggiornamenti ...</text></translations>
					<translations><key>AboutPanel_readingLocalstore</key><text>caricamento dal database locale ...</text></translations>
					<translations><key>AboutPanel_ready</key><text>pronto!</text></translations>
					<translations><key>AboutPanel_writingLocalstore</key><text>salvataggio in database locale ...</text></translations>
					<translations><key>BusLine</key><text>Linea</text></translations>
					<translations><key>BusLines</key><text>Linee</text></translations>
					<translations><key>BusStationPanel_calculating_departures</key><text>Calcolando partenze</text></translations>
					<translations><key>BusStationPanel_directions</key><text>Usa questa fermata per il calcolo percorso</text></translations>
					<translations><key>BusStationPanel_refresh_departures</key><text>Aggiorna partenze</text></translations>
					<translations><key>BusStationPanel_use_as_end_routing</key><text>Fine percorso</text></translations>
					<translations><key>BusStationPanel_use_as_start_routing</key><text>Inizio percorso</text></translations>
					<translations><key>BusStations</key><text>Fermate</text></translations>
					<translations><key>BusStationSearchWidget_introtext</key><text>Nome della fermata</text></translations>
					<translations><key>BusTripPanel_show_prev_stops</key><text>Mostra fermate precedenti</text></translations>
					<translations><key>FavouriteBusStationListPanel_empty_favourite</key><text>Non hai ancora selezionato dei preferiti. Premi sul cuore delle fermate per aggiungerle a questa lista.</text></translations>
					<translations><key>FavouriteBusStationListPanel_favourite_are</key><text>Le tue fermate favorite sono</text></translations>
					<translations><key>Menu_about</key><text>About</text></translations>
					<translations><key>Menu_areasLines</key><text>Linee</text></translations>
					<translations><key>Menu_feedback</key><text>Feedback</text></translations>
					<translations><key>Menu_map</key><text>Mappa</text></translations>
					<translations><key>Menu_more</key><text>Altro</text></translations>
					<translations><key>Menu_news</key><text>Comunicaz.</text></translations>
					<translations><key>Menu_routing</key><text>Calc. perc.</text></translations>
					<translations><key>Menu_search</key><text>Ricerca</text></translations>
					<translations><key>Menu_settings</key><text>Impostaz.</text></translations>
					<translations><key>NewsPanel_loading</key><text>Leggendo news</text></translations>
					<translations><key>RouteResultDetailPanel_walk_for</key><text>Camminare per</text></translations>
					<translations><key>RouteResultDetailPanel_you_arrive</key><text>Sei arrivato!</text></translations>
					<translations><key>RouteSearchPanel_calculating_routing</key><text>Calcolando percorso</text></translations>
					<translations><key>RouteSearchPanel_end_station</key><text>Arrivo</text></translations>
					<translations><key>RouteSearchPanel_search</key><text>Calcola</text></translations>
					<translations><key>RouteSearchPanel_start_station</key><text>Partenza</text></translations>
					<translations><key>RouteSearchPanel_when</key><text>Quando</text></translations>
			</i18n>
			</custom.BusStationCustomViewAndI18N>
			<homePageCustomFragment.HomePageSponsorsView/>
			<aboutInfos>
			    <copyrightYears>2014</copyrightYears>
			    <copyrightCompany>Davide Montesin</copyrightCompany>
			    <copyrightCompanyUrl>http://www.davide.bz</copyrightCompanyUrl>
			    <copyrightCompanyAddress>Bolzano/Bozen - Italy</copyrightCompanyAddress>
			    
			    <licenseLabel>License</licenseLabel>
			    <licenseName>AGPL3</licenseName>
			    <licenseUrl>http://www.gnu.org/licenses/agpl-3.0.html</licenseUrl>
			    
			    <teamName>TNbus community</teamName>
			    <teamUrl>http://www.davide.bz</teamUrl>
			    
			    <teamMembers>
			      <name>Davide Montesin</name>
			      <url>http://www.davide.bz</url>
			      <role>Main developer</role>
			    </teamMembers>
			    
			    <libraries>
			       <name>SASAbus HTML5</name>
			       <url>http://sasabus.org</url>
			       <owner>TIS, Davide Montesin</owner>
			       <license>AGPL3</license>
			       <licenseUrl>http://www.gnu.org/licenses/agpl-3.0.html</licenseUrl>
			    </libraries>
			    
			    <libraries>
			       <name>google_transit_urbano</name>
			       <url>http://dati.trentino.it/dataset/trasporti-pubblici-del-trentino-formato-gtfs</url>
			       <owner>PAT Servizio Trasporti</owner>
			       <license>Creative Commons Attribution</license>
			       <licenseUrl>http://creativecommons.org/licenses/by/2.5/it/</licenseUrl>
			    </libraries>

			</aboutInfos>
			<supportEmail>d@vide.bz</supportEmail>
		</initParameters>
	</dmweb:fragment>

</dmweb:body>
</html>
