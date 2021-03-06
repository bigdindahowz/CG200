#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "shapes3.inc"
 

camera {
  angle    35
  location <0 , 5 ,-40.0>
  right    x*image_width/image_height
  look_at  <-1.0 , 3.5, 5.0>
  rotate   <0,-360*clock,0>
}
      
plane{ <0,1,0>, 0
        texture{
         pigment{color rgb<.35,.65,0>*.7}
         normal { bumps 0.75 scale 0.015}
         finish { phong 0.1 }
        } // end of texture
}

plane{<0,1,0>,1 hollow
       texture{
        pigment{ bozo turbulence 0.92
          color_map {
           [0.00 rgb <0.2, 0.3, 1>*0.5]
           [0.50 rgb <0.2, 0.3, 1>*0.8]
           [0.70 rgb <1,1,1>]
           [0.85 rgb <0.25,0.25,0.25>]
           [1.0 rgb <0.5,0.5,0.5>]}
          scale<1,1,1.5>*2.5
          translate<1.0,0,-1>
          }
        finish {ambient 1 diffuse 0}
        }// end of texture
        scale 10000
} //Sky  
     
fog { fog_type   2
      distance   80
      color      White
      fog_offset 0.1
      fog_alt    1.5
      turbulence 1.8
}

union{
    cylinder{
     <0,1,0>,
     <0,1.5,0>,
     0.15
     pigment{Pine_Wood scale 2 turbulence 0.5}  
     normal {bumps 1 scale 0.002}
     finish{phong 1}
    }    
    
    cone{
     <0,4,0>, 0.0
     <0,1.5,0>, 0.5
     pigment{DarkGreen scale 2}
     normal { bumps 0.7 scale .002}
     finish{phong 0.2}
    }
    translate <1,-1,3>
} // TREE

union{
    sphere{
         <0.5,0,0>,0.2
         pigment{DMFDarkOak}
    } // HEAD
    
    sphere{
         <0.2,0,0.4>,0.12
         pigment{DMFDarkOak}
    }  // Left Arm
    
    sphere{
         <-0.2,0,0.5>,0.12
         pigment{DMFDarkOak}
    } // Left Leg
    
    sphere{
         <0.3,0,-0.4>,0.15
         pigment{DMFDarkOak}
    } // RIght Arm
    
    sphere{
         <-0.2,0,-0.4>,0.15
         pigment{DMFDarkOak}
    } // Right Leg  
    
    object {
       intersection{
       plane {-y,0}
       object{ Facetted_Sphere (6, 16 )
            texture{ pigment{ ForestGreen}
                     finish { phong 0.1} 
                     normal {bumps 0.5 scale 0.05}
                   }
            scale<0.5,0.5,0.5> rotate<0,0,0>
            }
      
        }
    }  
    translate <2,0,1> 
    scale<2,2,2>
    rotate   <0,360*clock,0> 
} // TURTLE  

union{
    cone{
         <0,0,0>, 0.0
         <0,2,0>, 0.25
         pigment{OrangeRed scale 2}
         normal { bumps 0.7 scale .002}
         finish{phong 0.2}
        } 
        
    object{
        intersection {
          plane {-y,0} // could use x, instead of y, for East/West
         // negative y for northern hemisphere, positive for southern
          sphere {0,0.25}
          pigment {OrangeRed scale 2}
          normal { bumps 0.7 scale .002}
          finish{phong 0.2}
        }
        translate <0,2,0>   
    }
    
    cone{
         <0,0,0>, 0.0
         <0,0.7,0>, 0.1
         pigment{HuntersGreen scale 2}
         normal { bumps 0.7 scale .002}
         rotate <0,0,20>  
         translate <0,2,0>
        } // Leaf One
    
    cone{
         <0,0,0>, 0.0
         <0,0.7,0>, 0.1
         pigment{HuntersGreen scale 2}
         normal { bumps 0.7 scale .002}
         rotate <0,0,-10>  
         translate <0,2,0>
        } // Leaf Two
    
    cone{
         <0,0,0>, 0.0
         <0,0.7,0>, 0.1
         pigment{HuntersGreen scale 2}
         normal { bumps 0.7 scale .002}
         finish{phong 0.2} 
         rotate <0,0,10>  
         translate <0,2,0>
        } // Leaf Three 
    rotate <0,0,-30> 
    translate <-3,0,4>
}  // Carrot
 
union{
    torus{ 1.0,0.5 scale <1,1.1>
                    pigment{ DarkBrown} 
                    normal{ bumps 0.3 scale .002}
                    finish { phong 0.5}
           rotate<90,0,0> translate<-1,3,-2>
         }
    
    text{
     ttf "GOTHIC" "THE BIG" 0.1, 0
     pigment {NeonPink}
     translate <-3.4,7.5,-5.1> 
     scale 0.5
     
    } 
    
    text{
     ttf "GOTHIC" "DONUT" 0.1, 0
     pigment {NeonPink} 
     translate <-3.4,4,-5.1>
     scale 0.5
    }  
    
    translate <2,0,8>
    rotate <0,45,0>
}// The Big Donut from Zootopia

union{
    cylinder{
         <0,1,0>,
         <0,6,0>,
         0.05
         pigment{VeryDarkBrown scale 2 turbulence 0.5}  
         normal {bumps 0.5 scale 0.002}
         finish{phong 1}
        }   // Pole
    
    cylinder{
         <0,0,0>,
         <0,3,0>,
         0.1
         pigment{VeryDarkBrown scale 2 turbulence 0.5}  
         normal {bumps 0.5 scale 0.002}
         finish{phong 1}
        }   // Base 
        
    box{
     <0,0,-1>,
     <-1,1,-1.1>
     pigment{Gold scale 3} 
     normal {bumps 0.5 scale 0.1}
     translate <1,4,1.1>
    }  
    
    box{
     <0,0,-1>,
     <-1.7,0.5,-1.1>
     pigment{Green scale 3} 
     
     translate <1.7,5.3,1.1>
    }
    
    sphere{
             <0,0,0>,0.1
             pigment{DMFDarkOak}  
             translate <0,6,0>
        } 
        
    text{
         ttf "GOTHIC" "ZOOTOPIA" 0.5, 0
         pigment {White}
         translate <1.9,27,-0.4>      scale 0.2
         
        } 
        
        rotate <0,30,0>  
        translate <2,0,5>
} // Traffic Light
 
union{
    ovus{ 0.80, 0.65
      // base_radius, top_radius
      // with  top_radius < base_radius!
      texture{
       pigment{ White}
       } 
       translate <0,1,0>
    }

    ovus{ 
        0.40, 0.3
      // base_radius, top_radius
      // with  top_radius < base_radius!
      texture{
       pigment{ White}
       } 
       translate <0,2.5,0>
    }   
    
    sphere{
                 <0,0,0>,0.1
                 pigment{Black}
                 translate <0.2,3.1,0>  
            }
            
    sphere{
                 <0,0,0>,0.1
                 pigment{Black}
                 translate <-0.2,3.1,0>  
            }
            
    sphere{
                 <0,0,0>,0.12
                 pigment{Black}
                 translate <-0.15,2.8,-0.3>  
            }
            
    sphere{
                 <0,0,0>,0.12
                 pigment{Black}
                 translate <0.15,2.8,-0.3>  
            }
            
    sphere{
                 <0,0,0>,0.3
                 pigment{Black}
                 translate <-0.6,2,0>  
            } 
            
    sphere{
                 <0,0,0>,0.3
                 pigment{Black}
                 translate <0.6,2,0>  
            }
            
    sphere{
                 <0,0,0>,0.3
                 pigment{Black}
                 translate <0.6,0.5,0>  
            }
             
    sphere{
                 <0,0,0>,0.3
                 pigment{Black}
                 translate <-0.6,0.5,0>  
            }
            
    translate <-5,0,6>
    rotate   <0,360*clock,0> 
} // Panda

union{
    box{
         <0,0,-1>,
         <2,1,1>
         pigment{Black scale 3} 
         normal {bumps 0.1 scale 0.1}
        } // Bottom of fishtank
    
    box{
         <0,0,-1>,
         <2,2,1>
         pigment{White filter 0.8} 
         normal {bumps 0.3 scale 0.1}
         translate <0,1,0>
        } // Water of fish tank
        
    box{
         <0,0,-1>,
         <2,0.3,1>
         pigment{Black scale 3} 
         normal {bumps 0.1 scale 0.1} 
         translate <0,3,0>
        } // Top of fish tank
    translate <-3,0,8>   
} // Fish tank
 
light_source{
	<2,3,-3> // Light source situated at <2,3,-3>
	color White // Light shines the color White
}

light_source{
	<150,100,-60> // Light source situated at <2,3,-3>
	color VLightGrey // Light shines the color White
} 

light_source{
	<-150,200,120> // Light source situated at <2,3,-3>
	color Black // Light shines the color White
}