.class Lcom/android/server/enterprise/dex/DexPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "DexPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dex/DexPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/dex/DexPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DexPolicyService"

    const-string/jumbo v2, "dex enter "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DexPolicyService"

    const-string/jumbo v2, "dex exit "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "DexPolicyService"

    const-string v2, "ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->access$702(Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/dex/DexPolicy;->getAdminUidForEthernetOnly()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v1, v2}, Lcom/android/server/enterprise/dex/DexPolicy;->access$202(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/dex/DexPolicy;->access$200(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/dex/DexPolicy;->access$300(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->access$600(Lcom/android/server/enterprise/dex/DexPolicy;)V

    :cond_3
    :goto_0
    return-void
.end method
