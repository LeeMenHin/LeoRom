.class Lcom/samsung/android/privatemode/SemPrivateModeManager$3;
.super Ljava/lang/Object;
.source "SemPrivateModeManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/privatemode/SemPrivateModeManager;->bindPrivateModeManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/privatemode/SemPrivateModeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/privatemode/SemPrivateModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager$3;->this$0:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "PPS_SemPrivateModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->access$002(Z)Z

    invoke-static {p2}, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/privatemode/IPrivateModeManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->access$102(Lcom/samsung/android/privatemode/IPrivateModeManager;)Lcom/samsung/android/privatemode/IPrivateModeManager;

    :try_start_0
    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/privatemode/SemPrivateModeManager$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager$3$1;-><init>(Lcom/samsung/android/privatemode/SemPrivateModeManager$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/privatemode/SemPrivateModeManager$3;->this$0:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    const-string/jumbo v2, "onServiceConnected"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->access$400(Lcom/samsung/android/privatemode/SemPrivateModeManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "PPS_SemPrivateModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->access$002(Z)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->access$102(Lcom/samsung/android/privatemode/IPrivateModeManager;)Lcom/samsung/android/privatemode/IPrivateModeManager;

    return-void
.end method
