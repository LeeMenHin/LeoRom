.class public Lcom/android/systemui/statusbar/phone/NavigationBarFrame;
.super Landroid/widget/FrameLayout;
.source "NavigationBarFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarFrame$OnVisibilityChangedListener;
    }
.end annotation


# instance fields
.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field private mIsDoubleTapEnabled:Z

.field private mLeoNavDoubleTap:Landroid/view/GestureDetector;
.field private mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarFrame$OnVisibilityChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFrame;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mLeoNavDoubleTap:Landroid/view/GestureDetector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mIsDoubleTapEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mLeoNavDoubleTap:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0
.end method



.method public setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    return-void
.end method

.method public setDoubleTapToSleep(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mIsDoubleTapEnabled:Z

    return-void
.end method
.method public setOnVisibilityChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarFrame$OnVisibilityChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarFrame$OnVisibilityChangedListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    if-nez p1, :cond_0

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isNavigationBarHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NavigationBarFrame"

    const-string v1, "NavigationBar setVisibility(VISIBLE) Ignored! NavigationBar is GONE by Knox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarFrame$OnVisibilityChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mOnVisibilityChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarFrame$OnVisibilityChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$OnVisibilityChangedListener;->onVisibilityChanged(I)V

    :cond_1
    return-void
.end method
