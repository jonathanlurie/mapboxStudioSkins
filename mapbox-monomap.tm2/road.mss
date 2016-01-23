/*
 * ==================================================
 * ROADS, BRIDGES AND TUNNELS
 * ==================================================
 * 
*/

#road, #bridge, #tunnel {
  
  // MOTORWAYS
  
  [class='motorway'] {
    [zoom>=6] {
      ::case { line-color: lighten(@turqois, 5%); }
      ::fill { line-color: lighten(@turqois, 5%); }   
    }
    [zoom>=8] {
      ::case { line-color: lighten(@turqois, 5%); }
      ::fill { line-color: @white; }   
    }
    [zoom>=6] {
      ::case { line-width: 0; }
      ::fill { line-width: 1; }   
    }
    [zoom>=7] {
      ::case { line-width: 0; }
      ::fill { line-width: 1.5; }   
    }
    [zoom>=8] {
      ::case { line-width: 3; }
      ::fill { line-width: 2; }   
    }
    [zoom>=9] {
      ::case { line-width: 5; }
      ::fill { line-width: 3; }   
    }
    [zoom>=10] {
      ::case { line-width: 6; }
      ::fill { line-width: 4; }   
    }
     [zoom>=11] {
      ::case { line-width: 7.5; }
      ::fill { line-width: 5; }   
    }
    [zoom>=12] {
      ::case { line-width: 8; }
      ::fill { line-width: 6; }   
    }
    [zoom>=13] {
      ::case { line-width: 11; }
      ::fill { line-width: 9; }   
    }
    [zoom>=14] {
      ::case { line-width: 15; }
      ::fill { line-width: 12; }   
    }
    [zoom>=15] {
      ::case { line-width: 15; }
      ::fill { line-width: 7.5; }   
    }
    [zoom>=16] {
      ::case { line-width: 8.5; }
      ::fill { line-width: 4.25; }   
    }
    [zoom>=17] {
      ::case { line-width: 9; }
      ::fill { line-width: 4.5; }   
    }
    [zoom>=18] {
      ::case { line-width: 9.5; }
      ::fill { line-width: 4.75; }   
    }
  } // END OF: [class='motorway']
  
  // MAIN ROAD AND MOTORWAY LINKS
  
  [class='main'],
  [class='motorway_link'] {
     [zoom>=6] {
      ::case { line-color: lighten(@turqois, 5%); }
      ::fill { line-color: lighten(@turqois, 5%); }   
    }
    [zoom>=9] {
      ::case { line-color: lighten(@turqois, 5%); }
      ::fill { line-color: @white; }   
    }
    [zoom>=6] {
      ::case { line-width: 0; }
      ::fill { line-width: 0.5; }   
    }
    [zoom>=7] {
      ::case { line-width: 0; }
      ::fill { line-width: 0.75; }   
    }
    [zoom>=8] {
      ::case { line-width: 0; }
      ::fill { line-width: 1.25; }   
    }
    [zoom>=9] {
      ::case { line-width: 3; }
      ::fill { line-width: 1.75; }   
    }
    [zoom>=10] {
      ::case { line-width: 4; }
      ::fill { line-width: 2.5; }   
    }
    [zoom>=11] {
      ::case { line-width: 5; }
      ::fill { line-width: 3; }   
    }
    [zoom>=12] {
      ::case { line-width: 5.5; }
      ::fill { line-width: 3.5; }   
    }
    [zoom>=13] {
      ::case { line-width: 5.5; }
      ::fill { line-width: 2.75; }   
    }
     [zoom>=14] {
      ::case { line-width: 6; }
      ::fill { line-width: 3; }   
    }
    [zoom>=15] {
      ::case { line-width: 10; }
      ::fill { line-width: 5; }   
    }
    [zoom>=16] {
      ::case { line-width: 7; }
      ::fill { line-width: 3.5; }   
    }
    [zoom>=17] {
      ::case { line-width: 7.5; }
      ::fill { line-width: 3.75; }   
    }
    [zoom>=18] {
      ::case { line-width: 8; }
      ::fill { line-width: 4; }   
    }
  } // END OF: [class='main'], [class='motorway_link']
  
  // STREETS
  
  [class='street']  {
    [zoom>=12] {
      ::case {
        line-color: lighten(@turqois, 5%);
        line-width: 0;
      }
      ::fill {
        line-color: lighten(@turqois, 5%);
        line-cap: round;
        line-width: 1; 
      }   
    }
     [zoom>=14] {
      ::case {
        line-color: lighten(@turqois, 5%);
        line-cap: round;
        line-width: 3; 
      }
      ::fill { 
        line-color: @white;
        line-width: 1.5; 
      }   
    }
    [zoom>=15] {
      ::case { line-width: 7; }
      ::fill { line-width: 3.5; }   
    }
    [zoom>=16] {
      ::case { line-width: 7; }
      ::fill { line-width: 3.5; }   
    }
    [zoom>=17] {
      ::case { line-width: 7.5; }
      ::fill { line-width: 3.75; }   
    }
    [zoom>=18] {
      ::case { line-width: 8; }
      ::fill { line-width: 4; }   
    }
  } // END OF: [class='street'], 
  
  // PATHS AND LIMITED STREETS
  
  [class='path'],
  [class='street_limited'] {
    [zoom>=15] {      
      line-color: lighten(@turqois, 10%); 
      line-cap: round;
      line-width: 1;
    }
    [zoom>=16] {      
      line-color: lighten(@turqois, 5%); 
    }
     [zoom>=17] {      
       line-width: 2;
       [type='path'] {      
         line-dasharray: 3, 5;
      }
    }
  } // END OF: [class='path'], [class='street_limited']
  
  // RAILS
  
  [class='major_rail'],
  [class='minor_rail'] {
    ::case {
      line-color: lighten(@turqois, 10%); 
      line-cap: round;
      line-width: 5;
    }
    ::fill {
      line-color: lighten(@turqois, 20%); 
      line-width: 3;
      line-cap: round;
    }
  } // END OF: [class='rail'], [class='minor_rail']
} // END OF: #road, #bridge, #tunnel

/*
 * ==================================================
 * TUNNELS
 * ==================================================
 * 
*/


#tunnel {
  [class='motorway'],
  [class='main'],
  [class='motorway_link'],
  [class='street'],
  [class='major_rail'],
  [class='minor_rail'] {
    ::case {
      line-opacity: 0.5;
    }
    ::fill {
      line-opacity: 0.5;
    }
  }
} // END OF: #tunnel