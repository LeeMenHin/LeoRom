.class public Lcom/android/keyguard/KeyguardDisplayManager;
.super Ljava/lang/Object;
.source "KeyguardDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private final mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private final mContext:Landroid/content/Context;

.field private mDebugDisplay:Z

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mPresentation:Landroid/app/Presentation;

.field private mShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDebugDisplay:Z

    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$2;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardDisplayManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    return v0
.end method

.method private isEnabledDebugSecondaryDisplay()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "lockscreen.secondary_display"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method


# virtual methods
.method public hide()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardDisplayManager"

    const-string v2, "hide"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    return-void
.end method

.method public show()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardDisplayManager;->isEnabledDebugSecondaryDisplay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDebugDisplay:Z

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardDisplayManager"

    const-string/jumbo v2, "show"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDebugDisplay:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    :cond_3
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    return-void
.end method

.method protected updateDisplays(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDebugDisplay:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v5

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mDebugDisplay:Z

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_4

    new-instance v5, Landroid/view/DisplayInfo;

    invoke-direct {v5}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v6, v5, Landroid/view/DisplayInfo;->flags:I

    const/high16 v7, 0x20000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    const/4 v4, 0x0

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-eq v5, v4, :cond_6

    sget-boolean v5, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "KeyguardDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display gone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v7}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->dismiss()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    sget-boolean v5, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "KeyguardDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keyguard enabled on display: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    const v6, 0x7f130385

    invoke-static {v5, v4, v6}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;->getInstance(Landroid/content/Context;Landroid/view/Display;I)Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v5, v6}, Landroid/app/Presentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    const-string v6, "KeyguardDisplayManager"

    const-string v7, "Invalid display:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    :cond_8
    :goto_4
    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->dismiss()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    :cond_a
    :goto_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eq v1, v0, :cond_c

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_6

    :cond_b
    const/4 v1, -0x1

    :goto_6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v2, v1}, Lcom/android/keyguard/ViewMediatorCallback;->onSecondaryDisplayShowingChanged(I)V

    :cond_c
    return-void
.end method
