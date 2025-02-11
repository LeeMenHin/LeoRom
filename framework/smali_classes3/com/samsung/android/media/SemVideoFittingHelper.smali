.class public final Lcom/samsung/android/media/SemVideoFittingHelper;
.super Ljava/lang/Object;
.source "SemVideoFittingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;,
        Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;,
        Lcom/samsung/android/media/SemVideoFittingHelper$Mode;
    }
.end annotation


# static fields
.field private static final BLACKBAR_EXIST:I = 0x1

.field public static final CROP_TO_FIT_MODE:I = 0x3

.field private static final EVENT_BLACKBAR_DETECTION_DONE:I = 0x1

.field private static final EVENT_ERROR:I = 0x64

.field public static final FIT_TO_SCREEN_MODE:I = 0x1

.field public static final FULL_DISTORT_MODE:I = 0x2

.field public static final ORIGINAL_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemVideoFittingHelper"


# instance fields
.field private mBlackBarDetectedListener:Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

.field private mCurrentSmartFittingMode:I

.field private mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "videofittinghelper"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemVideoFittingHelper"

    const-string v1, "Create SemVideoFittingHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemVideoFittingHelper;Lcom/samsung/android/media/SemVideoFittingHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper;->mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;-><init>(Lcom/samsung/android/media/SemVideoFittingHelper;Lcom/samsung/android/media/SemVideoFittingHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper;->mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper;->mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/media/SemVideoFittingHelper;->native_setup(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/media/SemVideoFittingHelper;)Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper;->mBlackBarDetectedListener:Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    return-object v0
.end method

.method private final native native_detectBlackBar(J)V
.end method

.method private final native native_release()V
.end method

.method private final native native_setMode(I)V
.end method

.method private final native native_setup(Ljava/lang/Object;I)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;II)V
    .locals 3

    const-string v0, "SemVideoFittingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postEventFromNative what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/SemVideoFittingHelper;

    if-nez v0, :cond_0

    const-string v1, "SemVideoFittingHelper"

    const-string v2, "SemVideoFittingHelper ref is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/media/SemVideoFittingHelper;->mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/media/SemVideoFittingHelper;->mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/media/SemVideoFittingHelper;->mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public detectBlackBar(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SemVideoFittingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detectBlackBar, duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemVideoFittingHelper;->native_detectBlackBar(J)V

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "SemVideoFittingHelper"

    const-string/jumbo v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper;->mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper;->mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/media/SemVideoFittingHelper;->mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    iput-object v1, p0, Lcom/samsung/android/media/SemVideoFittingHelper;->mBlackBarDetectedListener:Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    invoke-direct {p0}, Lcom/samsung/android/media/SemVideoFittingHelper;->native_release()V

    return-void
.end method

.method public setBlackBarDetectedListener(Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/media/SemVideoFittingHelper;->mEventHandler:Lcom/samsung/android/media/SemVideoFittingHelper$EventHandler;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/media/SemVideoFittingHelper;->mBlackBarDetectedListener:Lcom/samsung/android/media/SemVideoFittingHelper$BlackBarDetectedListener;

    return-void

    :cond_0
    const-string/jumbo v0, "release() was already called"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "release() was already called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "SemVideoFittingHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode, mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemVideoFittingHelper;->native_setMode(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMode mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
