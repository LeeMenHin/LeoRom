.class Lcom/samsung/android/directpeninput/PopupCue$CueContainer;
.super Landroid/widget/FrameLayout;
.source "PopupCue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/PopupCue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CueContainer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHoverCue:Landroid/view/View;

.field private mTouchCue:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/directpeninput/PopupCue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/directpeninput/PopupCue;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->this$0:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->initLayout()V

    return-void
.end method

.method private initLayout()V
    .locals 2

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    const v1, 0x10802cb

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    const v1, 0x10802ca

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getHoverCueDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->this$0:Lcom/samsung/android/directpeninput/PopupCue;

    invoke-static {v0, v1}, Lcom/samsung/android/directpeninput/PopupCue;->access$002(Lcom/samsung/android/directpeninput/PopupCue;Z)Z

    :cond_0
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public switchCueButton(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mHoverCue:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/directpeninput/PopupCue$CueContainer;->mTouchCue:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
