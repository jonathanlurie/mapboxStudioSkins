// *********************************************************************
// MAPBOX STREETS
// *********************************************************************

// =====================================================================
// FONTS
// =====================================================================

// Language
@name: '';

// set up font sets for various weights and styles
@sans_lt:           "Open Sans Regular","Arial Unicode MS Regular";
@sans_lt_italic:    "Open Sans Italic","Arial Unicode MS Regular";
@sans:              "Open Sans Semibold","Arial Unicode MS Regular";
@sans_bold:         "Open Sans Bold","Arial Unicode MS Regular";
@sans_italic:       "Open Sans Semibold Italic","Arial Unicode MS Regular";
@sans_bold_italic:  "Open Sans Bold Italic","Arial Unicode MS Regular";

// =====================================================================
// LANDUSE & LANDCOVER COLORS
// =====================================================================

@land:              #fbfbfb;
@water:             #dcf4fa;
@grass:             #e7fdca;
@sand:              #fdfdf3;
@rock:              #ffffff;
@park:              #e7fdca;
@cemetery:          #ffffff;
@wood:              #e7fdca;
@industrial:        #ffffff;
@agriculture:       #e7fdca;
@snow:              #f1ffff;
@crop:              #e7fdca;
@building:          #ffffff;
@hospital:          #ffffff;
@school:            #ffffff;
@pitch:             #e7fdca;
@sports:            @park;

@parking:           fadeout(@road_fill, 75%);

// =====================================================================
// ROAD COLORS
// =====================================================================

// For each class of road there are three color variables:
// - line: for lower zoomlevels when the road is represented by a
//         single solid line.
// - case: for higher zoomlevels, this color is for the road's
//         casing (outline).
// - fill: for higher zoomlevels, this color is for the road's
//         inner fill (inline).

@motorway_line:     #f1f1f1;
@motorway_fill:     #f1f1f1;
@motorway_case:     #f6f6f6;

@main_line:     #f1f1f1;
@main_fill:     #f1f1f1;
@main_case:     #f1f1f1;

@road_line:     #f1f1f1;
@road_fill:     #f1f1f1;
@road_case:     #f1f1f1;

@pedestrian_line:   #f1f1f1;
@pedestrian_fill:   @pedestrian_line;
@pedestrian_case:   @road_case;

@path_line:     #f1f1f1;
@path_fill:     #f1f1f1;
@path_case:     @land;

@rail_line:     #f1f1f1;
@rail_fill:     #f1f1f1;
@rail_case:     @land;

@bridge_case:   #f1f1f1;

@aeroway:       lighten(@industrial,5);

// =====================================================================
// BOUNDARY COLORS
// =====================================================================

@admin_2:           #234;
@admin_3:           #345;
@admin_4:           #345;

// =====================================================================
// LABEL COLORS
// =====================================================================

// We set up a default halo color for places so you can edit them all
// at once or override each individually.
@place_halo:        #fff;

@country_text:      @land * 0.2;
@country_halo:      @place_halo;

@state_text:        #666;
@state_halo:        @place_halo;

@city_text:         @land * 0.1;
@city_halo:         @place_halo;

@town_text:         @land * 0.2;
@town_halo:         @place_halo;

@poi_text:          @poi_text;  

@road_text:         #7A838A;
@road_halo:         #7A838A;

@other_text:        darken(@land,50)*0.8;
@other_halo:        @place_halo;

@locality_text:     #aaa;
@locality_halo:     @land;

// Also used for other small places: hamlets, suburbs, localities
@village_text:      #888;
@village_halo:      @place_halo;

@transport_text:    #445;

/**/