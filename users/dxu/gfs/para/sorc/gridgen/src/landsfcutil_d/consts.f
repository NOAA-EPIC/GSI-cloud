 module consts
!$$$  module documentation block
!
! module:    constants
!   prgmmr: gayno         org: w/np2     date: 2005-05-20
!
! abstract: declare physical constants, model grid parameters
!
! program history log:
!   2005-05-20  gayno   - initial version
!
! usage: use consts
!
! remarks: some variable definitions
!   blim             - limit on the soil 'b' parameter. see noah
!                      lsm for more details
!   ck               - parameter used in function frh20 of noah 
!                      lsm.
!   cp               - specific heat at const pressure (J deg-1 kg-1)
!   frz_h20          - melting point of fresh water (K)
!   frz_ice          - melting point of sea water (K)
!   grav             - gravity (m s-2)
!   hlice            - latent heat of fusion at 0C (J kg-1)
!   lapse_rate       - standard atmos lapse rate (deg K m-1)
!   lonsperlat_txxx  - for global grids, the number of i points
!                      in each row
!   rdry             - gas constant (J deg-1 kg-1
!   rovcp            - rdry divided by cp
!
!
! attributes:
!   language: fortran 90
!   machine:  ibm sp
!
!$$$

 real, parameter           :: cp          = 1004.0 
 real, parameter           :: frz_h20     = 273.15 
 real, parameter           :: frz_ice     = 271.21 
 real, parameter           :: grav        = 9.81   
 real, parameter           :: hlice       = 3.335E5 
 real, parameter           :: lapse_rate  = 6.5e-03
 real, parameter           :: rdry        = 287.0  
 real, parameter           :: rovcp       = rdry/cp
 real, parameter           :: blim        = 5.5 
 real, parameter           :: ck          = 8.0 

 integer                   :: lonsperlat_t62(47)
 integer                   :: lonsperlat_t126(95)
 integer                   :: lonsperlat_t170(128)
 integer                   :: lonsperlat_t190(144)
 integer                   :: lonsperlat_t254(192)
 integer                   :: lonsperlat_t382(288)

 data lonsperlat_t62  /   &
         30,  30,  30,  40,  48,  56,  60,  72,  72,  80,  90,  90, &
         96, 110, 110, 120, 120, 128, 144, 144, 144, 144, 154, 160, &
        160, 168, 168, 180, 180, 180, 180, 180, 180, 192, 192, 192, &
        192, 192, 192, 192, 192, 192, 192, 192, 192, 192, 192 /

 data lonsperlat_t126  /  &
         30,   30,   36,   48,   56,   60,   72,   72,   80,   90, &
         96,  110,  110,  120,  120,  128,  144,  144,  154,  160, &
        160,  180,  180,  180,  192,  192,  210,  210,  220,  220, &
        240,  240,  240,  240,  240,  252,  256,  280,  280,  280, &
        280,  288,  288,  288,  288,  308,  308,  308,  320,  320, &
        320,  320,  330,  330,  360,  360,  360,  360,  360,  360, &
        360,  360,  360,  360,  360,  360,  384,  384,  384,  384, &
        384,  384,  384,  384,  384,  384,  384,  384,  384,  384, &
        384,  384,  384,  384,  384,  384,  384,  384,  384,  384, &
        384,  384,  384,  384,  384/

 data lonsperlat_t170 /   &
         48,  48,  48,  48,  48,  56,  60,  72,  72,  80,  90,  96,  &
        110, 110, 120, 120, 128, 144, 144, 144, 154, 160, 168, 180,  &
        180, 180, 192, 210, 210, 220, 220, 240, 240, 240, 240, 240,  &
        252, 256, 280, 280, 280, 288, 288, 288, 308, 308, 320, 320,  &
        320, 320, 330, 360, 360, 360, 360, 360, 360, 360, 384, 384,  &
        384, 384, 384, 384, 420, 420, 420, 440, 440, 440, 440, 440,  &
        440, 440, 440, 440, 462, 462, 462, 462, 462, 480, 480, 480,  &
        480, 480, 480, 480, 480, 480, 480, 480, 504, 504, 504, 504,  &
        504, 504, 504, 504, 504, 512, 512, 512, 512, 512, 512, 512,  &
        512, 512, 512, 512, 512, 512, 512, 512, 512, 512, 512, 512,  &
        512, 512, 512, 512, 512, 512, 512, 512 /

 data lonsperlat_t254  /  &
         64,   64,   64,   64,   64,   64,   72,   72,   80,   90,  &
         96,  110,  110,  120,  120,  128,  144,  144,  154,  160,  &
        168,  180,  180,  180,  192,  192,  210,  220,  220,  240,  &
        240,  240,  240,  252,  256,  280,  280,  280,  288,  288,  &
        288,  308,  308,  320,  320,  320,  330,  360,  360,  360,  &
        360,  360,  360,  384,  384,  384,  384,  420,  420,  420,  &
        440,  440,  440,  440,  440,  440,  462,  462,  462,  480,  &
        480,  480,  480,  480,  480,  504,  504,  504,  504,  512,  &
        512,  560,  560,  560,  560,  560,  560,  576,  576,  576,  &
        576,  576,  576,  576,  576,  616,  616,  616,  616,  616,  &
        616,  640,  640,  640,  640,  640,  640,  640,  640,  640,  &
        640,  660,  660,  660,  720,  720,  720,  720,  720,  720,  &
        720,  720,  720,  720,  720,  720,  720,  720,  720,  720,  &
        720,  720,  720,  720,  720,  720,  720,  720,  768,  768,  &
        768,  768,  768,  768,  768,  768,  768,  768,  768,  768,  &
        768,  768,  768,  768,  768,  768,  768,  768,  768,  768,  &
        768,  768,  768,  768,  768,  768,  768,  768,  768,  768,  &
        768,  768,  768,  768,  768,  768,  768,  768,  768,  768,  &
        768,  768,  768,  768,  768,  768,  768,  768,  768,  768,  &
        768,  768/


      data lonsperlat_t382(   1:   5) /  64,  64,  64,  64,  64/
      data lonsperlat_t382(   6:  10) /  64,  64,  70,  80,  84/
      data lonsperlat_t382(  11:  15) /  88,  96, 110, 110, 120/
      data lonsperlat_t382(  16:  20) / 126, 132, 140, 144, 154/
      data lonsperlat_t382(  21:  25) / 160, 168, 176, 180, 192/
      data lonsperlat_t382(  26:  30) / 192, 198, 210, 220, 220/
      data lonsperlat_t382(  31:  35) / 224, 240, 240, 252, 252/
      data lonsperlat_t382(  36:  40) / 256, 264, 280, 280, 280/
      data lonsperlat_t382(  41:  45) / 288, 308, 308, 308, 320/
      data lonsperlat_t382(  46:  50) / 320, 330, 336, 352, 352/
      data lonsperlat_t382(  51:  55) / 352, 360, 384, 384, 384/
      data lonsperlat_t382(  56:  60) / 384, 396, 396, 420, 420/
      data lonsperlat_t382(  61:  65) / 420, 420, 440, 440, 440/
      data lonsperlat_t382(  66:  70) / 448, 448, 462, 462, 480/
      data lonsperlat_t382(  71:  75) / 480, 480, 504, 504, 504/
      data lonsperlat_t382(  76:  80) / 504, 512, 528, 528, 528/
      data lonsperlat_t382(  81:  85) / 560, 560, 560, 560, 560/
      data lonsperlat_t382(  86:  90) / 560, 576, 576, 616, 616/
      data lonsperlat_t382(  91:  95) / 616, 616, 616, 616, 616/
      data lonsperlat_t382(  96: 100) / 616, 630, 630, 640, 640/
      data lonsperlat_t382( 101: 105) / 660, 660, 660, 660, 672/
      data lonsperlat_t382( 106: 110) / 672, 704, 704, 704, 704/
      data lonsperlat_t382( 111: 115) / 704, 704, 720, 720, 720/
      data lonsperlat_t382( 116: 120) / 768, 768, 768, 768, 768/
      data lonsperlat_t382( 121: 125) / 768, 768, 768, 768, 768/
      data lonsperlat_t382( 126: 130) / 792, 792, 792, 792, 792/
      data lonsperlat_t382( 131: 135) / 840, 840, 840, 840, 840/
      data lonsperlat_t382( 136: 140) / 840, 840, 840, 840, 840/
      data lonsperlat_t382( 141: 145) / 880, 880, 880, 880, 880/
      data lonsperlat_t382( 146: 150) / 880, 880, 880, 880, 880/
      data lonsperlat_t382( 151: 155) / 896, 896, 896, 896, 924/
      data lonsperlat_t382( 156: 160) / 924, 924, 924, 924, 924/
      data lonsperlat_t382( 161: 165) / 960, 960, 960, 960, 960/
      data lonsperlat_t382( 166: 170) / 960, 960, 960, 960, 960/
      data lonsperlat_t382( 171: 175) / 990, 990, 990, 990, 990/
      data lonsperlat_t382( 176: 180) / 990, 990, 990,1008,1008/
      data lonsperlat_t382( 181: 185) /1008,1008,1008,1008,1024/
      data lonsperlat_t382( 186: 190) /1024,1024,1024,1024,1024/
      data lonsperlat_t382( 191: 195) /1056,1056,1056,1056,1056/
      data lonsperlat_t382( 196: 200) /1056,1056,1056,1056,1056/
      data lonsperlat_t382( 201: 205) /1120,1120,1120,1120,1120/
      data lonsperlat_t382( 206: 210) /1120,1120,1120,1120,1120/
      data lonsperlat_t382( 211: 215) /1120,1120,1120,1120,1120/
      data lonsperlat_t382( 216: 220) /1120,1120,1120,1120,1120/
      data lonsperlat_t382( 221: 225) /1120,1120,1120,1120,1120/
      data lonsperlat_t382( 226: 230) /1120,1120,1120,1120,1120/
      data lonsperlat_t382( 231: 235) /1120,1152,1152,1152,1152/
      data lonsperlat_t382( 236: 240) /1152,1152,1152,1152,1152/
      data lonsperlat_t382( 241: 245) /1152,1152,1152,1152,1152/
      data lonsperlat_t382( 246: 250) /1152,1152,1152,1152,1152/
      data lonsperlat_t382( 251: 255) /1152,1152,1152,1152,1152/
      data lonsperlat_t382( 256: 260) /1152,1152,1152,1152,1152/
      data lonsperlat_t382( 261: 265) /1152,1152,1152,1152,1152/
      data lonsperlat_t382( 266: 270) /1152,1152,1152,1152,1152/
      data lonsperlat_t382( 271: 275) /1152,1152,1152,1152,1152/
      data lonsperlat_t382( 276: 280) /1152,1152,1152,1152,1152/
      data lonsperlat_t382( 281: 285) /1152,1152,1152,1152,1152/
      data lonsperlat_t382( 286: 288) /1152,1152,1152/

      data lonsperlat_t190(   1:   5) /  64,  64,  64,  64,  64/
      data lonsperlat_t190(   6:  10) /  64,  64,  70,  80,  84/
      data lonsperlat_t190(  11:  15) /  88, 110, 110, 110, 120/
      data lonsperlat_t190(  16:  20) / 126, 132, 140, 144, 154/
      data lonsperlat_t190(  21:  25) / 160, 168, 176, 176, 192/
      data lonsperlat_t190(  26:  30) / 192, 198, 210, 210, 220/
      data lonsperlat_t190(  31:  35) / 220, 240, 240, 240, 252/
      data lonsperlat_t190(  36:  40) / 252, 256, 264, 280, 280/
      data lonsperlat_t190(  41:  45) / 280, 288, 308, 308, 308/
      data lonsperlat_t190(  46:  50) / 320, 320, 320, 330, 336/
      data lonsperlat_t190(  51:  55) / 352, 352, 352, 352, 360/
      data lonsperlat_t190(  56:  60) / 384, 384, 384, 384, 384/
      data lonsperlat_t190(  61:  65) / 396, 396, 420, 420, 420/
      data lonsperlat_t190(  66:  70) / 420, 420, 440, 440, 440/
      data lonsperlat_t190(  71:  75) / 440, 440, 448, 448, 462/
      data lonsperlat_t190(  76:  80) / 462, 462, 480, 480, 480/
      data lonsperlat_t190(  81:  85) / 480, 480, 504, 504, 504/
      data lonsperlat_t190(  86:  90) / 504, 504, 504, 504, 512/
      data lonsperlat_t190(  91:  95) / 512, 528, 528, 528, 528/
      data lonsperlat_t190(  96: 100) / 528, 528, 560, 560, 560/
      data lonsperlat_t190( 101: 105) / 560, 560, 560, 560, 560/
      data lonsperlat_t190( 106: 110) / 560, 560, 560, 560, 560/
      data lonsperlat_t190( 111: 115) / 560, 576, 576, 576, 576/
      data lonsperlat_t190( 116: 120) / 576, 576, 576, 576, 576/
      data lonsperlat_t190( 121: 125) / 576, 576, 576, 576, 576/
      data lonsperlat_t190( 126: 130) / 576, 576, 576, 576, 576/
      data lonsperlat_t190( 131: 135) / 576, 576, 576, 576, 576/
      data lonsperlat_t190( 136: 140) / 576, 576, 576, 576, 576/
      data lonsperlat_t190( 141: 144) / 576, 576, 576, 576/

 end module consts
