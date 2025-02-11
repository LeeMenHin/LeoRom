.class public Lcom/android/systemui/ScreenDecorations;
.super Lcom/android/systemui/SystemUI;
.source "ScreenDecorations.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;,
        Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;,
        Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;
    }
.end annotation


# static fields
.field private static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

.field private static sHideCutoutForGearVr:Z


# instance fields
.field private mBottomOverlay:Landroid/view/View;

.field private mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field private mDensity:F

.field private mDisplayDensity:I

.field private mDisplayHeight:I

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayWidth:I

.field private mGearVrDocked:Z

.field private mGearVrEntered:Z

.field private mGearVrManager:Lcom/samsung/android/vr/GearVrManager;

.field private mGearVrPersistentVrMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mOverlay:Landroid/view/View;

.field private mPendingRotationChange:Z

.field private mRotation:I

.field protected mRoundedDefault:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected mRoundedDefaultBottom:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected mRoundedDefaultTop:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.screenshot_rounded_corners"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/ScreenDecorations;)Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/ScreenDecorations;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrDocked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrDocked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrEntered:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrEntered:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/ScreenDecorations;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrPersistentVrMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/ScreenDecorations;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrPersistentVrMode:Z

    return p1
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->sHideCutoutForGearVr:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/ScreenDecorations;->sHideCutoutForGearVr:Z

    return p0
.end method

.method private flipView(Landroid/view/View;IZZ)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p3, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "ScreenDecorOverlayBottom"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    return-object v0
.end method

.method private hasRoundedCorners()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-lez v0, :cond_0

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

.method private isLandscape(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic lambda$IfAux2ksmJXT9o9i38WaSEQXJTQ(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->startOnScreenDecorationsThread()V

    return-void
.end method

.method public static synthetic lambda$aq1MVJyy_LkZ11q5t5cPVZOqbG0(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    return-void
.end method

.method public static synthetic lambda$onConfigurationChanged$1(Lcom/android/systemui/ScreenDecorations;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$onTuningChanged$2(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sysui_rounded_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    iget v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    move v1, v0

    :cond_2
    if-nez v2, :cond_3

    move v2, v0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v4, 0x7f0a02ec

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v5, 0x7f0a0461

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/ScreenDecorations;->setSize(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method public static synthetic lambda$setupDecorations$0(Lcom/android/systemui/ScreenDecorations;)V
    .locals 2

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_rounded_size"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private setSize(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupDecorations()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v4, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v4, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getDisplayCutoutViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01c8

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    :goto_0
    new-instance v0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$aq1MVJyy_LkZ11q5t5cPVZOqbG0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;-><init>(Landroid/content/Context;ZLjava/lang/Runnable;Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mDensity:F

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ItnW8ZEHeCqCHue6f8abcXewifU;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$ItnW8ZEHeCqCHue6f8abcXewifU;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lcom/android/systemui/ScreenDecorations$3;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    const-string v6, "accessibility_display_inversion_enabled"

    invoke-direct {v1, p0, v2, v4, v6}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/ScreenDecorations$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private setupStatusBarPadding(I)V
    .locals 6

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const v2, 0x7f0a0287

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "sysui_rounded_content_padding"

    const/4 v4, 0x2

    invoke-static {v2, v3, p1, v4}, Lcom/android/systemui/tuner/TunablePadding;->addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    const-string v3, "CollapsedStatusBarFragment"

    new-instance v4, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    const v5, 0x7f0a0596

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    const-string v3, "QS"

    new-instance v4, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;

    const v5, 0x7f0a020c

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/ScreenDecorations$TunablePaddingTagListener;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    :cond_1
    return-void
.end method

.method private setupStatusBarPaddingIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPadding(I)V

    :cond_0
    return-void
.end method

.method private shouldDrawCutout()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static shouldDrawCutout(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/ScreenDecorations;->sHideCutoutForGearVr:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startOnScreenDecorationsThread()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateRoundedCornerRadii()V

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    :cond_1
    new-instance v0, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayDensity:I

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayWidth:I

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayHeight:I

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateOrientation()V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vr"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vr/GearVrManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrManager:Lcom/samsung/android/vr/GearVrManager;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrManager:Lcom/samsung/android/vr/GearVrManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mGearVrManager:Lcom/samsung/android/vr/GearVrManager;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/vr/GearVrManager;->registerGearVrListener(Lcom/samsung/android/vr/GearVrManager$GearVrListener;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method private updateLayoutParams()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->getBottomLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getDisplayCutoutViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateOrientation()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must call on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingRotationChange:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayWidth:I

    if-ne v3, v5, :cond_2

    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayHeight:I

    if-ne v4, v5, :cond_2

    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayDensity:I

    if-eq v2, v5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v1

    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-ne v1, v5, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    iput v3, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayWidth:I

    iput v4, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayHeight:I

    iput v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayDensity:I

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateViews()V

    :cond_5
    return-void
.end method

.method private updateRoundedCornerRadii()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    if-ne v3, v0, :cond_1

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefault:I

    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultTop:I

    iput v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedDefaultBottom:I

    const-string/jumbo v4, "sysui_rounded_size"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/ScreenDecorations;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private updateView(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    int-to-float v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private updateViews()V
    .locals 15

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v1, 0x7f0a02ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    const v3, 0x7f0a0461

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    const/16 v4, 0x33

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    const/16 v6, 0x35

    invoke-direct {p0, v2, v6, v5, v5}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    const/16 v7, 0x53

    invoke-direct {p0, v1, v7, v5, v5}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    const/16 v8, 0x55

    invoke-direct {p0, v3, v8, v5, v5}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    iget v9, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v10, 0x1

    if-nez v9, :cond_0

    invoke-direct {p0, v0, v4, v5, v5}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    invoke-direct {p0, v2, v6, v10, v5}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    invoke-direct {p0, v1, v7, v5, v10}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    invoke-direct {p0, v3, v8, v10, v10}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    goto :goto_0

    :cond_0
    iget v9, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/16 v11, 0x5a

    const/16 v12, 0x10e

    const/high16 v13, 0x42b40000    # 90.0f

    if-ne v9, v10, :cond_1

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0, v0, v4, v5, v10}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    invoke-direct {p0, v2, v7, v12}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    invoke-direct {p0, v1, v6, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0, v3, v8, v10, v5}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    goto :goto_0

    :cond_1
    iget v9, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v14, 0x3

    if-ne v9, v14, :cond_2

    invoke-direct {p0, v0, v7, v5, v10}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    invoke-direct {p0, v2, v8, v10, v10}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    invoke-direct {p0, v1, v4, v5, v5}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    invoke-direct {p0, v3, v6, v10, v5}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    goto :goto_0

    :cond_2
    iget v9, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v14, 0x2

    if-ne v9, v14, :cond_3

    invoke-virtual {v0, v13}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0, v0, v8, v10, v5}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    invoke-direct {p0, v2, v6, v11}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    invoke-direct {p0, v1, v7, v12}, Lcom/android/systemui/ScreenDecorations;->updateView(Landroid/view/View;II)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setRotation(F)V

    invoke-direct {p0, v3, v4, v5, v10}, Lcom/android/systemui/ScreenDecorations;->flipView(Landroid/view/View;IZZ)V

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iget v5, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setRotation(I)V

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibilities()V

    return-void
.end method

.method private updateWindowVisibilities()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mBottomOverlay:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateWindowVisibility(Landroid/view/View;)V

    return-void
.end method

.method private updateWindowVisibility(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v2

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    nop

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method getDisplayCutoutViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1
    return-object v0
.end method

.method getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const v4, 0x20800128

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const-string v1, "ScreenDecorOverlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x55

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/ScreenDecorations;->isLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_3
    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$s7DjNkOkUJ7fiS8MVJdfJI0DZDc;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$s7DjNkOkUJ7fiS8MVJdfJI0DZDc;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$kEfyTU3ITFOJcyBiuNXOBVEPPYk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$kEfyTU3ITFOJcyBiuNXOBVEPPYk;-><init>(Lcom/android/systemui/ScreenDecorations;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->startHandlerThread()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ScreenDecorations$IfAux2ksmJXT9o9i38WaSEQXJTQ;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/systemui/ScreenDecorations;->setupStatusBarPaddingIfNeeded()V

    return-void
.end method

.method startHandlerThread()Landroid/os/Handler;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenDecorations"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    return-object v1
.end method
