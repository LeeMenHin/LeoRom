.class public Lcom/android/settings/graph/UsageGraph;
.super Landroid/view/View;
.source "UsageGraph.java"


# instance fields
.field private mAccentColor:I

.field private final mCornerRadius:I

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDividerSize:I

.field private mDividerTint:I

.field private final mDottedPaint:Landroid/graphics/Paint;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mLocalPaths:Landroid/util/SparseIntArray;

.field private final mLocalProjectedPaths:Landroid/util/SparseIntArray;

.field private mMaxX:F

.field private mMaxY:F

.field private mMiddleDividerLoc:F

.field private mMiddleDividerTint:I

.field private final mPath:Landroid/graphics/Path;

.field private final mPaths:Landroid/util/SparseIntArray;

.field private mProjectUp:Z

.field private final mProjectedPaths:Landroid/util/SparseIntArray;

.field private mShowProjection:Z

.field private final mTintedDivider:Landroid/graphics/drawable/Drawable;

.field private mTopDividerTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mMaxX:F

    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerTint:I

    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mTopDividerTint:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, 0x7f07084d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/graph/UsageGraph;->mCornerRadius:I

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    iget v4, p0, Lcom/android/settings/graph/UsageGraph;->mCornerRadius:I

    int-to-float v4, v4

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    const v3, 0x7f07084e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, 0x7f07084a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const v3, 0x7f070849

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v1, v6, v7

    aput v3, v6, v2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    const v5, 0x7f06035f

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010214

    invoke-virtual {v5, v6, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f070848

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    const v2, 0x7f0601a6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/graph/UsageGraph;->mDividerTint:I

    return-void
.end method

.method private addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->postInvalidate()V

    const-string v2, "UsageGraph"

    const-string v3, "addPathAndUpdate"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private calculateLocalPaths()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/settings/graph/UsageGraph;->mDividerTint:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    add-int/2addr v3, p1

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawFilledPath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p2, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v2, v5

    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    :goto_1
    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawFilledPathInRTL(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p2, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v0, v5

    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    :goto_1
    add-int/2addr v1, v4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 7

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    :goto_1
    add-int/2addr v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLinePathInRTL(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 7

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawProjection(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/android/settings/graph/UsageGraph;->mProjectUp:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawProjectionInRTL(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-boolean v3, p0, Lcom/android/settings/graph/UsageGraph;->mProjectUp:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getColor(IF)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xffffff

    or-int/2addr v0, v1

    and-int/2addr v0, p1

    return v0
.end method

.method private getX(F)I
    .locals 2

    iget v0, p0, Lcom/android/settings/graph/UsageGraph;->mMaxX:F

    div-float v0, p1, v0

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getY(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    div-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    return v0
.end method

.method private hasDiff(II)Z
    .locals 2

    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mCornerRadius:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateGradient()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mAccentColor:I

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v1, v2}, Lcom/android/settings/graph/UsageGraph;->getColor(IF)I

    move-result v6

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/graph/UsageGraph;->addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public addProjectedPath(Landroid/util/SparseIntArray;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/graph/UsageGraph;->addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/graph/UsageGraph;->getWidth()I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v7

    move v7, v6

    move v6, v5

    move v5, v8

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v5, v10, :cond_8

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/graph/UsageGraph;->isRTL()Z

    move-result v11

    if-eqz v11, :cond_1

    iget v11, v0, Lcom/android/settings/graph/UsageGraph;->mMaxX:F

    float-to-int v11, v11

    sub-int v10, v11, v10

    :cond_1
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v11, v12, :cond_5

    if-ne v5, v13, :cond_2

    add-int/lit8 v12, v10, 0x1

    int-to-float v12, v12

    invoke-direct {v0, v12}, Lcom/android/settings/graph/UsageGraph;->getX(F)I

    move-result v12

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    invoke-direct {v0, v13}, Lcom/android/settings/graph/UsageGraph;->getY(F)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseIntArray;->size()I

    move-result v14

    sub-int/2addr v14, v13

    if-ne v5, v14, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/graph/UsageGraph;->isRTL()Z

    move-result v13

    if-eqz v13, :cond_4

    add-int/lit8 v13, v6, -0x1

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_4
    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_5
    int-to-float v14, v10

    invoke-direct {v0, v14}, Lcom/android/settings/graph/UsageGraph;->getX(F)I

    move-result v14

    int-to-float v15, v11

    invoke-direct {v0, v15}, Lcom/android/settings/graph/UsageGraph;->getY(F)I

    move-result v15

    move v6, v14

    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    if-lez v16, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    add-int/lit8 v12, v16, -0x1

    invoke-virtual {v2, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseIntArray;->size()I

    move-result v16

    add-int/lit8 v13, v16, -0x1

    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/graph/UsageGraph;->isRTL()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    :cond_6
    const/4 v8, -0x1

    if-eq v13, v8, :cond_7

    invoke-direct {v0, v12, v14}, Lcom/android/settings/graph/UsageGraph;->hasDiff(II)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {v0, v13, v15}, Lcom/android/settings/graph/UsageGraph;->hasDiff(II)Z

    move-result v8

    if-nez v8, :cond_7

    move v7, v15

    const/4 v8, 0x1

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v2, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    move v9, v8

    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v5, "UsageGraph"

    const-string v8, "calculateLocalPaths"

    invoke-static {v5, v8, v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method clearPaths()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public isRTL()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mTopDividerTint:I

    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    :cond_0
    nop

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerTint:I

    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    sub-int/2addr v2, v3

    const/4 v3, -0x1

    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/settings/graph/UsageGraph;->mShowProjection:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/graph/UsageGraph;->drawProjectionInRTL(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawLinePathInRTL(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawFilledPathInRTL(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawLinePathInRTL(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/graph/UsageGraph;->mShowProjection:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/settings/graph/UsageGraph;->drawProjection(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawFilledPath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    :goto_0
    const-string v2, "UsageGraph"

    const-string v3, "onDraw"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->updateGradient()V

    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths()V

    const-string v2, "UsageGraph"

    const-string v3, "onSizeChanged"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method setAccentColor(I)V
    .locals 2

    iput p1, p0, Lcom/android/settings/graph/UsageGraph;->mAccentColor:I

    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mAccentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->updateGradient()V

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->postInvalidate()V

    return-void
.end method

.method setDividerColors(II)V
    .locals 0

    iput p1, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerTint:I

    iput p2, p0, Lcom/android/settings/graph/UsageGraph;->mTopDividerTint:I

    return-void
.end method

.method setDividerLoc(I)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    return-void
.end method

.method setMax(II)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-float v2, p1

    iput v2, p0, Lcom/android/settings/graph/UsageGraph;->mMaxX:F

    int-to-float v2, p2

    iput v2, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths()V

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->postInvalidate()V

    const-string v2, "UsageGraph"

    const-string/jumbo v3, "setMax"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method setShowProjection(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/graph/UsageGraph;->mShowProjection:Z

    iput-boolean p2, p0, Lcom/android/settings/graph/UsageGraph;->mProjectUp:Z

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->postInvalidate()V

    return-void
.end method
