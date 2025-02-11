.class public final Landroid/media/projection/MediaProjectionManager;
.super Ljava/lang/Object;
.source "MediaProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/MediaProjectionManager$CallbackDelegate;,
        Landroid/media/projection/MediaProjectionManager$Callback;
    }
.end annotation


# static fields
.field public static final EXTRA_APP_TOKEN:Ljava/lang/String; = "android.media.projection.extra.EXTRA_APP_TOKEN"

.field public static final EXTRA_MEDIA_PROJECTION:Ljava/lang/String; = "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

.field private static final TAG:Ljava/lang/String; = "MediaProjectionManager"

.field public static final TYPE_MIRRORING:I = 0x1

.field public static final TYPE_PRESENTATION:I = 0x2

.field public static final TYPE_SCREEN_CAPTURE:I


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/projection/MediaProjectionManager$Callback;",
            "Landroid/media/projection/MediaProjectionManager$CallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/media/projection/IMediaProjectionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    invoke-direct {v0, p1, p2}, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;-><init>(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1, v0}, Landroid/media/projection/IMediaProjectionManager;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaProjectionManager"

    const-string v3, "Unable to add callbacks to MediaProjection service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createScreenCaptureIntent()Landroid/content/Intent;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104021c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vr"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/vr/GearVrManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/vr/GearVrManager;->isDock()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/vr/GearVrManager;->isVrMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/vr/GearVrManager;->getVrSystemUiMode()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android"

    const-string v5, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.MEDIA_PROJECTION_PERMISSION_UI"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "MediaProjectionManager"

    const-string v4, "can\'t run vrsvc: package signature mismatch. action=com.samsung.intent.action.MEDIA_SCREEN_CAPTURE_UI"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaProjectionManager"

    const-string v2, "Unable to get the active projection info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroid/media/projection/MediaProjection;

    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public removeCallback(Landroid/media/projection/MediaProjectionManager$Callback;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager$CallbackDelegate;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v1, v0}, Landroid/media/projection/IMediaProjectionManager;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaProjectionManager"

    const-string v3, "Unable to add callbacks to MediaProjection service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semGetMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v6

    nop

    :try_start_1
    iget-object v6, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v6, v7, v1, v5, v5}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    nop

    if-nez v0, :cond_0

    const-string v5, "MediaProjectionManager"

    const-string v6, "Can\'t create projection"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    new-instance v3, Landroid/media/projection/MediaProjection;

    iget-object v5, p0, Landroid/media/projection/MediaProjectionManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v0}, Landroid/media/projection/MediaProjection;-><init>(Landroid/content/Context;Landroid/media/projection/IMediaProjection;)V

    return-object v3

    :catch_0
    move-exception v5

    const-string v6, "MediaProjectionManager"

    const-string/jumbo v7, "unable to create projection"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :catch_1
    move-exception v5

    const-string v6, "MediaProjectionManager"

    const-string/jumbo v7, "unable to look up package name"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method public stopActiveProjection()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/projection/MediaProjectionManager;->mService:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v0}, Landroid/media/projection/IMediaProjectionManager;->stopActiveProjection()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaProjectionManager"

    const-string v2, "Unable to stop the currently active media projection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
