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

package bz.davide.tnbus.html5.shared;

import it.bz.tis.sasabus.backend.shared.AreaList;
import it.bz.tis.sasabus.backend.shared.BusStation;
import it.bz.tis.sasabus.html5.shared.SASAbusI18N;
import it.bz.tis.sasabus.html5.shared.ui.BusStationSearchWidget;
import it.bz.tis.sasabus.html5.shared.ui.BusStationSelectedEventHandler;
import it.bz.tis.sasabus.html5.shared.ui.RouteSearchPanel;
import it.bz.tis.sasabus.html5.shared.ui.SASAbusDateBox;
import it.bz.tis.sasabus.html5.shared.ui.map.SASAbusMap;
import bz.davide.dmweb.shared.view.ButtonView;
import bz.davide.dmweb.shared.view.DMClickEvent;
import bz.davide.dmweb.shared.view.DMClickHandler;
import bz.davide.dmweb.shared.view.DMHashNavigationPanel;
import bz.davide.dmweb.shared.view.DivView;
import bz.davide.dmweb.shared.view.SpanView;
import bz.davide.dmweb.shared.view.TextNodeView;
import com.google.gwt.user.client.Window;

public class NoRoutingSponsorView extends DivView
{

   SASAbusDateBox   dateBox;

   final ButtonView search;

   DivView          results;

   public NoRoutingSponsorView(AreaList areaList,
                               DMHashNavigationPanel navigationPanel,
                               SASAbusMap map,
                               SASAbusI18N i18n)
   {
      super("route");

      DivView sponsor = new DivView("sponsor");
      DivView silver = new DivView("silver");
      silver.appendChild(new TextNodeView("Routing sponsor of the month"));
      sponsor.appendChild(silver);
      this.appendChild(sponsor);

      SpanView introText = new SpanView("Route calculation");
      introText.setStyleName("intro-text");
      this.appendChild(introText);

      this.appendChild(new BusStationSearchWidget(i18n.getLocalizedText("RouteSearchPanel_start_station"),
                                                  map,
                                                  areaList,
                                                  new BusStationSelectedEventHandler()
                                                  {
                                                     @Override
                                                     public void selected(BusStation busStation)
                                                     {
                                                        RouteSearchPanel.start = busStation;
                                                     }
                                                  },
                                                  RouteSearchPanel.start,
                                                  i18n));
      this.appendChild(new BusStationSearchWidget(i18n.getLocalizedText("RouteSearchPanel_end_station"),
                                                  map,
                                                  areaList,
                                                  new BusStationSelectedEventHandler()
                                                  {
                                                     @Override
                                                     public void selected(BusStation busStation)
                                                     {
                                                        RouteSearchPanel.end = busStation;
                                                     }
                                                  },
                                                  RouteSearchPanel.end,
                                                  i18n));

      this.appendChild(new SpanView(i18n.getLocalizedText("RouteSearchPanel_when") + ":"));
      this.appendChild(this.dateBox = new SASAbusDateBox());

      this.search = new ButtonView(i18n.getLocalizedText("RouteSearchPanel_search"));
      this.appendChild(this.search);
      this.search.addClickHandler(new DMClickHandler()
      {

         @Override
         public void onClick(DMClickEvent event)
         {
            Window.alert("Routing coming soon ...");
         }
      });

      this.appendChild(this.results = new DivView("results"));

   }

}
