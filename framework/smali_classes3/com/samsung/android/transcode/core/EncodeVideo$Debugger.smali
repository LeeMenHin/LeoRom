.class Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;
.super Ljava/lang/Object;
.source "EncodeVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/core/EncodeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Debugger"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static log(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TranscodeLib"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
