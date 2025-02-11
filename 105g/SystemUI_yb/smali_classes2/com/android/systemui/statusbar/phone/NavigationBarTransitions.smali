.class public final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;
    }
.end annotation


# instance fields
.field private final mAllowAutoDimWallpaperNotVisible:Z

.field private mAutoDim:Z

.field private mAutoDimOff:Z

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mLightsOut:Z

.field private mLightsOutDisabled:Z

.field private final mLightsOutListener:Landroid/view/View$OnTouchListener;

.field private mNavButtons:Landroid/view/View;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener$Stub;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWallpaperVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 4

    const v0, 0x7f080466

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutDisabled:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener$Stub;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$XJcD0ZRW4UO2juvu7uZcSTj_ILk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarTransitions$XJcD0ZRW4UO2juvu7uZcSTj_ILk;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$NavigationBarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    :cond_0
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$wMNbjUhGbyej8_fCHrQk9JvpMpc;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$wMNbjUhGbyej8_fCHrQk9JvpMpc;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    const-class v0, Landroid/view/IWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener$Stub;

    invoke-interface {v0, v2, v1}, Landroid/view/IWindowManager;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f0a0379

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private applyLightsOut(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method private applyLightsOut(ZZZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutDisabled:Z

    if-nez v0, :cond_4

    if-nez p3, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    if-eqz p1, :cond_2

    const v1, 0x3f19999a    # 0.6f

    add-float/2addr v1, v0

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/view/View;IIIIIIII)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a0379

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyDarkIntensity(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getButtonDispatchers()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setDarkIntensity(F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onDarkIntensityChange(F)V

    return-void
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    return-object v0
.end method

.method public getMode()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    :goto_0
    return v0
.end method

.method public init()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyModeBackground(IIZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void
.end method

.method protected isLightsOut(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->isLightsOut(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onDestroy()V
    .locals 4

    const-class v0, Landroid/view/IWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowManager;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener$Stub;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mWallpaperVisibilityListener:Landroid/view/IWallpaperVisibilityListener$Stub;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void
.end method

.method public reapplyDarkIntensity()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyDarkIntensity(F)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bar_mode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bar_mode"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setAutoDim(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDimOff:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDim:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoDimOff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mAutoDimOff:Z

    return-void
.end method

.method public setLightsOutDisable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutDisabled:Z

    return-void
.end method

.method public transitionTo(IZ)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public updateModeBackgroundColor(II)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->updateOpaqueColor(I)V

    :goto_0
    return-void
.end method
