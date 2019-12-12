#!/bin/bash 

PATH=/data/axis_debug3
PATH=$PATH:/data/csexec
PATH=$PATH:/data/axis_debug3/lib810_1a
#PATH=$PATH:/usr/cqcs/server7.70_1a
PATH=$PATH:/usr/cqcs/V800_RELEASE_22072017
PATH=$PATH:/usr/cqcs/license
PATH=$PATH:/software/shells
PATH=$PATH:/software/source/scips/version810_1a/dm
#PATH=$PATH:/software/source/scips/version730_3a/dm
PATH=$PATH:.
PATH=$PATH:/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/etc/bin
PATH=$PATH:/etc
PATH=$PATH:/usr/local/bin
PATH=$PATH:/sbin
PATH=$PATH:/software/source/scips/version7/includes/axis

cd /software/source/cvs_projects/davep/axis/version7_agt

function cleanup {
   rm -f agtmt*.sb
   rm agqlib
}

function compile {
  cscomp -nowarn agtmt001
  cscomp -nowarn agtmt104
  cscomp -nowarn agtmt001a
  cscomp -nowarn agtmt001b
  cscomp -nowarn agtmt001c
  cscomp -nowarn agtmt001d
  cscomp -nowarn agtmt001e
  cscomp -nowarn agtmt001f
  cscomp -nowarn agtmt001g
  cscomp -nowarn agtmt001h
  cscomp -nowarn agtmt001i
  cscomp -nowarn agtmt001j
  cscomp -nowarn agtmt001k
  cscomp -nowarn agtmt010
  cscomp -nowarn agtmt010a
  cscomp -nowarn agtmt010b
  cscomp -nowarn agtmt010c
  cscomp -nowarn agtmt100
  cscomp -nowarn agtmt1000
  cscomp -nowarn agtmt1000a
  cscomp -nowarn agtmt1000b
  cscomp -nowarn agtmt1000c
  cscomp -nowarn agtmt1000d
  cscomp -nowarn agtmt1000e
  cscomp -nowarn agtmt1000f
  cscomp -nowarn agtmt1000g
  cscomp -nowarn agtmt100a
  cscomp -nowarn agtmt100b
  cscomp -nowarn agtmt100c
  cscomp -nowarn agtmt100d
  cscomp -nowarn agtmt100e
  cscomp -nowarn agtmt100f
  cscomp -nowarn agtmt100g
  cscomp -nowarn agtmt100h
  cscomp -nowarn agtmt100i
  cscomp -nowarn agtmt100j
  cscomp -nowarn agtmt100k
  cscomp -nowarn agtmt100l
  cscomp -nowarn agtmt101
  cscomp -nowarn agtmt101a
  cscomp -nowarn agtmt102
  cscomp -nowarn agtmt102a
  cscomp -nowarn agtmt103
  cscomp -nowarn agtmt105
  cscomp -nowarn agtmt1100
  cscomp -nowarn agtmt1200
  cscomp -nowarn agtmt1200a
  cscomp -nowarn agtmt1201
  cscomp -nowarn agtmt1202
  cscomp -nowarn agtmt1202m
  cscomp -nowarn agtmt1203
  cscomp -nowarn agtmt1204
  cscomp -nowarn agtmt1205
  cscomp -nowarn agtmt1206
  cscomp -nowarn agtmt1206a
  cscomp -nowarn agtmt1206b
  cscomp -nowarn agtmt1206c
  cscomp -nowarn agtmt1207
  cscomp -nowarn agtmt1208
  cscomp -nowarn agtmt1208a
  cscomp -nowarn agtmt200
  cscomp -nowarn agtmt200a
  cscomp -nowarn agtmt200b
  cscomp -nowarn agtmt200c
  cscomp -nowarn agtmt201
  cscomp -nowarn agtmt202
  cscomp -nowarn agtmt202m
  cscomp -nowarn agtmt203
  cscomp -nowarn agtmt204
  cscomp -nowarn agtmt204a
  cscomp -nowarn agtmt205
  cscomp -nowarn agtmt205a
  cscomp -nowarn agtmt205b
  cscomp -nowarn agtmt206
  cscomp -nowarn agtmt206a
  cscomp -nowarn agtmt206b
  cscomp -nowarn agtmt206c
  cscomp -nowarn agtmt207
  cscomp -nowarn agtmt207a
  cscomp -nowarn agtmt208
  cscomp -nowarn agtmt208a
  cscomp -nowarn agtmt208b
  cscomp -nowarn agtmt300
  cscomp -nowarn agtmt3000
  cscomp -nowarn agtmt3001
  cscomp -nowarn agtmt3002
  cscomp -nowarn agtmt3002a
  cscomp -nowarn agtmt3002b
  cscomp -nowarn agtmt3002c
  cscomp -nowarn agtmt3002d
  cscomp -nowarn agtmt3003
  cscomp -nowarn agtmt3004
  cscomp -nowarn agtmt3005
  cscomp -nowarn agtmt3005a
  cscomp -nowarn agtmt3006
  cscomp -nowarn agtmt3007
  cscomp -nowarn agtmt3008
  cscomp -nowarn agtmt3009
  cscomp -nowarn agtmt301
  cscomp -nowarn agtmt3010
  cscomp -nowarn agtmt3011
  cscomp -nowarn agtmt3011a
  cscomp -nowarn agtmt3011b
  cscomp -nowarn agtmt3011c
  cscomp -nowarn agtmt3012
  cscomp -nowarn agtmt3012a
  cscomp -nowarn agtmt3012b
  cscomp -nowarn agtmt3013
  cscomp -nowarn agtmt3014
  cscomp -nowarn agtmt3014a
  cscomp -nowarn agtmt3015
  cscomp -nowarn agtmt3016
  cscomp -nowarn agtmt3017
  cscomp -nowarn agtmt3018
  cscomp -nowarn agtmt302
  cscomp -nowarn agtmt3020
  cscomp -nowarn agtmt3021
  cscomp -nowarn agtmt3022
  cscomp -nowarn agtmt3023
  cscomp -nowarn agtmt3024
  cscomp -nowarn agtmt3025
  cscomp -nowarn agtmt3026
  cscomp -nowarn agtmt3027
  cscomp -nowarn agtmt3028
  cscomp -nowarn agtmt3029
  cscomp -nowarn agtmt303
  cscomp -nowarn agtmt3030
  cscomp -nowarn agtmt3031
  cscomp -nowarn agtmt3032
  cscomp -nowarn agtmt3033
  cscomp -nowarn agtmt3033a
  cscomp -nowarn agtmt304
  cscomp -nowarn agtmt305
  cscomp -nowarn agtmt306
  cscomp -nowarn agtmt307
  cscomp -nowarn agtmt308
  cscomp -nowarn agtmt309
  cscomp -nowarn agtmt310
  cscomp -nowarn agtmt311
  cscomp -nowarn agtmt312
  cscomp -nowarn agtmt313
  cscomp -nowarn agtmt314
  cscomp -nowarn agtmt315
  cscomp -nowarn agtmt316
  cscomp -nowarn agtmt317
  cscomp -nowarn agtmt318
  cscomp -nowarn agtmt319
  cscomp -nowarn agtmt320
  cscomp -nowarn agtmt321
  cscomp -nowarn agtmt322
  cscomp -nowarn agtmt323
  cscomp -nowarn agtmt324
  cscomp -nowarn agtmt325
  cscomp -nowarn agtmt326
  cscomp -nowarn agtmt327
  cscomp -nowarn agtmt327a
  cscomp -nowarn agtmt328
  cscomp -nowarn agtmt328a
  cscomp -nowarn agtmt329
  cscomp -nowarn agtmt329a
  cscomp -nowarn agtmt330
  cscomp -nowarn agtmt331
  cscomp -nowarn agtmt332
  cscomp -nowarn agtmt332a
  cscomp -nowarn agtmt333
  cscomp -nowarn agtmt334
  cscomp -nowarn agtmt335
  cscomp -nowarn agtmt336
  cscomp -nowarn agtmt337
  cscomp -nowarn agtmt338
  cscomp -nowarn agtmt339
  cscomp -nowarn agtmt340
  cscomp -nowarn agtmt341
  cscomp -nowarn agtmt341a
  cscomp -nowarn agtmt342
  cscomp -nowarn agtmt343
  cscomp -nowarn agtmt344
  cscomp -nowarn agtmt344a
  cscomp -nowarn agtmt345
  cscomp -nowarn agtmt345a
  cscomp -nowarn agtmt346
  cscomp -nowarn agtmt346a
  cscomp -nowarn agtmt346b
  cscomp -nowarn agtmt347
  cscomp -nowarn agtmt347a
  cscomp -nowarn agtmt348
  cscomp -nowarn agtmt349
  cscomp -nowarn agtmt350
  cscomp -nowarn agtmt351
  cscomp -nowarn agtmt352
  cscomp -nowarn agtmt353
  cscomp -nowarn agtmt354
  cscomp -nowarn agtmt355
  cscomp -nowarn agtmt356
  cscomp -nowarn agtmt356a
  cscomp -nowarn agtmt357
  cscomp -nowarn agtmt358
  cscomp -nowarn agtmt359
  cscomp -nowarn agtmt360
  cscomp -nowarn agtmt361
  cscomp -nowarn agtmt362
  cscomp -nowarn agtmt363
  cscomp -nowarn agtmt364
  cscomp -nowarn agtmt365
  cscomp -nowarn agtmt366
  cscomp -nowarn agtmt367
  cscomp -nowarn agtmt368
  cscomp -nowarn agtmt369
  cscomp -nowarn agtmt370
  cscomp -nowarn agtmt371
  cscomp -nowarn agtmt372
  cscomp -nowarn agtmt373
  cscomp -nowarn agtmt374
  cscomp -nowarn agtmt375
  cscomp -nowarn agtmt376
  cscomp -nowarn agtmt377
  cscomp -nowarn agtmt378
  cscomp -nowarn agtmt379
  cscomp -nowarn agtmt380
  cscomp -nowarn agtmt381
  cscomp -nowarn agtmt382
  cscomp -nowarn agtmt383
  cscomp -nowarn agtmt384
  cscomp -nowarn agtmt385
  cscomp -nowarn agtmt386
  cscomp -nowarn agtmt387
  cscomp -nowarn agtmt388
  cscomp -nowarn agtmt389
  cscomp -nowarn agtmt390
  cscomp -nowarn agtmt391
  cscomp -nowarn agtmt392
  cscomp -nowarn agtmt393
  cscomp -nowarn agtmt394
  cscomp -nowarn agtmt395
  cscomp -nowarn agtmt396
  cscomp -nowarn agtmt397
  cscomp -nowarn agtmt398
  cscomp -nowarn agtmt400
  cscomp -nowarn agtmt4000
  cscomp -nowarn agtmt4000a
  cscomp -nowarn agtmt4000b
  cscomp -nowarn agtmt4001
  cscomp -nowarn agtmt4001a
  cscomp -nowarn agtmt4001b
  cscomp -nowarn agtmt4002
  cscomp -nowarn agtmt4003
  cscomp -nowarn agtmt4004
  cscomp -nowarn agtmt4005
  cscomp -nowarn agtmt4006
  cscomp -nowarn agtmt4007
  cscomp -nowarn agtmt401
  cscomp -nowarn agtmt401a
  cscomp -nowarn agtmt401b
  cscomp -nowarn agtmt401c
  cscomp -nowarn agtmt401e
  cscomp -nowarn agtmt401f
  cscomp -nowarn agtmt401g
  cscomp -nowarn agtmt401h
  cscomp -nowarn agtmt401k
  cscomp -nowarn agtmt401n
  cscomp -nowarn agtmt401o
  cscomp -nowarn agtmt402
  cscomp -nowarn agtmt402a
  cscomp -nowarn agtmt403
  cscomp -nowarn agtmt404
  cscomp -nowarn agtmt404a
  cscomp -nowarn agtmt404b
  cscomp -nowarn agtmt405
  cscomp -nowarn agtmt405a
  cscomp -nowarn agtmt405b
  cscomp -nowarn agtmt406
  cscomp -nowarn agtmt407
  cscomp -nowarn agtmt409
  cscomp -nowarn agtmt500
  cscomp -nowarn agtmt501
  cscomp -nowarn agtmt502
  cscomp -nowarn agtmt503
  cscomp -nowarn agtmt504
  cscomp -nowarn agtmt505
  cscomp -nowarn agtmt506
  cscomp -nowarn agtmt507
  cscomp -nowarn agtmt508
  cscomp -nowarn agtmt509
  cscomp -nowarn agtmt510
  cscomp -nowarn agtmt511
  cscomp -nowarn agtmt512
  cscomp -nowarn agtmt513
  cscomp -nowarn agtmt514
  cscomp -nowarn agtmt515
  cscomp -nowarn agtmt516
  cscomp -nowarn agtmt517
  cscomp -nowarn agtmt518
  cscomp -nowarn agtmt519
  cscomp -nowarn agtmt520
  cscomp -nowarn agtmt521
  cscomp -nowarn agtmt522
  cscomp -nowarn agtmt523
  cscomp -nowarn agtmt524
  cscomp -nowarn agtmt525
  cscomp -nowarn agtmt526
  cscomp -nowarn agtmt527
  cscomp -nowarn agtmt528
  cscomp -nowarn agtmt529
  cscomp -nowarn agtmt530
  cscomp -nowarn agtmt531
  cscomp -nowarn agtmt532
  cscomp -nowarn agtmt533
  cscomp -nowarn agtmt534
  cscomp -nowarn agtmt535
  cscomp -nowarn agtmt536
  cscomp -nowarn agtmt537
  cscomp -nowarn agtmt538
  cscomp -nowarn agtmt539
  cscomp -nowarn agtmt540
  cscomp -nowarn agtmt541
  cscomp -nowarn agtmt542
  cscomp -nowarn agtmt543
  cscomp -nowarn agtmt544
  cscomp -nowarn agtmt545
  cscomp -nowarn agtmt546
  cscomp -nowarn agtmt547
  cscomp -nowarn agtmt548
  cscomp -nowarn agtmt549
  cscomp -nowarn agtmt550
  cscomp -nowarn agtmt551
  cscomp -nowarn agtmt552
  cscomp -nowarn agtmt553
  cscomp -nowarn agtmt554
  cscomp -nowarn agtmt555
  cscomp -nowarn agtmt556
  cscomp -nowarn agtmt557
  cscomp -nowarn agtmt558
  cscomp -nowarn agtmt559
  cscomp -nowarn agtmt560
  cscomp -nowarn agtmt561
  cscomp -nowarn agtmt562
  cscomp -nowarn agtmt563
  cscomp -nowarn agtmt564
  cscomp -nowarn agtmt565
  cscomp -nowarn agtmt566
  cscomp -nowarn agtmt567
  cscomp -nowarn agtmt568
  cscomp -nowarn agtmt569
  cscomp -nowarn agtmt570
  cscomp -nowarn agtmt571
  cscomp -nowarn agtmt572
  cscomp -nowarn agtmt573
  cscomp -nowarn agtmt574
  cscomp -nowarn agtmt575
  cscomp -nowarn agtmt576
  cscomp -nowarn agtmt577
  cscomp -nowarn agtmt578
  cscomp -nowarn agtmt579
  cscomp -nowarn agtmt580
  cscomp -nowarn agtmt581
  cscomp -nowarn agtmt582
  cscomp -nowarn agtmt583
  cscomp -nowarn agtmt584
  cscomp -nowarn agtmt585
  cscomp -nowarn agtmt586
  cscomp -nowarn agtmt587
  cscomp -nowarn agtmt588
  cscomp -nowarn agtmt589
  cscomp -nowarn agtmt590
  cscomp -nowarn agtmt591
  cscomp -nowarn agtmt592
  cscomp -nowarn agtmt593
  cscomp -nowarn agtmt594
  cscomp -nowarn agtmt595
  cscomp -nowarn agtmt596
  cscomp -nowarn agtmt597
  cscomp -nowarn agtmt598
  cscomp -nowarn agtmt599
  cscomp -nowarn agtmt59a
  cscomp -nowarn agtmt59b
  cscomp -nowarn agtmt59c
  cscomp -nowarn agtmt59d
  cscomp -nowarn agtmt59z
  cscomp -nowarn agtmt600
  cscomp -nowarn agtmt600a
  cscomp -nowarn agtmt600b
  cscomp -nowarn agtmt601
  cscomp -nowarn agtmt601a
  cscomp -nowarn agtmt601b
  cscomp -nowarn agtmt601c
  cscomp -nowarn agtmt601d
  cscomp -nowarn agtmt601e
  cscomp -nowarn agtmt601f
  cscomp -nowarn agtmt601g
  cscomp -nowarn agtmt601h
  cscomp -nowarn agtmt601i
  cscomp -nowarn agtmt601j
  cscomp -nowarn agtmt601k
  cscomp -nowarn agtmt602
  cscomp -nowarn agtmt602a
  cscomp -nowarn agtmt603
  cscomp -nowarn agtmt604
  cscomp -nowarn agtmt604a
  cscomp -nowarn agtmt604b
  cscomp -nowarn agtmt605
  cscomp -nowarn agtmt605a
  cscomp -nowarn agtmt605b
  cscomp -nowarn agtmt606
  cscomp -nowarn agtmt607
  cscomp -nowarn agtmt608
  cscomp -nowarn agtmt608a
  cscomp -nowarn agtmt609
  cscomp -nowarn agtmt610
  cscomp -nowarn agtmt610b
  cscomp -nowarn agtmt611
  cscomp -nowarn agtmt612
  cscomp -nowarn agtmt613
  cscomp -nowarn agtmt613b
  cscomp -nowarn agtmt614
  cscomp -nowarn agtmt614a
  cscomp -nowarn agtmt615
  cscomp -nowarn agtmt650
  cscomp -nowarn agtmt651
  cscomp -nowarn agtmt652
  cscomp -nowarn agtmt653
  cscomp -nowarn agtmt700
  cscomp -nowarn agtmt7000
  cscomp -nowarn agtmt7000a
  cscomp -nowarn agtmt7000b
  cscomp -nowarn agtmt7000c
  cscomp -nowarn agtmt7000d
  cscomp -nowarn agtmt7001
  cscomp -nowarn agtmt7002
  cscomp -nowarn agtmt701
  cscomp -nowarn agtmt701a
  cscomp -nowarn agtmt701b
  cscomp -nowarn agtmt701c
  cscomp -nowarn agtmt701d
  cscomp -nowarn agtmt701e
  cscomp -nowarn agtmt701f
  cscomp -nowarn agtmt701g
  cscomp -nowarn agtmt702
  cscomp -nowarn agtmt702a
  cscomp -nowarn agtmt720
  cscomp -nowarn agtmt721
  cscomp -nowarn agtmt722
  cscomp -nowarn agtmt723
  cscomp -nowarn agtmt724
  cscomp -nowarn agtmt725
  cscomp -nowarn agtmt725a
  cscomp -nowarn agtmt726
  cscomp -nowarn agtmt726a
  cscomp -nowarn agtmt726b
  cscomp -nowarn agtmt726c
  cscomp -nowarn agtmt726d
  cscomp -nowarn agtmt726e
  cscomp -nowarn agtmt726f
  cscomp -nowarn agtmt726g
  cscomp -nowarn agtmt726h
  cscomp -nowarn agtmt726i
  cscomp -nowarn agtmt726j
  cscomp -nowarn agtmt726k
  cscomp -nowarn agtmt727
  cscomp -nowarn agtmt728
  cscomp -nowarn agtmt729
  cscomp -nowarn agtmt730
  cscomp -nowarn agtmt731
  cscomp -nowarn agtmt750
  cscomp -nowarn agtmt750a
  cscomp -nowarn agtmt750b
  cscomp -nowarn agtmt750c
  cscomp -nowarn agtmt750d
  cscomp -nowarn agtmt750e
  cscomp -nowarn agtmt750f
  cscomp -nowarn agtmt750g
  cscomp -nowarn agtmt750h
  cscomp -nowarn agtmt751
  cscomp -nowarn agtmt751a
  cscomp -nowarn agtmt751b
  cscomp -nowarn agtmt751c
  cscomp -nowarn agtmt751d
  cscomp -nowarn agtmt751e
  cscomp -nowarn agtmt751f
  cscomp -nowarn agtmt751g
  cscomp -nowarn agtmt751h
  cscomp -nowarn agtmt751i
  cscomp -nowarn agtmt751j
  cscomp -nowarn agtmt751x
  cscomp -nowarn agtmt752
  cscomp -nowarn agtmt753
  cscomp -nowarn agtmt800
  cscomp -nowarn agtmt8000
  cscomp -nowarn agtmt8000a
  cscomp -nowarn agtmt8000b
  cscomp -nowarn agtmt8000c
  cscomp -nowarn agtmt8000d
  cscomp -nowarn agtmt8000e
  cscomp -nowarn agtmt8000f
  cscomp -nowarn agtmt8001
  cscomp -nowarn agtmt8001a
  cscomp -nowarn agtmt8001b
  cscomp -nowarn agtmt8001c
  cscomp -nowarn agtmt8001d
  cscomp -nowarn agtmt8001e
  cscomp -nowarn agtmt8001f
  cscomp -nowarn agtmt8001g
  cscomp -nowarn agtmt8001h
  cscomp -nowarn agtmt8001i
  cscomp -nowarn agtmt8001j
  cscomp -nowarn agtmt8001k
  cscomp -nowarn agtmt8001l
  cscomp -nowarn agtmt8001m
  cscomp -nowarn agtmt8002
  cscomp -nowarn agtmt8002a
  cscomp -nowarn agtmt8002b
  cscomp -nowarn agtmt8002c
  cscomp -nowarn agtmt8002d
  cscomp -nowarn agtmt8002e
  cscomp -nowarn agtmt8003
  cscomp -nowarn agtmt80034
  cscomp -nowarn agtmt8003a
  cscomp -nowarn agtmt8003b
  cscomp -nowarn agtmt8003c
  cscomp -nowarn agtmt8003d
  cscomp -nowarn agtmt8003e
  cscomp -nowarn agtmt8003x
  cscomp -nowarn agtmt8004
  cscomp -nowarn agtmt8004a
  cscomp -nowarn agtmt8004b
  cscomp -nowarn agtmt8004c
  cscomp -nowarn agtmt8004d
  cscomp -nowarn agtmt8004e
  cscomp -nowarn agtmt8004k
  cscomp -nowarn agtmt8004l
  cscomp -nowarn agtmt8004n
  cscomp -nowarn agtmt8004x
  cscomp -nowarn agtmt8004z
  cscomp -nowarn agtmt8005
  cscomp -nowarn agtmt8005a
  cscomp -nowarn agtmt8005b
  cscomp -nowarn agtmt8005c
  cscomp -nowarn agtmt8005d
  cscomp -nowarn agtmt8005e
  cscomp -nowarn agtmt801
  cscomp -nowarn agtmt801c
  cscomp -nowarn agtmt801d
  cscomp -nowarn agtmt802
  cscomp -nowarn agtmt802a
  cscomp -nowarn agtmt827
  cscomp -nowarn agtmt900
  cscomp -nowarn agtmt9000
  cscomp -nowarn agtmt9000a
  cscomp -nowarn agtmt9000b
  cscomp -nowarn agtmt9000c
  cscomp -nowarn agtmt9000d
  cscomp -nowarn agtmt9000e
  cscomp -nowarn agtmt9000f
  cscomp -nowarn agtmt9000g
  cscomp -nowarn agtmt9000h
  cscomp -nowarn agtmt9000i
  cscomp -nowarn agtmt9000j
  cscomp -nowarn agtmt9001
  cscomp -nowarn agtmt9002
  cscomp -nowarn agtmt9002a
  cscomp -nowarn agtmt9002b
  cscomp -nowarn agtmt9003
  cscomp -nowarn agtmt9003a
  cscomp -nowarn agtmt9003aa
  cscomp -nowarn agtmt9003b
  cscomp -nowarn agtmt9003c
  cscomp -nowarn agtmt9003d
  cscomp -nowarn agtmt9003e
  cscomp -nowarn agtmt9003f
  cscomp -nowarn agtmt9004
  cscomp -nowarn agtmt9005
  cscomp -nowarn agtmt9006
  cscomp -nowarn agtmt9007
  cscomp -nowarn agtmt9008
  cscomp -nowarn agtmt9009
  cscomp -nowarn agtmt901
  cscomp -nowarn agtmt9010
  cscomp -nowarn agtmt9011
  cscomp -nowarn agtmt9012
  cscomp -nowarn agtmt9013
  cscomp -nowarn agtmt902
  cscomp -nowarn agtmt903
  cscomp -nowarn agtmt904
  cscomp -nowarn agtmt905
  cscomp -nowarn agtmt906
  cscomp -nowarn agtmt907
  cscomp -nowarn agtmt908
  cscomp -nowarn agtmt909
  cscomp -nowarn agtmt910
  cscomp -nowarn agtmt9100
  cscomp -nowarn agtmt9100a
  cscomp -nowarn agtmt9100b
  cscomp -nowarn agtmt9100c
  cscomp -nowarn agtmt9100d
  cscomp -nowarn agtmt9100e
  cscomp -nowarn agtmt9101
  cscomp -nowarn agtmt9102
  cscomp -nowarn agtmt9103
  cscomp -nowarn agtmt9103a
  cscomp -nowarn agtmt9104
  cscomp -nowarn agtmt9105
  cscomp -nowarn agtmt9105a
  cscomp -nowarn agtmt9106
  cscomp -nowarn agtmt9107
  cscomp -nowarn agtmt9108
  cscomp -nowarn agtmt9109
  cscomp -nowarn agtmt911
  cscomp -nowarn agtmt9110
  cscomp -nowarn agtmt9111
  cscomp -nowarn agtmt912
  cscomp -nowarn agtmt913
  cscomp -nowarn agtmt914
  cscomp -nowarn agtmt915
  cscomp -nowarn agtmt916
  cscomp -nowarn agtmt917
  cscomp -nowarn agtmt918
  cscomp -nowarn agtmt919
  cscomp -nowarn agtmt920
  cscomp -nowarn agtmt921
  cscomp -nowarn agtmt922
  cscomp -nowarn agtmt923
  cscomp -nowarn agtmt924
  cscomp -nowarn agtmt925
  cscomp -nowarn agtmt926
  cscomp -nowarn agtmt927
  cscomp -nowarn agtmt928
  cscomp -nowarn agtmt929
  cscomp -nowarn agtmt930
  cscomp -nowarn agtmt931
  cscomp -nowarn agtmt932
  cscomp -nowarn agtmt933
  cscomp -nowarn agtmt934
  cscomp -nowarn agtmt935
  cscomp -nowarn agtmt936
  cscomp -nowarn agtmt937
  cscomp -nowarn agtmt938
  cscomp -nowarn agtmt939
  cscomp -nowarn agtmt940
  cscomp -nowarn agtmt941
  cscomp -nowarn agtmt942
  cscomp -nowarn agtmt943
  cscomp -nowarn agtmt944
  cscomp -nowarn agtmt945
  cscomp -nowarn agtmt946
  cscomp -nowarn agtmt947
  cscomp -nowarn agtmt948
  cscomp -nowarn agtmt949
  cscomp -nowarn agtmt950
  cscomp -nowarn agtmt951
  cscomp -nowarn agtmt952
  cscomp -nowarn agtmt953
  cscomp -nowarn agtmt954
  cscomp -nowarn agtmt955
  cscomp -nowarn agtmt956
  cscomp -nowarn agtmt957
  cscomp -nowarn agtmt958
  cscomp -nowarn agtmt959
  cscomp -nowarn agtmt960
  cscomp -nowarn agtmt961
  cscomp -nowarn agtmt962
  cscomp -nowarn agtmt963
  cscomp -nowarn agtmt964
  cscomp -nowarn agtmt965
  cscomp -nowarn agtmt966
  cscomp -nowarn agtmt967
  cscomp -nowarn agtmt968
  cscomp -nowarn agtmt969
  cscomp -nowarn agtmt970
  cscomp -nowarn agtmt971
  cscomp -nowarn agtmt972
  cscomp -nowarn agtmt973
  cscomp -nowarn agtmt974
  cscomp -nowarn agtmt975
  cscomp -nowarn agtmt976
  cscomp -nowarn agtmt977
  cscomp -nowarn agtmt978
  cscomp -nowarn agtmt979
  cscomp -nowarn agtmt980
  cscomp -nowarn agtmt981
  cscomp -nowarn agtmt982
  cscomp -nowarn agtmt983
  cscomp -nowarn agtmt984
  cscomp -nowarn agtmt985
  cscomp -nowarn agtmt986
  cscomp -nowarn agtmt987
  cscomp -nowarn agtmt988
  cscomp -nowarn agtmt989
  cscomp -nowarn agtmt990
  cscomp -nowarn agtmt991
  cscomp -nowarn agtmt992
  cscomp -nowarn agtmt993
  cscomp -nowarn agtmt994
  cscomp -nowarn agtmt995
  cscomp -nowarn agtmt9997
  cscomp -nowarn agtmt9997a
  cscomp -nowarn agtmt9997b
  cscomp -nowarn agtmt9998
  cscomp -nowarn agtmt9998a
  cscomp -nowarn agtmt9998b
  cscomp -nowarn agtmt9999
  cscomp -nowarn agtmt9999a
  cscomp -nowarn agtmt9999b
  cscomp -nowarn agtmt9999c
  cscomp -nowarn agtmt9999d
  cscomp -nowarn agtmt9999e
  cscomp -nowarn agtmt9999f
  cscomp -nowarn agtmt9999g
  cscomp -nowarn agtmt9999h
  cscomp -nowarn agtmt9999ha
  cscomp -nowarn agtmt9999hb
  cscomp -nowarn agtmt9999i
  cscomp -nowarn agtmt9999ia
  cscomp -nowarn agtmt9999j
  cscomp -nowarn agtmt9999k
}

function link {
  cslink n agqlib

  cslink rv agqlib agtmt001

  for file in agtmt*.sb
  do
    cslink rv agqlib $file
  done
}

function update_lib {
  mv agqlib /data/axis_debug3/lib810_1a/
}

cleanup
compile
link
update_lib

