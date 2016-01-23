#waypoints{
  line-color: [stroke];
  polygon-fill: [fill];
  polygon-opacity: [fill-opacity];
  line-width: 4;
  
    

  
 // [marker-symbol!=null] {
    marker-allow-overlap: true;
    marker-line-width: 0;
    marker-fill: #F00;
    marker-file:url('icon/rocket-24.svg');
    marker-width: 20;
//  }
  
  //[name!=null]{
    text-name: [name];
    text-face-name: @sans;
    text-fill: #036;
    text-size: 20;
    //text-placement: line;

    text-min-distance: 4;
    text-wrap-width: 60;
  //}
  
}
@opa :  [ele]/1200;

#track_points{
  
  
  marker-fill: #000;
  marker-line-opacity: 0;
//  marker-fill-opacity: (400/[ele]);
  [ele!=null]{
    
    marker-fill-opacity: @opa;
  }
  //debug-mode: collision;
}