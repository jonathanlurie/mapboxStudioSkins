#original{
  line-color: [stroke];
  polygon-fill: [fill];
  polygon-opacity: [fill-opacity];
  line-width: 4;
  
    

  
  [marker-symbol!=null] {
    marker-allow-overlap: true;
    marker-line-width: 0;
    marker-fill: [marker-color];
    marker-file:url('icon/[marker-symbol]-24.svg');
    marker-width: 30;
  }
  
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