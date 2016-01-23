// Common Colors //
@water: #456;

#water {
  polygon-fill: @water;
  opacity: 0.8
}

#road, #bridge {
  line-color: #abc;
  comp-op: soft-light;
}

#mapbox_satellite_full,
#mapbox_satellite_plus,
#mapbox_satellite_open,
#mapbox_satellite_watermask  {
  raster-opacity: 1;
  image-filters: scale-hsla( 0.5,0.6, 0.0,0.2, 0.3,0.7, 0,1 );
}

////////////////////////////////////////////////
// Hillshading //
////////////////////////////////////////////////

#hillshade {
  ::0[zoom<=13],
  ::1[zoom=14],
  ::2[zoom>=15][zoom<=16],
  ::3[zoom>=17][zoom<=18],
  ::4[zoom>=19] {
    comp-op: overlay;
    polygon-clip: false;
    image-filters-inflate: true;
    [class='shadow'] {
      polygon-fill: #246;
      polygon-opacity: 0.3;
      [zoom>=15][zoom<=16] { polygon-opacity: 0.075; }
      [zoom>=17][zoom<=18] { polygon-opacity: 0.05; }
      [zoom>=18] { polygon-opacity: 0.025; }
    }
    [class='highlight'] {
      polygon-fill: #ea8;
      polygon-opacity: 0.4;
      [zoom>=15][zoom<=16] { polygon-opacity: 0.3; }
      [zoom>=17][zoom<=18] { polygon-opacity: 0.2; }
      [zoom>=18] { polygon-opacity: 0.1; }
    }
  }
  ::1 { image-filters: agg-stack-blur(2,2); }
  ::2 { image-filters: agg-stack-blur(4,4); }
  ::3 { image-filters: agg-stack-blur(20,20); }
  ::4 { image-filters: agg-stack-blur(20,20); }
}

#admin[admin_level=2] {
  [maritime=0] {
    ::case {
      opacity: 0.5;
      line-color: @water;
      line-join: round;
      line-cap: round;
      line-width: 3;
      [zoom>=6] { line-width: 5; }
    }
    ::fill {
      line-color: white;
      line-join: round;
      line-cap: round;
      line-width: 0.6;
      [zoom>=6] { line-width: 1; }
    }
  }
  [maritime=1] { line-color: #345; line-dasharray: 3,2; }
}

#admin[admin_level=4][maritime=0] {
  ::case {
    line-opacity: 0.5;
    line-color: @water; 
    line-join: round;
    line-cap: round;
    line-width: 3;
  }
  ::fill {
    line-opacity: 0.75;
    line-color: white;
    line-join: round;
    line-cap: round;
    line-width: 0.6;
    line-dasharray: 2,2;
  }
}
  