.class public Lcom/samsung/android/visualeffect/circle/Circle;
.super Landroid/view/View;
.source "Circle.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected final arcElements:Landroid/graphics/RectF;

.field private final bgPaint:Landroid/graphics/Paint;

.field private callbackHandler:Landroid/os/Handler;

.field private isScanning:Z

.field private isScoreAnimEnd:Z

.field private mDeltaScoreAnimator:Landroid/animation/ValueAnimator;

.field private mScanAnimator:Landroid/animation/ValueAnimator;

.field private mScore:I

.field private mScoreAnimator:Landroid/animation/ValueAnimator;

.field private progress:F

.field protected ringColor:I

.field private ringColorAlpha:I

.field private ringPadding:I

.field private final ringPaint:Landroid/graphics/Paint;

.field protected ringThickness:F

.field private scanStartAngle:F

.field private final themeBgPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/visualeffect/circle/Circle;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->isScanning:Z

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->isScoreAnimEnd:Z

    const/16 v1, 0xff

    iput v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringColorAlpha:I

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScore:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->callbackHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringThickness:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f060109

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringColor:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->themeBgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->themeBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->themeBgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->themeBgPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->themeBgPaint:Landroid/graphics/Paint;

    const v3, 0x7f060368

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->themeBgPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->bgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->bgPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->bgPaint:Landroid/graphics/Paint;

    const v3, 0x7f06005f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->bgPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringThickness:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringColorAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->arcElements:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/circle/Circle;->setupAnimators()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/circle/Circle;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScore:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/circle/Circle;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/circle/Circle;->setProgress(F)V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/android/visualeffect/circle/Circle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->isScoreAnimEnd:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/circle/Circle;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mDeltaScoreAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/visualeffect/circle/Circle;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->scanStartAngle:F

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/circle/Circle;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/visualeffect/circle/Circle;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->callbackHandler:Landroid/os/Handler;

    return-object p1
.end method

.method private setProgress(F)V
    .locals 2

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->progress:F

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/circle/Circle;->invalidate()V

    return-void
.end method

.method private setupAnimators()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScoreAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScoreAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/visualeffect/circle/Circle$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/visualeffect/circle/Circle$1;-><init>(Lcom/samsung/android/visualeffect/circle/Circle;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScoreAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/visualeffect/circle/Circle$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/visualeffect/circle/Circle$2;-><init>(Lcom/samsung/android/visualeffect/circle/Circle;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mDeltaScoreAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mDeltaScoreAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, v5, v4, v6, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mDeltaScoreAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/visualeffect/circle/Circle$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/visualeffect/circle/Circle$3;-><init>(Lcom/samsung/android/visualeffect/circle/Circle;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mDeltaScoreAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/visualeffect/circle/Circle$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/visualeffect/circle/Circle$4;-><init>(Lcom/samsung/android/visualeffect/circle/Circle;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScanAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScanAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x683

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/circle/Circle$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/circle/Circle$5;-><init>(Lcom/samsung/android/visualeffect/circle/Circle;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScanAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/circle/Circle$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/circle/Circle$6;-><init>(Lcom/samsung/android/visualeffect/circle/Circle;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method


# virtual methods
.method public getScoreAnimProgress()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScoreAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScoreAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->isScoreAnimEnd:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/visualeffect/circle/Circle;->ringThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPadding:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget v3, v0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPadding:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    iget v5, v0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    iget v6, v0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v5, v1

    iget-object v6, v0, Lcom/samsung/android/visualeffect/circle/Circle;->arcElements:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, v0, Lcom/samsung/android/visualeffect/circle/Circle;->arcElements:Landroid/graphics/RectF;

    iget-object v12, v0, Lcom/samsung/android/visualeffect/circle/Circle;->bgPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-boolean v6, v0, Lcom/samsung/android/visualeffect/circle/Circle;->isScanning:Z

    if-eqz v6, :cond_0

    iget-object v8, v0, Lcom/samsung/android/visualeffect/circle/Circle;->arcElements:Landroid/graphics/RectF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    iget v7, v0, Lcom/samsung/android/visualeffect/circle/Circle;->scanStartAngle:F

    add-float v9, v6, v7

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v14, v0, Lcom/samsung/android/visualeffect/circle/Circle;->arcElements:Landroid/graphics/RectF;

    const/high16 v6, 0x42b40000    # 90.0f

    iget v7, v0, Lcom/samsung/android/visualeffect/circle/Circle;->scanStartAngle:F

    add-float v15, v6, v7

    const/high16 v16, 0x42b40000    # 90.0f

    const/16 v17, 0x0

    iget-object v6, v0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v6

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lcom/samsung/android/visualeffect/circle/Circle;->arcElements:Landroid/graphics/RectF;

    const/high16 v9, -0x3d4c0000    # -90.0f

    iget v10, v0, Lcom/samsung/android/visualeffect/circle/Circle;->progress:F

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public setRingColor(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setScore(IIZI)V
    .locals 5

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->isScanning:Z

    iput p1, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScore:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->ringPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    if-eqz p3, :cond_4

    if-lez p4, :cond_3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScoreAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScoreAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x683

    iget v3, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScore:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/visualeffect/circle/Circle;->mScore:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/circle/Circle;->setProgress(F)V

    :goto_0
    return-void
.end method
