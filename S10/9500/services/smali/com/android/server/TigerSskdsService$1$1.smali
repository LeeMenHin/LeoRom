.class Lcom/android/server/TigerSskdsService$1$1;
.super Ljava/lang/Object;
.source "TigerSskdsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TigerSskdsService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/TigerSskdsService$1;


# direct methods
.method constructor <init>(Lcom/android/server/TigerSskdsService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/TigerSskdsService$1$1;->this$1:Lcom/android/server/TigerSskdsService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/server/TigerSskdsService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearSFSThread start -- reset ta"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/TigerSskdsService$1$1;->this$1:Lcom/android/server/TigerSskdsService$1;

    iget-object v0, v0, Lcom/android/server/TigerSskdsService$1;->this$0:Lcom/android/server/TigerSskdsService;

    invoke-virtual {v0}, Lcom/android/server/TigerSskdsService;->resetTA()V

    return-void
.end method
