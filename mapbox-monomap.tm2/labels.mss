/*
 * ==================================================
 * FONTS
 * ==================================================
 * 
*/

@font_light: 'Roboto Light';
@font_regular: 'Roboto Regular';
@font_bold: 'Roboto Bold';

/*
 * ==================================================
 * OCEANS
 * ==================================================
 * 
*/

#marine_label {
   [labelrank=1][zoom>=3] {
    text-face-name: @font_regular;
    text-name: [name_en];
    text-fill: @white;
    text-size: 14;
    text-halo-fill: darken(@turqois, 30%);
    text-halo-radius: 1;
  }
  [labelrank<=4][zoom>=5] {
    text-face-name: @font_regular;
    text-name: [name_en];
    text-fill: @white;
    text-size: 12;
    text-halo-fill: darken(@turqois, 30%);
    text-halo-radius: 1;
  }
}

/*
 * ==================================================
 * COUNTRIES
 * ==================================================
 * 
*/


#country_label {
   [scalerank=1][zoom>=3] {
    text-face-name: @font_regular;
    text-name: [name_en];
    text-fill: @white;
    text-size: 14;
    text-halo-fill: darken(@turqois, 30%);
    text-halo-radius: 1;
  }
  [scalerank<=4][zoom>=5] {
    text-face-name: @font_regular;
    text-name: [name_en];
    text-fill: @white;
    text-size: 12;
    text-halo-fill: darken(@turqois, 30%);
    text-halo-radius: 1;
  }
}