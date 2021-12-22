//
//  inputmanager.swift
//  Day01
//
//  Created by Bence Tóth on 2021. 12. 22..
//

import Foundation

struct Input {
    static let test = """
199
200
208
210
200
207
240
269
260
263
""".split(separator: "\n").map { Int($0)! }
    
    static let input = """
193
195
204
208
219
230
231
233
234
241
253
260
261
265
268
279
277
297
299
300
306
308
312
313
329
349
361
362
369
371
373
378
380
382
383
382
384
385
386
388
417
419
424
429
435
438
439
454
468
498
504
510
512
514
518
526
528
533
555
561
565
585
590
617
633
635
640
641
652
653
657
659
673
690
696
690
691
712
718
708
711
723
733
734
736
739
738
739
761
764
767
768
774
779
791
797
800
804
807
810
811
810
812
814
813
817
827
824
847
848
850
852
880
882
892
896
898
899
900
906
921
933
935
937
935
937
944
951
955
963
964
979
981
985
996
997
998
1005
1009
1011
1015
1019
1021
1022
1006
1009
1017
1018
1019
1022
1028
1022
1023
1043
1046
1047
1053
1054
1078
1079
1091
1111
1115
1119
1127
1128
1129
1130
1147
1160
1161
1176
1177
1171
1183
1189
1190
1191
1193
1195
1201
1203
1215
1219
1229
1222
1206
1212
1232
1235
1242
1257
1258
1261
1267
1269
1267
1265
1267
1273
1275
1278
1282
1285
1288
1306
1330
1345
1354
1355
1358
1360
1358
1367
1368
1366
1363
1365
1366
1367
1369
1371
1374
1377
1378
1381
1382
1387
1400
1421
1425
1445
1459
1461
1463
1483
1487
1488
1490
1491
1493
1531
1544
1546
1548
1549
1556
1559
1563
1544
1558
1577
1590
1592
1599
1596
1599
1617
1621
1623
1624
1627
1628
1631
1634
1666
1696
1697
1700
1699
1710
1715
1717
1720
1730
1726
1727
1741
1739
1745
1751
1754
1763
1765
1767
1792
1797
1798
1814
1838
1852
1858
1884
1889
1898
1899
1898
1907
1908
1921
1922
1942
1944
1954
1956
1961
1967
1971
1972
1973
1995
2021
2027
2039
2045
2043
2044
2048
2055
2056
2058
2083
2086
2093
2106
2107
2110
2112
2118
2121
2133
2139
2146
2150
2155
2160
2164
2165
2166
2160
2159
2158
2164
2175
2179
2186
2191
2192
2196
2187
2207
2214
2222
2223
2225
2229
2231
2228
2229
2230
2233
2236
2238
2241
2245
2225
2229
2231
2235
2237
2240
2243
2245
2246
2249
2250
2251
2256
2259
2271
2272
2273
2268
2269
2270
2275
2272
2273
2275
2276
2282
2285
2289
2300
2306
2337
2338
2359
2353
2354
2357
2364
2370
2359
2360
2361
2373
2384
2398
2399
2395
2403
2406
2408
2414
2415
2420
2419
2427
2443
2455
2457
2477
2479
2487
2488
2491
2493
2496
2505
2511
2513
2514
2517
2546
2530
2532
2533
2537
2541
2542
2541
2567
2576
2592
2611
2616
2622
2640
2665
2679
2687
2693
2699
2706
2715
2721
2742
2739
2756
2762
2771
2772
2773
2770
2788
2789
2798
2799
2800
2801
2800
2803
2807
2808
2812
2815
2848
2854
2855
2857
2858
2868
2870
2884
2888
2890
2900
2901
2909
2912
2918
2919
2925
2939
2942
2956
2963
2967
2968
2972
2986
2998
3001
3023
3037
3047
3050
3054
3062
3065
3064
3066
3067
3068
3082
3084
3090
3097
3099
3098
3094
3078
3081
3083
3085
3068
3076
3077
3078
3080
3086
3090
3102
3107
3111
3114
3119
3124
3125
3126
3127
3131
3135
3137
3138
3139
3143
3173
3190
3191
3192
3194
3198
3199
3200
3194
3196
3220
3222
3223
3210
3213
3214
3218
3232
3243
3251
3266
3267
3266
3270
3273
3275
3278
3283
3300
3306
3307
3326
3329
3332
3333
3334
3340
3343
3345
3359
3361
3362
3373
3378
3379
3380
3383
3386
3409
3422
3431
3433
3434
3438
3454
3479
3481
3490
3503
3511
3516
3503
3505
3530
3527
3529
3532
3553
3556
3557
3562
3571
3572
3574
3575
3584
3602
3603
3606
3597
3624
3644
3669
3670
3676
3690
3713
3714
3741
3743
3725
3745
3749
3758
3759
3775
3796
3798
3799
3805
3817
3818
3829
3869
3886
3881
3882
3887
3888
3907
3902
3901
3922
3920
3897
3890
3920
3937
3947
3949
3953
3967
3976
3977
3988
3998
3999
4004
4009
3973
3975
3988
3990
3994
4001
4005
4016
4017
4018
4027
4028
4023
4029
4000
4001
4002
4009
4010
4013
4014
4029
4032
4034
4039
4040
4050
4055
4050
4055
4058
4059
4061
4064
4080
4082
4081
4082
4084
4085
4088
4090
4091
4109
4118
4119
4140
4145
4150
4151
4147
4150
4156
4175
4177
4178
4181
4182
4183
4191
4190
4191
4223
4225
4233
4263
4270
4277
4280
4302
4304
4316
4319
4320
4312
4320
4321
4356
4354
4355
4361
4374
4402
4384
4389
4390
4392
4390
4402
4408
4409
4449
4453
4454
4462
4464
4465
4467
4469
4470
4472
4474
4473
4474
4478
4490
4493
4495
4503
4506
4509
4512
4524
4525
4526
4541
4557
4558
4559
4560
4561
4568
4583
4584
4587
4589
4598
4603
4606
4607
4610
4611
4612
4627
4630
4653
4656
4657
4659
4660
4682
4684
4683
4684
4685
4686
4691
4692
4701
4702
4706
4713
4714
4745
4772
4773
4781
4783
4802
4807
4812
4815
4821
4823
4825
4831
4832
4847
4848
4849
4850
4858
4857
4858
4874
4852
4858
4869
4882
4884
4886
4896
4887
4888
4893
4903
4907
4909
4905
4915
4940
4944
4961
4967
4968
4960
4983
4987
4986
4988
4991
4993
4983
4985
4987
4989
4993
4994
4967
4980
4975
4980
4999
5000
5001
5003
5005
5007
5016
5024
5026
5027
5028
5029
5030
5045
5055
5056
5066
5064
5081
5083
5084
5090
5061
5063
5069
5091
5102
5103
5106
5116
5123
5141
5146
5149
5150
5167
5168
5170
5171
5182
5181
5185
5186
5191
5195
5213
5232
5233
5242
5251
5266
5270
5268
5269
5284
5290
5294
5300
5302
5303
5304
5332
5335
5329
5332
5334
5343
5346
5356
5357
5363
5365
5366
5367
5373
5377
5384
5394
5395
5392
5403
5405
5394
5399
5401
5412
5413
5416
5418
5424
5429
5402
5408
5418
5420
5428
5430
5437
5438
5442
5444
5474
5486
5488
5501
5514
5520
5519
5522
5547
5551
5553
5557
5558
5581
5583
5587
5572
5575
5574
5575
5578
5593
5595
5596
5597
5606
5612
5613
5623
5624
5636
5637
5646
5671
5675
5680
5691
5693
5720
5721
5733
5738
5750
5729
5730
5731
5732
5734
5729
5748
5750
5751
5753
5756
5761
5768
5771
5775
5777
5791
5793
5795
5798
5795
5808
5809
5810
5812
5813
5820
5821
5824
5854
5868
5869
5874
5880
5886
5887
5908
5909
5918
5926
5931
5941
5957
5967
5960
5961
5958
5971
5973
5975
5976
5978
5979
5986
5991
5994
5977
5982
5983
5987
5989
6013
6012
6019
6022
6033
6034
6037
6038
6066
6068
6073
6075
6077
6082
6094
6108
6109
6111
6113
6116
6117
6121
6122
6124
6129
6132
6140
6141
6153
6164
6185
6183
6197
6198
6196
6203
6204
6224
6227
6230
6231
6240
6257
6259
6261
6280
6288
6290
6291
6293
6304
6306
6308
6310
6316
6319
6334
6335
6336
6337
6345
6346
6347
6350
6353
6356
6364
6369
6374
6380
6384
6403
6410
6411
6415
6416
6417
6419
6420
6433
6437
6443
6454
6455
6458
6481
6492
6496
6517
6527
6532
6547
6548
6552
6560
6553
6568
6572
6574
6575
6571
6576
6580
6596
6597
6624
6628
6629
6642
6645
6629
6634
6640
6645
6646
6655
6661
6673
6680
6683
6674
6679
6690
6691
6692
6707
6713
6714
6721
6741
6746
6762
6766
6767
6773
6784
6785
6786
6790
6791
6792
6824
6828
6833
6835
6836
6837
6838
6826
6829
6864
6876
6877
6878
6880
6882
6883
6889
6900
6901
6938
6939
6943
6949
6955
6959
6961
6962
6965
6967
6968
6969
6983
6989
6997
6998
7002
6981
6995
6997
7005
7023
7026
7036
7041
7043
7052
7067
7068
7069
7079
7088
7098
7111
7109
7119
7120
7121
7129
7130
7142
7144
7141
7145
7150
7151
7173
7179
7180
7182
7191
7205
7207
7209
7218
7229
7239
7241
7243
7271
7265
7267
7269
7272
7274
7276
7305
7306
7307
7308
7311
7313
7316
7318
7320
7322
7340
7343
7344
7354
7360
7367
7370
7371
7372
7389
7391
7392
7399
7418
7400
7403
7404
7405
7406
7411
7395
7402
7417
7419
7420
7424
7426
7427
7414
7412
7413
7417
7420
7421
7422
7449
7454
7459
7462
7464
7463
7464
7466
7481
7486
7485
7487
7488
7489
7494
7509
7526
7529
7530
7531
7538
7541
7547
7550
7554
7561
7562
7563
7564
7566
7574
7576
7577
7578
7581
7609
7623
7626
7627
7630
7631
7653
7654
7657
7658
7659
7662
7664
7674
7675
7677
7676
7694
7696
7711
7734
7735
7742
7746
7749
7753
7759
7760
7767
7781
7805
7807
7808
7826
7843
7844
7845
7853
7870
7871
7872
7875
7876
7887
7895
7896
7913
7914
7916
7929
7933
7935
7928
7929
7930
7933
7949
7976
7977
7978
7998
7999
8002
8010
8011
8012
8015
8016
8023
8028
8029
8031
8035
8036
8037
8056
8057
8062
8067
8081
8082
8096
8099
8116
8121
8125
8126
8128
8129
8132
8119
8129
8151
8181
8161
8163
8184
8186
8191
8192
8197
8186
8184
8194
8216
8219
8220
8221
8223
8239
8240
8241
8246
8273
8274
8283
8284
8285
8293
8294
8300
8303
8305
8336
8340
8344
8347
8348
8349
8356
8363
8361
8362
8364
8365
8383
8389
8390
8405
8406
8404
8410
8411
8412
8413
8414
8419
8422
8425
8428
8448
8449
8453
8464
8466
8468
8469
8470
8478
8483
8477
8488
8489
8493
8510
8520
8533
8545
8547
8562
8560
8555
8557
8558
8559
8581
8577
8578
8579
8582
8590
8591
8569
8570
8569
8570
8573
8578
8561
8558
8563
8564
8575
8580
8582
8593
8596
8585
8588
8598
8612
8613
8622
8629
8639
8640
8647
8655
8656
8657
8671
8672
8683
8690
8691
8694
8693
8698
8706
8713
8714
8716
8718
8736
8733
8741
8731
8736
8737
8738
8746
8747
8746
8749
8761
8762
8780
8784
8785
8791
8793
8797
8807
8818
8836
8837
8838
8845
8846
8849
8857
8858
8877
8876
8875
8883
8887
8888
8892
8895
8901
8915
8916
8915
8921
8929
8935
8944
8981
8985
8990
8991
9001
8995
8998
9001
9002
9003
9026
9036
9047
9070
9080
9083
9089
9098
9118
9135
9123
9127
9131
9117
9123
9124
9131
9136
9139
9141
9144
9149
9156
9157
9160
9163
9168
9170
9177
9179
9199
9200
9211
9212
9222
9224
9211
9224
9246
9252
9277
9294
9301
9302
9310
9311
9313
9316
9319
9320
9321
9322
9323
9324
9337
9340
9357
9378
9379
9381
9397
9398
9399
9400
9405
9407
9421
9437
9438
9442
9440
9453
9458
9459
9463
9464
9465
9464
9465
9468
9478
9496
9498
9499
9504
9509
9525
9522
9523
9527
9531
9533
9537
9533
9546
9547
9570
9576
9577
9586
9604
9607
9618
9621
9643
9657
9665
9666
9667
9668
9678
9679
9680
9684
9694
9697
9694
9700
9705
9706
9708
9728
9729
9730
9732
9737
9744
9745
9758
9774
9776
9774
9771
9776
9777
9779
9780
9781
9799
9802
9803
9806
9824
9825
9828
9837
9829
9833
9836
9837
9832
9834
9835
9840
9848
9874
9890
9917
9922
9926
9928
9929
9937
9940
9947
9950
9949
9951
9952
9963
9962
9963
9997
10011
10017
10038
10039
10040
10086
10087
10088
10089
10091
10092
10103
10104
10113
10115
10132
10146
10148
10154
10158
10166
10168
10166
10167
10176
10191
10185
10191
10196
10206
10210
10212
10213
10216
10238
10254
10258
10260
10261
10267
10291
10305
10308
10313
10315
10326
10331
10339
10346
10348
10358
10381
10385
10386
10392
10393
10394
10397
10408
10431
10433
10437
10438
10443
10447
10449
10452
10454
10456
10460
10461
10462
10463
10462
10463
10480
10481
10489
10488
10491
10493
10517
10519
10537
10550
10560
10573
10588
10591
10597
10605
10609
10610
10615
10618
10620
10619
10625
10640
10642
10645
10651
10660
10659
10673
10691
10709
10711
10732
10739
10743
10751
10755
10757
10758
10761
10777
10779
10776
10783
10789
10803
10806
10825
10838
10851
10852
10853
10854
10865
10866
10876
10877
10885
10887
10899
10898
10897
10902
10907
10909
10913
10924
10950
10947
10949
10954
10965
10983
""".split(separator: "\n").map { Int($0)! }
}
