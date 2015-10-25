///////////////////////////////////////////////////////////////////////
// LAST : Example for landuse and buildings commented, continue with
// road labels
///////////////////////////////////////////////////////////////////////


// =====================================================================
// VARIABLES

// ---------------------------------------------------------------------
// Languages

@name: '[name_en]';  

// ---------------------------------------------------------------------
// Fonts

@fallback: 'Super Grotesk Offc Pro Regular';
@sans: 'Super Grotesk Offc Pro Regular', @fallback;
@sans_md: 'Super Grotesk Offc Pro Medium', @fallback;
@sans_bd: 'Super Grotesk Offc Pro Bold', @fallback;

// ---------------------------------------------------------------------
// Colors

@white:            #fdfdfd;
@beige:            #efecd1;
@mediumBeige:      #e8e5cc;
@darkBeige:        #dfdcc5;
@blue:             #6c9eac;
@darkBlue:         #324a51;
@darkBeige:        #9e9c8d;
@blueGreen:        #c5d4c2;
@darkBlueGreen:    #a4b79f;
@green:            #c8d7a1;
@darkGreen:        #a0ac7f;
@orange:           #f9b293;
@darkOrange:       #d97144;
@orangeRed:        #eb7e6e;
@darkOrangeRed:    #d95744;
@darkYellowGreen:  #62665d;
@greyGreen:        #6c7968;
@darkGreyGreen:    #323631;
@grey:             #d6d6d6;
@darkGrey:         #b4b4b4;
@yellow:           #e2c26f;
@darkYellow:       #a7935f;


// =====================================================================
// MAP BASICS

Map {
  background-color: @beige;
}

// =====================================================================
// WATER


#water {
  polygon-fill: @darkBlue;
}

// =====================================================================
// LANDCOVER (terrain)

#landcover {
  polygon-smooth: 1;
  [class='wood'] {
    polygon-fill: mix(@green, @greyGreen, 60%);
  }
  [class='scrub'] {
    polygon-fill:  mix(@green, @greyGreen, 80%);
  }
  [class='grass'] {
    polygon-fill: @green;
  }
  [class='crop'] {
    polygon-fill: mix(@green, @beige, 50%);
  }
  [class='snow'] {
    polygon-fill: @white; 
  }
}

// =====================================================================
// HILLSHADE (terrain)

#hillshade {
  [class='medium_shadow'] {
    polygon-fill: black;
    polygon-opacity: 0.025;
  }
  [class='medium_shadow'] {
    polygon-fill: black;
    polygon-opacity: 0.05;
  }
  [class='medium_highlight'] {
    polygon-fill: white;
    polygon-opacity: 0.025;
  }
  [class='full_highlight'] {
    polygon-fill: white;
    polygon-opacity: 0.05;
  }
}

// =====================================================================
// LANDUSE
/*
#landuse[zoom>=13] {
  [class='hospital'] {
    polygon-fill: @orangeRed;
    polygon-opacity: 0.5;
  }
  [class='school'] {
     polygon-fill: @yellow;
     polygon-opacity: 0.5;
  }
  [class='cemetery'] {
     polygon-fill: @blueGreen;
     polygon-opacity: 0.5;
  }
  [class='pitch'] {
     polygon-fill: @darkGreen;
     polygon-opacity: 1;
  }
  [class='park'] {
     polygon-fill: @darkGreen;
     polygon-opacity: 1;
  }
  [class='parking'] {
     polygon-fill: @grey;
     polygon-opacity: 0.5;
  }
}
*/

// =====================================================================
// BUILDINGS
/*
#building[zoom>=15] {
  polygon-fill: #ddd;
  polygon-comp-op: multiply;
}
*/

// =====================================================================
// ADMIN AREAS

#admin {
  [admin_level=2] {
    line-width: 0.3;
    line-color: @darkYellowGreen;
    [maritime=1] { line-opacity: 0; }
    [zoom>=3] { line-width: 0.5; }
    [zoom>=4] { line-width: 0.8; }
    [zoom>=5] { line-width: 1.1; }
    [zoom>=6] { line-width: 1.4; }
    [zoom>=7] { line-width: 1.7; }
    [zoom>=8] { line-width: 2; }
    [zoom>=9] { line-width: 2.3; }
    [zoom>=12] { line-dasharray: 4,8,2; }
    [zoom>=14] { line-opacity: 0.5; }
  }
  [admin_level=4][zoom>=4] {
    line-width: 0.8;
    line-color: @darkYellowGreen;
    line-dasharray: 4,8,2;
    //line-opacity: 0.75;
    [zoom>=5] { line-width: 1.1; }
    [zoom>=6] { line-width: 1.4; }
    [zoom>=7] { line-width: 1.7; }
    [zoom>=8] { line-width: 2; }
    [zoom>=9] { line-width: 2.3; }
  }
  
}

// =====================================================================
// LABELS

// ---------------------------------------------------------------------
// Marine and water

#marine_label {
  text-name: @name;
  text-face-name: @sans_md;
  text-fill: @blue;
  text-size: 12;
  text-character-spacing: 4;
  text-wrap-width: 65;
  [placement='line'] { text-placement: line; }
  [labelrank=1] { text-size: 22; }
  [labelrank=2] { text-size: 14; }
}

#water_label {
  text-name: @name;
  text-face-name: @sans;
  text-fill: @blue;
  text-size: 10;
  text-wrap-width: 20;
  text-character-spacing: 2.5;
  [area>=20000] {
    text-size: 12;
  }
  [area>=50000] {
    text-size: 13;
  }
  [area>=1500000000] {
    text-size: 15;
    text-face-name: @sans_md;
  }
}

// ---------------------------------------------------------------------
// Countries

#country_label[zoom>=3] {
  text-name: @name;
  text-face-name: @sans_md;
  text-transform: uppercase;
  text-halo-rasterizer: fast;
  text-halo-fill: @white;
  text-halo-radius: 1.75;
  text-fill: @darkOrangeRed;
  text-size: 10;
  text-wrap-width: 40;
  [scalerank=1] {
    [zoom>=3] { text-size: 14; }
    [zoom>=4] { text-size: 15; }
    [zoom>=5] { text-size: 16; }
    [zoom>=6] { text-size: 17; } 
    [zoom>=7] { text-size: 18; } 
  }
  [scalerank=2] {
    [zoom>=3] { text-size: 12; }
    [zoom>=4] { text-size: 13; }
    [zoom>=5] { text-size: 14; }
    [zoom>=6] { text-size: 15; } 
    [zoom>=7] { text-size: 16; } 
  }
  [scalerank=3] {
    [zoom>=3] { text-size: 10; }
    [zoom>=4] { text-size: 11; }
    [zoom>=5] { text-size: 12; }
    [zoom>=6] { text-size: 13; } 
    [zoom>=7] { text-size: 14; } 
  }
}

#country_label_line {
  line-width: 1.5;
  line-color: @white;
}

// ---------------------------------------------------------------------
// States

#state_label[zoom>=4] {
  text-name: @name;
  text-face-name: @sans_md;
  text-halo-rasterizer: fast;
  text-halo-fill: @white;
  text-halo-radius: 1.5;
  text-transform: uppercase;
  text-fill: @orangeRed;
  text-size: 11;
  text-wrap-width: 40;
  [zoom>=5] { text-size: 12; }
  [zoom>=6] { text-size: 13; } 
  [zoom>=7] { text-size: 14; }  
}

// ---------------------------------------------------------------------
// Places

// City labels with dots for low zoom levels.
#place_label::citydots[type='city'][zoom>=4][zoom<=7][localrank<=2] {
  // explicitly defining all the `ldir` values wer'e going
  // to use shaves a bit off the final project.xml size
  [ldir='N'],[ldir='S'],[ldir='E'],[ldir='W'],
  [ldir='NE'],[ldir='SE'],[ldir='SW'],[ldir='NW'] {
    shield-file: url("dot-small.png");
    shield-unlock-image: true;
    shield-name: @name;
    shield-face-name: @sans;
    shield-placement: point;
    shield-fill: @darkGreyGreen;
    shield-halo-fill: @white;
    shield-halo-radius: 1.5;
    shield-line-spacing: -4;
    shield-wrap-width: 40;
    shield-size: 10;
    [zoom>=5] { shield-size: 11; }
    [zoom>=6] { shield-size: 13; }
    [zoom>=7] { shield-size: 15; }
    [scalerank<=2] {
      [zoom>=4] { shield-size: 12; }
      [zoom>=5] { shield-size: 14; }
      [zoom>=6] { shield-size: 16; }
      [zoom>=7] { shield-size: 18; }
    }
    [ldir='E'] { shield-text-dx: 5; }
    [ldir='W'] { shield-text-dx: -5; }
    [ldir='N'] { shield-text-dy: -5; }
    [ldir='S'] { shield-text-dy: 8; }
    [ldir='NE'] { shield-text-dx: 4; shield-text-dy: -3; }
    [ldir='SE'] { shield-text-dx: 4; shield-text-dy: 5; }
    [ldir='SW'] { shield-text-dx: -4; shield-text-dy: 5; }
    [ldir='NW'] { shield-text-dx: -4; shield-text-dy: -3; }
  }
}


#place_label[type='city'][zoom>=8] {
  text-name: @name;
  text-face-name: @sans;
  text-halo-rasterizer: fast;
  text-halo-fill: @white;
  text-halo-radius: 1.5;
  text-fill: @darkGreyGreen;
  [zoom=8] {
    text-size: 18;
    [scalerank>=0][scalerank<=2] { text-size: 22; }
    [scalerank>=3][scalerank<=6] { text-size: 20; }
  }
  [zoom=9] {
    text-size: 19;
    [scalerank>=0][scalerank<=2] { text-size: 23; }
    [scalerank>=3][scalerank<=6] { text-size: 21; }
  }
  [zoom=10] {
    text-size: 20;
    [scalerank>=0][scalerank<=2] { text-size: 24; }
    [scalerank>=3][scalerank<=6] { text-size: 22; }
  }
  [zoom=11] {
    text-size: 21;
    [scalerank>=0][scalerank<=2] { text-size: 25; }
    [scalerank>=3][scalerank<=6] { text-size: 23; }
  }
  [zoom>=12] {
    text-size: 22;
    [scalerank>=0][scalerank<=2] { text-size: 26; }
    [scalerank>=3][scalerank<=6] { text-size: 24; }
  }
}

#place_label[type='town'][zoom>=9] {
  text-name: @name;
  text-face-name: @sans;
  text-halo-rasterizer: fast;
  text-halo-fill: @white;
  text-halo-radius: 1.5;
  text-fill: @darkGreyGreen;
  [zoom=9] {
    text-size: 0;
    [localrank>=0][localrank<=2] { text-size: 15; }
  }
  [zoom=10] {
    text-size: 0;
    [localrank>=0][localrank<=2] { text-size: 16; }
    [localrank>=3][localrank<=6] { text-size: 14; }
  }
  [zoom=11] {
    text-size: 13;
    [localrank>=0][localrank<=2] { text-size: 17; }
    [localrank>=3][localrank<=6] { text-size: 15; }
  }
  [zoom>=12] {
    text-size: 14;
    [localrank>=0][localrank<=2] { text-size: 18; }
    [localrank>=3][localrank<=6] { text-size: 16; }
  }
}

#place_label[type='village'][zoom>=11] {
  text-name: @name;
  text-face-name: @sans;
  text-halo-rasterizer: fast;
  text-halo-fill: @white;
  text-halo-radius: 1.5;
  text-fill: @darkGreyGreen;
  [zoom=11] {
    text-size: 0;
    [localrank>=0][localrank<=1] { text-size: 13; }
    [localrank>=2][localrank<=3] { text-size: 11; }
  }
  [zoom>=12] {
    text-size: 10;
    [localrank>=0][localrank<=1] { text-size: 14; }
    [localrank>=2][localrank<=3] { text-size: 12; }
  }
}

#place_label[type='hamlet'][zoom>=12][localrank<=3],
#place_label[type='suburb'][zoom>=12][localrank<=3],
#place_label[type='neighbourhood'][zoom>=12][localrank<=3] {
  text-name: @name;
  text-face-name: @sans_md;
  text-halo-rasterizer: fast;
  text-transform: uppercase;
  text-halo-fill: @white;
  text-halo-radius: 1.5;
  text-fill: @darkOrange;
  text-size: 10;
  [zoom>=13] { text-size: 11; }
  [zoom>=14] { text-size: 13; }
  [zoom>=15] { text-size: 15; }
}

// ---------------------------------------------------------------------
// ROADS

#road, #bridge, #tunnel {
  // all tunnels are equal to layer -1
  [layer<=-1] {
    [zoom>=12] {
      [class='motorway'],
      [class='motorway_link'],
      [class='main'] {
        ::case { line-opacity: 0.15;}
        ::fill { line-opacity: 0.15;}
      }
      [class='street'] {
        ::case { line-opacity: 0.15;}
      }
    }
  }
  [class='motorway'] {
    
    [zoom>=6] {
      ::case { line-color: @darkGrey; }
      ::case { line-smooth: 1; }
      ::case { line-width: 0.5; }
    }
    [zoom>=7] {
      ::case { line-width: 0.75; }
    }
    [zoom>=8] {
      ::case { line-width: 1; }
    }
    [zoom>=9] {
      ::case { line-width: 2; }
      ::fill { line-color: @white; }
      ::fill { line-smooth: 1; }
      ::fill { line-width: 0.5; }
    }
    [zoom>=10] {
      ::case { line-width: 3; }
      ::fill { line-width: 1.5; }
    }
    [zoom>=11] {
      ::case { line-width: 4; }
      ::fill { line-width: 2; }
    }
    [zoom>=12] {
      ::case { line-width: 5; }
      ::fill { line-width: 3; }
    }
     [zoom>=13] {
      ::case { line-width: 6; }
      ::fill { line-width: 4; }
    }
    [zoom>=14] {
      ::case { line-width: 7; }
      ::fill { line-width: 5; }
    }
    [zoom>=15] {
      ::case { line-width: 8; }
      ::fill { line-width: 6; }
    }
    [zoom>=16] {
      ::case { line-width: 10; }
      ::fill { line-width: 8; }
    }
    [zoom>=17] {
      ::case { line-width: 15; }
      ::fill { line-width: 13; }
    }
    [zoom>=18] {
      ::case { line-width: 17; }
      ::fill { line-width: 15; }
    }
  }
  [class='motorway_link'],
  [class='main'] {
    [zoom>=7] {
      ::case { line-color: @darkGrey; }
      ::case { line-smooth: 1; }
      ::case { line-width: 0.25; }
    }
    [zoom>=8] {
      ::case { line-width: 0.5; }
    }
    [zoom>=9] {
      ::case { line-width: 0.75; }
    }
    [zoom>=10] {
      ::case { line-width: 1; }
    }
    [zoom>=11] {
      ::case { line-width: 2; }
      ::fill { line-color: @white; }
      ::fill { line-smooth: 1; }
      ::fill { line-width: 0.5; }
    }
    [zoom>=12] {
      ::case { line-width: 3; }
      ::fill { line-width: 1.5; }
    }
    [zoom>=13] {
      ::case { line-width: 4; }
      ::fill { line-width: 2; }
    }
    [zoom>=14] {
      ::case { line-width: 5; }
      ::fill { line-width: 3; }
    }
    [zoom>=15] {
      ::case { line-width: 7; }
      ::fill { line-width: 5; }
    }
    [zoom>=16] {
      ::case { line-width: 9; }
      ::fill { line-width: 7; }
    }
    [zoom>=17] {
      ::case { line-width: 13; }
      ::fill { line-width: 11; }
    }
    [zoom>=18] {
      ::case { line-width: 16; }
      ::fill { line-width: 14; }
    }
    /*
    [type='primary'],
    [type='primary'] {
      ::case { line-color: @darkYellow; }
      ::fill { line-color: @yellow; }
    }
    */
  }
  [class='street'] {
    [zoom>=12] {
       ::case { line-color: @darkGrey; }
       ::case { line-smooth: 1; }
       ::case { line-cap: round; }
       ::case { line-width: 0.5; }
    }
    [zoom>=13] {
      ::case { line-width: 0.75; }
    }
    [zoom>=14] {
      ::case { line-width: 1; }
    }
    [zoom>=15] {
      ::case { line-width: 5; }
      ::fill { line-color: @white; }
      ::fill { line-smooth: 1; }
      ::fill { line-cap: round; }
      ::fill { line-width: 3; }
    }
    [zoom>=16] {
      ::case { line-width: 7; }
      ::fill { line-width: 5; }
    }
    [zoom>=17] {
      ::case { line-width: 10; }
      ::fill { line-width: 8; }
    }
    [zoom>=18] {
      ::case { line-width: 12; }
      ::fill { line-width: 10; }
    }
  }
  [class='service'],
  [class='path'] {
    [zoom>=15] {
       ::case { line-color: @darkGrey; }
       ::case { line-smooth: 1; }
       ::case { line-cap: round; }
       ::case { line-width: 1; }
    }
    [zoom>=16] {
      ::case { line-width: 3; }
      ::fill { line-color: @grey; }
      ::fill { line-smooth: 1; }
      ::fill { line-cap: round; }
      ::fill { line-width: 1; }
    }
    [zoom>=17] {
      ::case { line-width: 5; }
      ::fill { line-width: 3; }
    }
    [zoom>=18] {
      ::case { line-width: 7; }
      ::fill { line-width: 5; }
    }
  }
} // #road, #bridge, #tunnel


// ---------------------------------------------------------------------
// ROADLABEL

#road_label {
  [class='motorway'] {
    text-name: @name;
    text-face-name: @sans;
    text-fill: @darkYellowGreen;
    text-placement: line;
    text-size: 11;
    text-min-padding: 8;
    text-min-distance: 200;
  }
  [class='motorway_link'],
  [class='main'] {
    text-name: @name;
    text-face-name: @sans;
    text-fill: @darkYellowGreen;
    text-placement: line;
    text-size: 11;
    text-min-padding: 8;
    text-min-distance: 200;
  }
   [class='street'] {
    text-name: @name;
    text-face-name: @sans;
    text-fill: @darkYellowGreen;
    text-halo-fill: @white;
    text-halo-radius: 1;
    text-placement: line;
    text-size: 11;
  }
}