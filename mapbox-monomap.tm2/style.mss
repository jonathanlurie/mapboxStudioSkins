/*
 * ==================================================
 * COLORS 
 * ==================================================
 * 
*/

@white: rgb(255,255,255);
@turqois: rgb(130,200,190);

/*
 * ==================================================
 * MAP BASICS
 * ==================================================
 * 
*/

Map {
  background-color: lighten(@turqois, 25%);
}

/*
 * ==================================================
 * ADMIN
 * ==================================================
 * 
*/

#admin {
  [admin_level=2] {
    [zoom>=3][zoom<=4] {
      line-width: 1;
      line-color: darken(@turqois,10%);
      line-opacity: 0.5;
    }
    [zoom>4][zoom<=6] {
      line-width: 1.5;
      line-color: darken(@turqois,10%);
      line-opacity: 1;
    }
  }
}

/*
 * ==================================================
 * WATER
 * ==================================================
 * 
*/

#water {
  polygon-fill: darken(@turqois,10%);
  [zoom>=12] {
    line-width: 1;
    line-color: darken(@turqois,20%);
  }
}

/*
 * ==================================================
 * LANDUSE
 * ==================================================
 * 
*/

#landuse {
  [class='wood'],
  [class='park'],
  [class='cemetery'],
  [class='farmland'],
  [class='agriculture'] {
    polygon-fill: lighten(@turqois, 15%);
  }
}

/*
 * ==================================================
 * BUILDINGS
 * ==================================================
 * 
*/

#building {
  [zoom>=17] {
    polygon-fill: darken(@turqois, 5%);
    polygon-opacity: 0.2;
  }
}