.class public Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;
.super Lcom/android/systemui/infinity/tangram/TangramSystem;
.source "TangramGoldSystem.java"


# static fields
.field private static final bottomLayerImage:[Z

.field private static final endTranslation:[[F

.field private static final initTranslation:[[F

.field private static final layerFixAlpha:[F

.field private static final layerName:[Ljava/lang/String;

.field private static final layerPosition:[[F

.field private static final layerSize:[[F

.field private static final mapLayerFileName:[Ljava/lang/String;

.field private static final mapLeftFileName:[Ljava/lang/String;

.field private static final mapMaskFileName:[Ljava/lang/String;

.field private static final mapRightFileName:[Ljava/lang/String;

.field private static final maskMoveDistance:[[F

.field private static final maskPosition:[[F

.field private static final maskSize:[[F

.field public static final previewHeight:F = 2960.0f

.field public static final previewWidth:F = 2960.0f


# instance fields
.field a:Lcom/android/systemui/infinity/tangram/Tangram;

.field b:Lcom/android/systemui/infinity/tangram/Tangram;

.field c:Lcom/android/systemui/infinity/tangram/Tangram;

.field d:Lcom/android/systemui/infinity/tangram/Tangram;

.field e:Lcom/android/systemui/infinity/tangram/Tangram;

.field f:Lcom/android/systemui/infinity/tangram/Tangram;

.field g:Lcom/android/systemui/infinity/tangram/Tangram;

.field h:Lcom/android/systemui/infinity/tangram/Tangram;

.field il:Lcom/android/systemui/infinity/tangram/Tangram;

.field protected showEasing:F

.field protected tiltEasing:F

.field protected tiltSubEasing:F

.field protected tiltTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "a"

    const-string v1, "b"

    const-string v2, "c"

    const-string v3, "d"

    const-string v4, "e"

    const-string v5, "f"

    const-string v6, "g"

    const-string v7, "h"

    const-string v8, "i"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->layerName:[Ljava/lang/String;

    const-string v1, "gd_layer_a.png"

    const-string v2, "gd_layer_b.png"

    const-string v3, "gd_layer_c.png"

    const-string v4, "gd_layer_d.png"

    const-string v5, "gd_layer_e.png"

    const-string v6, "gd_layer_f.png"

    const-string v7, "gd_layer_g.png"

    const-string v8, "gd_layer_h.png"

    const-string v9, "gd_layer_i.png"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->mapLayerFileName:[Ljava/lang/String;

    const-string v1, "gd_layer_a_mask.png"

    const-string v2, "gd_layer_b_mask.png"

    const-string v3, "gd_layer_c_mask.png"

    const-string v4, "gd_layer_d_mask.png"

    const-string v5, "gd_layer_e_mask.png"

    const-string v6, "gd_layer_f_mask.png"

    const-string v7, "gd_layer_g_mask.png"

    const-string v8, "gd_layer_h_mask.png"

    const-string v9, "gd_layer_i_mask.png"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->mapMaskFileName:[Ljava/lang/String;

    const-string v1, "gd_layer_a_color_l.png"

    const-string v2, "gd_layer_b_color_l.png"

    const-string v3, "gd_layer_c_color_l.png"

    const-string v4, "gd_layer_d_color_l.png"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->mapLeftFileName:[Ljava/lang/String;

    const-string v1, "gd_layer_a_color_r.png"

    const-string v2, "gd_layer_b_color_r.png"

    const-string v3, "gd_layer_c_color_r.png"

    const-string v4, "gd_layer_d_color_r.png"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->mapRightFileName:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->bottomLayerImage:[Z

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->layerFixAlpha:[F

    new-array v1, v0, [[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_5

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_6

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_7

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [F

    fill-array-data v3, :array_8

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [F

    fill-array-data v3, :array_9

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [F

    fill-array-data v3, :array_a

    const/16 v11, 0x8

    aput-object v3, v1, v11

    sput-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->layerSize:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_b

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_c

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_e

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_f

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_10

    aput-object v3, v1, v8

    new-array v3, v2, [F

    fill-array-data v3, :array_11

    aput-object v3, v1, v9

    new-array v3, v2, [F

    fill-array-data v3, :array_12

    aput-object v3, v1, v10

    new-array v3, v2, [F

    fill-array-data v3, :array_13

    aput-object v3, v1, v11

    sput-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->layerPosition:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_14

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_15

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_17

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_18

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_19

    aput-object v3, v1, v8

    new-array v3, v2, [F

    fill-array-data v3, :array_1a

    aput-object v3, v1, v9

    new-array v3, v2, [F

    fill-array-data v3, :array_1b

    aput-object v3, v1, v10

    new-array v3, v2, [F

    fill-array-data v3, :array_1c

    aput-object v3, v1, v11

    sput-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->maskMoveDistance:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_1d

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_1e

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_20

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_21

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_22

    aput-object v3, v1, v8

    new-array v3, v2, [F

    fill-array-data v3, :array_23

    aput-object v3, v1, v9

    new-array v3, v2, [F

    fill-array-data v3, :array_24

    aput-object v3, v1, v10

    new-array v3, v2, [F

    fill-array-data v3, :array_25

    aput-object v3, v1, v11

    sput-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->maskSize:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_26

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_27

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_28

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_29

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_2a

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_2b

    aput-object v3, v1, v8

    new-array v3, v2, [F

    fill-array-data v3, :array_2c

    aput-object v3, v1, v9

    new-array v3, v2, [F

    fill-array-data v3, :array_2d

    aput-object v3, v1, v10

    new-array v3, v2, [F

    fill-array-data v3, :array_2e

    aput-object v3, v1, v11

    sput-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->maskPosition:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_2f

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_30

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_31

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_32

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_33

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_34

    aput-object v3, v1, v8

    new-array v3, v2, [F

    fill-array-data v3, :array_35

    aput-object v3, v1, v9

    new-array v3, v2, [F

    fill-array-data v3, :array_36

    aput-object v3, v1, v10

    new-array v3, v2, [F

    fill-array-data v3, :array_37

    aput-object v3, v1, v11

    sput-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->initTranslation:[[F

    new-array v0, v0, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_38

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_39

    aput-object v1, v0, v5

    new-array v1, v2, [F

    fill-array-data v1, :array_3a

    aput-object v1, v0, v2

    new-array v1, v2, [F

    fill-array-data v1, :array_3b

    aput-object v1, v0, v6

    new-array v1, v2, [F

    fill-array-data v1, :array_3c

    aput-object v1, v0, v7

    new-array v1, v2, [F

    fill-array-data v1, :array_3d

    aput-object v1, v0, v8

    new-array v1, v2, [F

    fill-array-data v1, :array_3e

    aput-object v1, v0, v9

    new-array v1, v2, [F

    fill-array-data v1, :array_3f

    aput-object v1, v0, v10

    new-array v1, v2, [F

    fill-array-data v1, :array_40

    aput-object v1, v0, v11

    sput-object v0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->endTranslation:[[F

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3db851ec    # 0.09f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0x446a0000    # 936.0f
        0x446a0000    # 936.0f
    .end array-data

    :array_3
    .array-data 4
        0x44850000    # 1064.0f
        0x44842000    # 1057.0f
    .end array-data

    :array_4
    .array-data 4
        0x44836000    # 1051.0f
        0x4482a000    # 1045.0f
    .end array-data

    :array_5
    .array-data 4
        0x446f0000    # 956.0f
        0x446f0000    # 956.0f
    .end array-data

    :array_6
    .array-data 4
        0x44b32000    # 1433.0f
        0x44b30000    # 1432.0f
    .end array-data

    :array_7
    .array-data 4
        0x44f12000    # 1929.0f
        0x44f14000    # 1930.0f
    .end array-data

    :array_8
    .array-data 4
        0x4507d000    # 2173.0f
        0x45081000    # 2177.0f
    .end array-data

    :array_9
    .array-data 4
        0x44a88000    # 1348.0f
        0x44a90000    # 1352.0f
    .end array-data

    :array_a
    .array-data 4
        0x44448000    # 786.0f
        0x44450000    # 788.0f
    .end array-data

    :array_b
    .array-data 4
        0x44cc8000    # 1636.0f
        0x44d5c000    # 1710.0f
    .end array-data

    :array_c
    .array-data 4
        0x44b8e000    # 1479.0f
        0x450d4000    # 2260.0f
    .end array-data

    :array_d
    .array-data 4
        0x447ea000    # 1018.5f
        0x44b28000    # 1428.0f
    .end array-data

    :array_e
    .array-data 4
        0x445dc000    # 887.0f
        0x44e2a000    # 1813.0f
    .end array-data

    :array_f
    .array-data 4
        0x44cd2000    # 1641.0f
        0x4413c000    # 591.0f
    .end array-data

    :array_10
    .array-data 4
        0x440fa000    # 574.5f
        0x44078000    # 542.0f
    .end array-data

    :array_11
    .array-data 4
        0x44c59000    # 1580.5f
        0x44f67000    # 1971.5f
    .end array-data

    :array_12
    .array-data 4
        0x44ef6000    # 1915.0f
        0x45353000    # 2899.0f
    .end array-data

    :array_13
    .array-data 4
        0x44850000    # 1064.0f
        0x452a0000    # 2720.0f
    .end array-data

    :array_14
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_15
    .array-data 4
        0x3d1ba5e3    # 0.038f
        0x3d1ba5e3    # 0.038f
    .end array-data

    :array_16
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_17
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_18
    .array-data 4
        0x3d1fbe77    # 0.039f
        0x3d178d50    # 0.037f
    .end array-data

    :array_19
    .array-data 4
        0x3cc49ba6    # 0.024f
        0x3ca3d70a    # 0.02f
    .end array-data

    :array_1a
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_1b
    .array-data 4
        0x3cf5c28f    # 0.03f
        0x3cf5c28f    # 0.03f
    .end array-data

    :array_1c
    .array-data 4
        0x3cf5c28f    # 0.03f
        0x3cf5c28f    # 0.03f
    .end array-data

    :array_1d
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1e
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1f
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_20
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_21
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_22
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_23
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_24
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_25
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2d
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2f
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_30
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_31
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_32
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_33
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_34
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_35
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_36
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_37
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_38
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_39
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_3a
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_3b
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_3c
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_3d
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_3e
    .array-data 4
        0x42fa0000    # 125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_3f
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_40
    .array-data 4
        -0x3d060000    # -125.0f
        -0x3d060000    # -125.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 2

    const v0, 0x7f11000b

    const v1, 0x7f11000c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;II)V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->showEasing:F

    iput v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tiltEasing:F

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tiltSubEasing:F

    const v0, 0x3ec7ae14    # 0.39f

    iput v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tiltTranslation:F

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    return-void
.end method


# virtual methods
.method protected getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;
    .locals 2

    new-instance v0, Lcom/android/systemui/infinity/tangram/TangramMapData;

    invoke-direct {v0}, Lcom/android/systemui/infinity/tangram/TangramMapData;-><init>()V

    const/high16 v1, 0x45390000    # 2960.0f

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->previewHeight:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->previewWidth:F

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->maskMoveDistance:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskMoveDistance:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->layerSize:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->layerPosition:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerPosition:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->maskSize:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskSize:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->maskPosition:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskPosition:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->layerName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->initTranslation:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->initTranslation:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->endTranslation:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->endTranslation:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->bottomLayerImage:[Z

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->bottomLayerImage:[Z

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->layerFixAlpha:[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerFixAlpha:[F

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->mapLayerFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLayerFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->mapMaskFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapMaskFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->mapLeftFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLeftFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->mapRightFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapRightFileName:[Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    return-object v0
.end method

.method protected showingProcess()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v3, v1, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v3, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->showingProgress:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->showingProgress:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->showEasing:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v0, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v0, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    sub-float v1, v0, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v0, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->showEasing:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v0, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    sub-float v1, v0, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v0, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->showEasing:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v4, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v0, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    sub-float v1, v0, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v0, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->showEasing:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v3, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    return-void
.end method

.method protected tiltProcess(Z)V
    .locals 13

    iget v0, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->targetGyroValue:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tiltEasing:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->getLinearTargetPosition(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v0, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v0, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    move v1, v0

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    sub-float v2, v1, v2

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tiltSubEasing:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    sub-float v2, v1, v3

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v6, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tiltSubEasing:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->checkFinishTiltEasing(Lcom/android/systemui/infinity/tangram/Tangram;Lcom/android/systemui/infinity/tangram/Tangram;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v6, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->tiltTranslation:F

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    neg-float v6, v5

    iput v6, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const v5, 0x3f8ccccd    # 1.1f

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    neg-float v6, v6

    mul-float/2addr v6, v5

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    neg-float v6, v6

    mul-float/2addr v6, v5

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const v7, 0x3fd9999a    # 1.7f

    mul-float/2addr v6, v7

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v6, v8, v6

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    const v6, 0x3f866666    # 1.05f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    const v6, 0x3f666666    # 0.9f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v9, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v9, v9, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iput v9, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v9, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v9, v9, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v9, v7

    sub-float v7, v8, v9

    iput v7, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    float-to-double v9, v3

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    cmpg-double v3, v9, v11

    if-gez v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v5, v5

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v5, v5

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v5, v5

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v5, v5

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v8, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_c
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v8, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_d
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_e

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_e
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_f

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v8, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_f
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_10

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_10
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_11

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v8, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_11
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_12
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_13

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v8, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_13
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_14

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_14
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_15

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v8, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_15
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_16

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_16
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_17

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v8, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_17
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_18

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_18
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_19

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v8, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_19
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float v4, v8, v4

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1a

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_1a
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_1b

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v8, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_1b
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->f:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->g:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->h:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->il:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/gold/TangramGoldSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    return-void
.end method
