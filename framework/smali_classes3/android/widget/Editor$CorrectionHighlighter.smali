.class Landroid/widget/Editor$CorrectionHighlighter;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorrectionHighlighter"
.end annotation


# static fields
.field private static final FADE_OUT_DURATION:I = 0x190


# instance fields
.field private mEnd:I

.field private mFadingStartTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mStart:I

.field private mTempRectF:Landroid/graphics/RectF;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    iget-object p1, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/Editor$CorrectionHighlighter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    return-void
.end method

.method private invalidate(Z)V
    .locals 7

    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    add-int/2addr v3, v0

    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    add-int/2addr v5, v0

    iget-object v6, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->postInvalidateOnAnimation(IIII)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/widget/Editor$CorrectionHighlighter;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->postInvalidate(IIII)V

    :goto_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Editor;->access$10602(Landroid/widget/Editor;Landroid/widget/Editor$CorrectionHighlighter;)Landroid/widget/Editor$CorrectionHighlighter;

    return-void
.end method

.method private updatePaint()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mFadingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    long-to-float v3, v0

    const/high16 v4, 0x43c80000    # 400.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mHighlightColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget v4, v4, Landroid/widget/TextView;->mHighlightColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    int-to-float v5, v3

    mul-float/2addr v5, v2

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x1

    return v5
.end method

.method private updatePath()Z
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$CorrectionHighlighter;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v3, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;I)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->updatePath()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->updatePaint()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    int-to-float v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/widget/Editor$CorrectionHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->stopAnimation()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V

    :goto_0
    return-void
.end method

.method public highlight(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getOffset()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    invoke-virtual {p1}, Landroid/view/inputmethod/CorrectionInfo;->getNewText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mFadingStartTime:J

    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mStart:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/Editor$CorrectionHighlighter;->mEnd:I

    if-gez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$CorrectionHighlighter;->stopAnimation()V

    :cond_1
    return-void
.end method
