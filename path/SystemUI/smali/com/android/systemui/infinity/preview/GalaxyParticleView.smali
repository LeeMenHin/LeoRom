.class public Lcom/android/systemui/infinity/preview/GalaxyParticleView;
.super Landroid/view/View;
.source "GalaxyParticleView.java"


# static fields
.field public static final DIRECTION_LEFT:I = 0x1

.field public static final DIRECTION_RIGHT:I


# instance fields
.field currentMoveX:F

.field currentXDegree:F

.field currentYDegree:F

.field dataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/preview/ParticleModel;",
            ">;"
        }
    .end annotation
.end field

.field direction:I

.field expandX:F

.field expandY:F

.field height:F

.field isInitStart:Z

.field listDataArray:[Lcom/android/systemui/infinity/preview/ParticleModel;

.field mainAlpha:F

.field maxRadius:F

.field paint:Landroid/graphics/Paint;

.field particleCount:I

.field particleScale:F

.field plusValueX:F

.field random:Ljava/util/Random;

.field public starScale:F

.field width:F

.field ySlope:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentXDegree:F

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentYDegree:F

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->plusValueX:F

    const/high16 v0, 0x44b40000    # 1440.0f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->expandX:F

    const/high16 v0, 0x44af0000    # 1400.0f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->expandY:F

    const v0, 0x476a6000    # 60000.0f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentMoveX:F

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->particleCount:I

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->particleScale:F

    const/high16 v0, 0x40b00000    # 5.5f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->maxRadius:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->ySlope:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->isInitStart:Z

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->random:Ljava/util/Random;

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->direction:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->mainAlpha:F

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->starScale:F

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->initStarList()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->invalidateDXObject()V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private invalidateDXObject()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/preview/ParticleModel;

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getAxisYTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->yx:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getAxisYTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getAxisYTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getAxisXTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tx:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getAxisXTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->ty:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getAxisXTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public changeAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->mainAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->invalidate()V

    return-void
.end method

.method public changeParticleCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->particleCount:I

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->initStarList()V

    return-void
.end method

.method public changePlusValue()V
    .locals 14

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->invalidateDXObject()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/preview/ParticleModel;

    iget v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    const/high16 v4, 0x43480000    # 200.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    iget v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v2, v2, v6

    if-lez v2, :cond_0

    iget v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->initX:F

    float-to-double v6, v2

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentMoveX:F

    div-float/2addr v2, v4

    float-to-double v8, v2

    iget v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    add-float/2addr v2, v5

    float-to-double v10, v2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v2, v6

    rem-float/2addr v2, v5

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    goto :goto_1

    :cond_0
    iget v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->initX:F

    iget v6, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentMoveX:F

    div-float/2addr v6, v4

    add-float/2addr v2, v6

    rem-float/2addr v2, v5

    iput v2, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    :goto_1
    iget v6, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->initY:F

    iget v7, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentMoveX:F

    div-float/2addr v7, v4

    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->ySlope:F

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    add-float/2addr v6, v5

    const/high16 v4, 0x40000000    # 2.0f

    rem-float/2addr v6, v4

    sub-float/2addr v6, v5

    const v4, 0x3f19999a    # 0.6f

    iget v7, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->ySlope:F

    mul-float/2addr v7, v2

    add-float/2addr v4, v7

    cmpl-float v4, v6, v4

    if-lez v4, :cond_1

    iget v3, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->initAlpha:F

    const/high16 v4, -0x3fe00000    # -2.5f

    mul-float/2addr v4, v6

    const/high16 v5, 0x40200000    # 2.5f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    goto :goto_2

    :cond_1
    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->ySlope:F

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    cmpl-float v4, v6, v5

    if-lez v4, :cond_2

    iput v3, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    goto :goto_2

    :cond_2
    iget v3, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->initAlpha:F

    iput v3, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    :goto_2
    iput v6, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->y:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->invalidate()V

    return-void
.end method

.method public getAxisXTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 1

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yx:F

    return v0
.end method

.method public getAxisXTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 6

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentYDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisXTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 6

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yy:F

    float-to-double v0, v0

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentYDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->yz:F

    float-to-double v2, v2

    iget v4, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentYDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisYTargetX(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 7

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->plusValueX:F

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->width:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    float-to-double v1, v1

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentXDegree:F

    neg-float v3, v3

    add-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    float-to-double v3, v3

    iget v5, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentXDegree:F

    neg-float v5, v5

    add-float/2addr v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public getAxisYTargetY(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 1

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->y:F

    return v0
.end method

.method public getAxisYTargetZ(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 7

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->plusValueX:F

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->width:F

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->x:F

    neg-float v1, v1

    float-to-double v1, v1

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentXDegree:F

    neg-float v3, v3

    add-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    float-to-double v3, v3

    iget v5, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentXDegree:F

    neg-float v5, v5

    add-float/2addr v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public getCurrnetX()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentMoveX:F

    return v0
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->direction:I

    return v0
.end method

.method public getParticleCount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->particleCount:I

    return v0
.end method

.method public getRadius(Lcom/android/systemui/infinity/preview/ParticleModel;)F
    .locals 3

    iget v0, p1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    const v1, 0x3fcccccd    # 1.6f

    add-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    iget v2, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->starScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    return v1
.end method

.method public getRandValue(F)F
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public initStarList()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->isInitStart:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->particleCount:I

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->makeParticleWithDegree4(Ljava/util/ArrayList;IF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/systemui/infinity/preview/ParticleModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/infinity/preview/ParticleModel;

    iput-object v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->listDataArray:[Lcom/android/systemui/infinity/preview/ParticleModel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->isInitStart:Z

    return-void
.end method

.method public makeParticleWithDegree4(Ljava/util/ArrayList;IF)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/preview/ParticleModel;",
            ">;IF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    :goto_0
    move/from16 v3, p2

    if-ge v2, v3, :cond_0

    iget-object v4, v0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v6, v0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v11, v5, v6

    iget-object v5, v0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    sub-float v12, v5, v6

    iget-object v5, v0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget v6, v0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->maxRadius:F

    mul-float v13, v5, v6

    iget-object v5, v0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v14

    new-instance v15, Lcom/android/systemui/infinity/preview/ParticleModel;

    move-object v5, v15

    move v6, v4

    move v7, v11

    move v8, v12

    move v9, v13

    move v10, v14

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/infinity/preview/ParticleModel;-><init>(FFFFF)V

    iget v6, v0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->expandX:F

    iput v6, v5, Lcom/android/systemui/infinity/preview/ParticleModel;->extpandX:F

    iget v6, v0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->expandY:F

    iput v6, v5, Lcom/android/systemui/infinity/preview/ParticleModel;->extpandY:F

    const/4 v6, -0x1

    iput v6, v5, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/systemui/infinity/preview/ParticleModel;->tension:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getRandValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/systemui/infinity/preview/ParticleModel;->xRand:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getRandValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/systemui/infinity/preview/ParticleModel;->yRand:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getRandValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/systemui/infinity/preview/ParticleModel;->zRand:F

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->isInitStart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->width:F

    :cond_1
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->height:F

    :cond_2
    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->width:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/preview/ParticleModel;

    invoke-virtual {p0, v1}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->getRadius(Lcom/android/systemui/infinity/preview/ParticleModel;)F

    move-result v2

    iget v3, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->radius:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->particleScale:F

    mul-float/2addr v2, v3

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->paint:Landroid/graphics/Paint;

    iget v4, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->paint:Landroid/graphics/Paint;

    iget v4, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->alpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->mainAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v3, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tx:F

    iget v4, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->extpandX:F

    mul-float/2addr v3, v4

    iget v4, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->ty:F

    iget v5, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tx:F

    iget v6, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->ySlope:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->tz:F

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->extpandY:F

    mul-float/2addr v4, v5

    iget v5, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->radius:F

    iget v6, v1, Lcom/android/systemui/infinity/preview/ParticleModel;->z:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public setCurrentMoveX(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->currentMoveX:F

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->changePlusValue()V

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/preview/GalaxyParticleView;->direction:I

    return-void
.end method
