.class Lcom/android/server/locksettings/LockSettingsService$4;
.super Landroid/os/IProgressListener$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$4;->val$userId:I

    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "unlockUser finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/locksettings/LockSettingsService;->access$2200(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->access$2300(Lcom/android/server/locksettings/LockSettingsService;I)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->deleteInvalidSyntheticPasswordHandleLocked(IJ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$4;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsService$4;->val$userId:I

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->access$2400(Lcom/android/server/locksettings/LockSettingsService;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onProgress(IILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockUser progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStarted(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "LockSettingsService"

    const-string/jumbo v1, "unlockUser started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
