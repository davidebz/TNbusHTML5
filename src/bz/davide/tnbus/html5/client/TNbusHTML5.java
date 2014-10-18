/*
TNbusHTML - HTML5 App for Trentino bus

Copyright (C) 2014 Davide Montesin <d@vide.bz> - Bolzano/Bozen - Italy

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program. If not, see <http://www.gnu.org/licenses/>.
*/

package bz.davide.tnbus.html5.client;

import it.bz.tis.sasabus.html5.client.SASAbusDBClientImpl;
import it.bz.tis.sasabus.html5.shared.FavouriteBusStationList;
import it.bz.tis.sasabus.html5.shared.data.Parking;
import it.bz.tis.sasabus.html5.shared.data.TrainStation;
import it.bz.tis.sasabus.html5.shared.ui.SplashPanel;
import bz.davide.dmweb.client.DMWeb;
import bz.davide.tnbus.html5.shared.TNbusUnmarshaller;
import com.google.gwt.core.client.EntryPoint;
import com.google.gwt.user.client.Window;

/**
 * Entry point classes define <code>onModuleLoad()</code>.
 */
public class TNbusHTML5 implements EntryPoint
{
   /**
    * This is the entry point method.
    */
   @Override
   public void onModuleLoad()
   {

      FavouriteBusStationList.SASAbusHTML5_FAVOURITES = "TNbusHTML5_FAVOURITES";
      SplashPanel.SASABUS_DB_LAST_MODIFIED = "TNbusDBLastModified";
      SplashPanel.SASABUS_DB_DATA = "TNbusDBData";

      Parking.list = new Parking[0];
      TrainStation.list = new TrainStation[0];

      String hostName = Window.Location.getHostName();
      boolean development = hostName.equals("localhost")
                            || hostName.equals("127.0.0.1")
                            || hostName.equals("127.0.1.1")
                            || hostName.equals("10.0.0.10");

      String serviceBaseUrl = (development ? "http://" + hostName + ":8080" : "") + "/backend/";

      SASAbusDBClientImpl.singleton = new SASAbusDBClientImpl(serviceBaseUrl);

      TNbusUnmarshaller widgetUnmarshaller = new TNbusUnmarshaller();
      DMWeb.start(widgetUnmarshaller);
   }
}
