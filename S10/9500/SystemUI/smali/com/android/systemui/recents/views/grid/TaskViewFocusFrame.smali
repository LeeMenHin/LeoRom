.class public Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;
.super Landroid/view/View;
.source "TaskViewFocusFrame.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field private mSv:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mContext:Landroid/content/Context;

    const v1, 0x7f080598

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setFocusable(Z)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->hide()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    return-void
.end method

.method private hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setAlpha(F)V

    return-void
.end method

.method private show()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->layout(IIII)V

    return-void
.end method

.method public measure()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getFocusFrameThickness()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getTaskGridRect()Landroid/graphics/Rect;

    move-result-object v1

    nop

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->measure(II)V

    return-void
.end method

.method public moveGridTaskViewFocus(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/systemui/recents/views/grid/GridTaskView;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->getFocusFrameThickness()I

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setTranslationX(F)V

    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->show()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    return-void

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :cond_2
    rem-int v3, v2, v1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    :cond_3
    return-void
.end method

.method public resize()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->updateTaskGridRect(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->measure()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->requestLayout()V

    :cond_0
    return-void
.end method
