.class public Lcom/android/server/SdpManagerService$SdpManagerProxy;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdpManagerProxy"
.end annotation


# static fields
.field public static final DATA_CREDENTIAL:Ljava/lang/String; = "credential"

.field public static final DATA_CREDENTIAL_TYPE:Ljava/lang/String; = "type"

.field public static final DATA_REQUESTED_QUALITY:Ljava/lang/String; = "requestedQuality"

.field public static final SDP_PROXY_CMD_SP_FULL_MIGRATION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpManagerProxy;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convToMessage(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    nop

    :goto_0
    return v0
.end method


# virtual methods
.method public sendMessage(ILandroid/os/Bundle;)V
    .locals 3

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdpManagerProxy - Send message with command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpManagerProxy;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpManagerProxy;->convToMessage(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/android/server/SdpManagerService;->access$3700(Lcom/android/server/SdpManagerService;ILandroid/os/Bundle;)V

    return-void
.end method
