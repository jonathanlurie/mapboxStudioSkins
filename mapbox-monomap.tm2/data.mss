/*
 * ==================================================
 * GPX - Tracks & Waypoints 
 * ==================================================
 * 
 * TODO: Reverse waypnt and track order.
 *
*/

#kunsporten_klippan_route {
  [zoom>=14] {
    line-width: 2;
    line-color: black; 
    line-cap: round;
    line-dasharray: 10,5;
  }
  [zoom>=15] {
    line-width: 3;
  }
}

#kungsporten_klippan_labels {
  [zoom>=14] {
    text-face-name: 'DIN Offc Pro Regular';
    text-name: '[name]';
    text-size: 9;
    text-fill: black;
    text-halo-fill: white;
    text-halo-radius: 1;
    text-wrap-width: 20;
  }
  [zoom>=15] {
    text-size: 12;
  }
  [zoom>=16] {
    text-size: 14;
    text-halo-radius: 3;
  }
}

/* 
* Label position correction
#kungsporten_klippan_labels {
  [zoom>=13] {
    [name='Kungsportsavenyn'] { text-dy: -5; }
    [name='Klippan'] { text-dx: 1; }
  }
  [zoom>=14] {
    [name='Kungsportsavenyn'] { text-dy: 0; text-dx: -1; }
    [name='Klippan'] { text-dx: 0; }
  }
}
*/