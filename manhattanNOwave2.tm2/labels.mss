// =====================================================================
// LABELS

// General notes:
// - `text-halo-rasterizer: fast;` gives a noticeable performance
//    boost to render times and is recommended for *all* halos.

// ---------------------------------------------------------------------
// Languages

// There are 5 language options in the MapBox Streets vector tiles:
// - Local/default: '[name]'
// - English: '[name_en]'
// - French: '[name_fr]'
// - Spanish: '[name_es]'
// - German: '[name_de]'
@name: '[name]';  
@name_en: '[name-en]';  


// ---------------------------------------------------------------------
// Fonts

// All fontsets should have a good fallback that covers as many glyphs
// as possible. 'Arial Unicode MS Regular' and 'Arial Unicode MS Bold' 
//are recommended as final fallbacks if you have them available. 
//They support all the characters used in the MapBox Streets vector tiles.
@fallback: 'Arial Unicode MS Regular';
@sans: 'Arial Unicode MS Regular', @fallback;
//@sans_md: 'Open Sans Semibold', @fallback;
@sans_md: 'Arial Unicode MS Regular', @fallback;
@sans_bd: 'Arial Unicode MS Bold', @fallback;
@sans_it: 'Arial Unicode MS Regular', @fallback;


// ---------------------------------------------------------------------
// Countries

// The country labels in MapBox Streets vector tiles are placed by hand,
// optimizing the arrangement to fit as many as possible in densely-
// labeled areas.
#country_label[zoom>=3] {
  text-name: @name;
  text-face-name: @sans_bd;
  text-transform: uppercase;
  text-wrap-width: 100;
  text-wrap-before: true;
  text-fill: #334;
  text-halo-fill: fadeout(#fff,80%);
  text-halo-radius: 2;
  text-halo-rasterizer: fast;
  text-line-spacing: -4;
  text-character-spacing: 0.5;
  text-size: 10;
  [zoom>=3][scalerank=1],
  [zoom>=4][scalerank=2],
  [zoom>=5][scalerank=3],
  [zoom>=6][scalerank>3] {
    text-size: 12;
  }
  [zoom>=4][scalerank=1],
  [zoom>=5][scalerank=2],
  [zoom>=6][scalerank=3],
  [zoom>=7][scalerank>3] {
    text-size: 15;
  }
}

#country_label_line {
  // Lines that connect offset labels to small
  // island & coastal countries at small scales.
  line-color: #fff;
  line-dasharray: 3,1;
}

// ---------------------------------------------------------------------
// Marine

#marine_label {
  text-name: @name;
  text-face-name: @sans_it;
  text-wrap-width: 60;
  text-wrap-before: true;
  text-fill: darken(@water, 10);
  text-halo-fill: fadeout(#fff, 75%);
  text-halo-radius: 1.5;
  text-size: 10;
  text-character-spacing: 1;
  // Some marine labels should be drawn along a line 
  // rather than on a point (the default)
  [placement='line'] {
    text-placement: line;
    text-avoid-edges: true;
  }
  // Oceans
  [labelrank=1] { 
    text-size: 18;
    text-wrap-width: 120;
    text-character-spacing:	4;
    text-line-spacing:	8;
  }
  [labelrank=2] { text-size: 14; }
  [labelrank=3] { text-size: 11; }
  [zoom>=5] {
    text-size: 12;
    [labelrank=1] { text-size: 22; }
    [labelrank=2] { text-size: 16; }
    [labelrank=3] {
      text-size: 14;
      text-character-spacing: 2;
     }
   }
}

// ---------------------------------------------------------------------
// Cities, towns, villages, etc

// City labels with dots for low zoom levels.
// The separate attachment keeps the size of the XML down.
#place_label::citydots[type='city'][zoom>=4][zoom<=7][localrank<=3] {
  // explicitly defining all the `ldir` values wer'e going
  // to use shaves a bit off the final project.xml size
  [ldir='N'],[ldir='S'],[ldir='E'],[ldir='W'],
  [ldir='NE'],[ldir='SE'],[ldir='SW'],[ldir='NW'] {
    shield-file: url("shield/dot-small.png");
    shield-unlock-image: true;
    shield-name: @name;
    shield-size: 12;
    [zoom=7] { shield-size: 14; }
    shield-face-name: @sans;
    shield-placement: point;
    shield-fill: #333;
    shield-halo-fill: fadeout(#fff, 50%);
    shield-halo-radius: 1;
    shield-halo-rasterizer: fast;
    [ldir='E'] { shield-text-dx: 5; }
    [ldir='W'] { shield-text-dx: -5; }
    [ldir='N'] { shield-text-dy: -5; }
    [ldir='S'] { shield-text-dy: 5; }
    [ldir='NE'] { shield-text-dx: 4; shield-text-dy: -4; }
    [ldir='SE'] { shield-text-dx: 4; shield-text-dy: 4; }
    [ldir='SW'] { shield-text-dx: -4; shield-text-dy: 4; }
    [ldir='NW'] { shield-text-dx: -4; shield-text-dy: -4; }
  }
}

#place_label[zoom>=8][localrank<=3] {
  text-name: @name;
  text-face-name: @sans;
  text-wrap-width: 120;
  text-wrap-before: true;
  text-fill: #333;
  text-halo-fill: fadeout(#fff, 50%);
  text-halo-radius: 1;
  text-halo-rasterizer: fast;
  text-size: 10;
  [type='city'][zoom>=8][zoom<=15] {
  	text-face-name: @sans_md;
    text-size: 16;
    [zoom>=10] { 
      text-size: 18;
      text-wrap-width: 140;
    }
    [zoom>=12] { 
      text-size: 24;
      text-wrap-width: 180;
    }
    // Hide at largest scales:
    [zoom>=15] { text-name: "''"; }
  }
  [type='town'] {
    text-size: 14;
    [zoom>=12] { text-size: 16; }
    [zoom>=14] { text-size: 20; }
    [zoom>=16] { text-size: 24; }
    // Hide at largest scales:
    [zoom>=18] { text-name: "''"; }
  }
  [type='village'] {
    text-size: 12;
    [zoom>=12] { text-size: 14; }
    [zoom>=14] { text-size: 18; }
    [zoom>=16] { text-size: 22; }
  }
  [type='hamlet'],
  [type='suburb'],
  [type='neighbourhood'] {
    text-fill: #000;
    text-face-name:	@sans_bd;
    text-transform: uppercase;
    text-character-spacing: 0.5;
    [zoom>=14] { text-size: 11; }
    [zoom>=15] { 
      text-size: 18;
      text-character-spacing: 0;
      text-line-spacing: -15;
    }
    [zoom>=16] { 
      text-halo-radius: 1.5;
      text-size: 27;
      text-character-spacing: 0;
      text-line-spacing: -15;
    }
  }
}


// ---------------------------------------------------------------------
// Points of interest

#poi_label[zoom=14][scalerank<=1],
#poi_label[zoom=15][scalerank<=2],
#poi_label[zoom=16][scalerank<=3],
#poi_label[zoom=17][scalerank<=4][localrank<=2],
#poi_label[zoom>=18] {

  // Separate icon and label attachments are created to ensure that
  // all icon placement happens first, then labels are placed only
  // if there is still room.
  ::icon[maki!=null] {
    // The [maki] field values match a subset of Maki icon names, so we
    // can use that in our url expression.
    // Not all POIs have a Maki icon assigned, so we limit this section
    // to those that do. See also <https://www.mapbox.com/maki/>

    marker-opacity: 1;
    marker-fill-opacity: 1;
    marker-fill:#000;
    marker-line-color: #FFF;
    marker-line-width: 3;
    marker-line-opacity: 3;
    marker-file:url('icon2/[maki]-24.svg');
    // JO:  bigger marker
    marker-width : 20;
    
    // JO: remove banks, supermarket
    [type = "Bank"],
    [ type = "Supermarket"],
    [ type = "Hotel"],
    [ type = "Clothes"],
    [ type = "Electronics"],
    [ type = "Car"],
    [ type = "Department Store"],
    [ type = "Toys"],
    [ type = "Mobile Phone"],
    [ type = "Fast Food"],
    [ type = "Cafe"],
    [ type = "Restaurant"],
    [ type = "Pub"],
    [ type = "Convenience"],
    [ type = "Bar"],
    [ type = "Shoes"],
    [ type = "Books"],
    {
      marker-opacity: 0;
    }
    [zoom=16]{
      marker-width : 30;
    }
    
    
  }
  ::label {
    text-name: "";//@name;
    text-face-name: @sans_md;
    text-size: 12;
    text-fill: #000000;
    text-halo-fill: fadeout(#fff, 50%);
    text-halo-radius: 1;
    text-halo-rasterizer: fast;
    text-wrap-width: 70;
    text-line-spacing:	-1;
    text-allow-overlap: false;
    
    //text-transform: uppercase;
    //text-character-spacing:	0.25;
    // POI labels with an icon need to be offset:
    [maki!=null] { text-dy: 8; }
    
    // JO
    [type = "Rail Station"]{
      text-allow-overlap:false;
      text-dy: 13;
     }
    
    // JO: remove banks, supermarket
    [type = "Bank"],
    [ type = "Supermarket"],
    [ type = "Hotel"],
    [ type = "Clothes"],
    [ type = "Electronics"],
    [ type = "Car"],
    [ type = "Department Store"],
    [ type = "Toys"],
    [ type = "Mobile Phone"],
    [ type = "Fast Food"],
    [ type = "Cafe"],
    [ type = "Restaurant"],
    [ type = "Pub"],
    [ type = "Convenience"],
    [ type = "Bar"],
    [ type = "Shoes"],
    [ type = "Books"],
    {
      text-name: "";
    }
    
  }
}


// ---------------------------------------------------------------------
// Roads

#road_label[reflen>=1][reflen<=6]::shield {
  // Motorways with a 'ref' tag that is 1-6 characters long have a
  // [ref] value for shield-style labels.
  // Custom shield png files can be created using make_shields.sh
  // in _src folder
  shield-name: [ref];
  shield-face-name: @sans_bd;
  shield-fill: #4d4d4d;
  shield-min-distance: 60;
  shield-min-padding: 8;  // prevents clipped shields at tile edges
  shield-size: 9;
  shield-file: url('shield/motorway_sm_[reflen].png');
  [zoom>=15] {
    shield-size: 11;
    shield-file: url('shield/motorway_lg_[reflen].png');
  }
}

#road_label[name != "Golden Gate Bridge"] {
  text-name: @name;
  text-placement: line;  // text follows line path
  text-face-name: @sans_bd;
  text-fill: @main;
  text-halo-fill: #fff;
  text-halo-radius: 1;
  text-halo-rasterizer: full;
  text-size: 12;
  text-avoid-edges: false;  // prevents clipped labels at tile edges
  text-allow-overlap: false;
  [zoom>=15] { text-size: 15; }
  [zoom>=16] { text-size: 21; }
}


// ---------------------------------------------------------------------
// Water

#water_label {
  [zoom<=13],  // automatic area filtering @ low zooms
  [zoom>=14][area>500000],
  [zoom>=16][area>10000],
  [zoom>=17] {
    text-name: @name;
    text-face-name: @sans;
    text-fill: #000;
    text-size: 12;
    text-wrap-width: 100;
    text-wrap-before: true;
    text-halo-fill: #FFF;
    text-halo-radius: 1.5;
  }
}


// ---------------------------------------------------------------------
// House numbers

#housenum_label[zoom>=18] {
  text-name: [house_num];
  text-face-name: @sans_it;
  text-fill: #cbcbcb;
  text-size: 8;
  [zoom=19] { text-size: 10; }
  [zoom>=20] { text-size: 12; }
}