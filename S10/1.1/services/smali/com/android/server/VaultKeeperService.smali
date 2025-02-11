.class public final Lcom/android/server/VaultKeeperService;
.super Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.source "VaultKeeperService.java"


# static fields
.field private static final ANDROID_SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field private static final ANDROID_UID_SHELL:I = 0x7d0

.field private static final ANDROID_UID_SYSTEM:I = 0x3e8

.field private static final MESSAGE_ACQUIRE_WAKELOCK:I = 0x1

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x2

.field private static final RSA2048_SIGNATURE_LEN:I = 0x100

.field private static final SERVICE_NOT_SUPPORT:I = 0x0

.field private static final SERVICE_SUPPORT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VaultKeeperService"

.field private static final TYPE_EMT:I = 0x3

.field private static final TYPE_MAX:I = 0x3

.field private static final TYPE_MIN:I = 0x1

.field private static final TYPE_NONCE:I = 0x1

.field private static final TYPE_VAULT_DATA_MAX:I = 0x3

.field private static final TYPE_VAULT_DATA_MIN:I = 0x1

.field private static final TYPE_VAULT_DATA_PRIVATED:I = 0x3

.field private static final TYPE_VAULT_DATA_SHELTERED:I = 0x2

.field private static final TYPE_VAULT_DATA_UNSHELTERED:I = 0x1

.field private static final TYPE_WB:I = 0x2

.field private static final VAULT_DATA_PRIVATED_LEN:I = 0x20

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mServiceSupport:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "vkjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Lcom/android/server/VaultKeeperService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VaultKeeperService$1;-><init>(Lcom/android/server/VaultKeeperService;)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    sput-object p1, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/VaultKeeperService;->nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    sget-object v0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "VK_WakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private getPakageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get service instance by ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_c

    if-nez p1, :cond_0

    :try_start_1
    const-string v2, "VaultKeeperService"

    const-string v3, "Vault name is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catchall_0
    move-exception v2

    goto/16 :goto_4

    :catch_0
    move-exception v2

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VaultKeeperService"

    const-string v3, "Vault name is wrong"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v1

    :cond_1
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/VaultKeeperService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "system_server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "system_server"

    move-object v0, v2

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_3

    const-string v2, "VaultKeeperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission denied. Check your UID ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :try_start_6
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v1

    :cond_3
    :try_start_7
    sget-object v2, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-nez v2, :cond_4

    const-string v3, "VaultKeeperService"

    const-string v4, "ActivityManager is null, something wrong in framework"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    nop

    :try_start_8
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    return-object v1

    :cond_4
    :try_start_9
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "VaultKeeperService"

    const-string/jumbo v4, "getRunningAppProcesses return null List. Cannot check permision"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    nop

    :try_start_a
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    return-object v1

    :cond_5
    :try_start_b
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    if-ne v5, v6, :cond_6

    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object v0, v3

    const-string v3, "VaultKeeperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matched clientPkgName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    goto :goto_0

    :cond_7
    :goto_1
    if-nez v0, :cond_8

    const-string v3, "VaultKeeperService"

    const-string v4, "Invalid package name"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    nop

    :try_start_c
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1

    return-object v1

    :cond_8
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "VaultKeeperService"

    const-string v4, "Invalid package length"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    nop

    :try_start_e
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1

    return-object v1

    :cond_9
    :try_start_f
    sget-object v3, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "VaultKeeperService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOT Allowed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isn\'t signed with platform key."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    nop

    :try_start_10
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_1

    return-object v1

    :cond_a
    :goto_2
    :try_start_11
    invoke-direct {p0, v0, p1}, Lcom/android/server/VaultKeeperService;->nativeIsRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "VaultKeeperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    nop

    :try_start_12
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_1

    return-object v0

    :cond_b
    :try_start_13
    const-string v2, "VaultKeeperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOT Allowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not registered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    nop

    :try_start_14
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_1

    return-object v1

    :goto_3
    nop

    :try_start_15
    const-string v3, "VaultKeeperService"

    const-string v4, "Fail to check permission(Exception)"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    nop

    :try_start_16
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :goto_4
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_c
    const-string v2, "VaultKeeperService"

    const-string v3, "Unable to acquire lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_1

    return-object v1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1
.end method

.method private native nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeInitialize2(Ljava/lang/String;Ljava/lang/String;[B[B)[B
.end method

.method private native nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeIsRegistered(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeRead(Ljava/lang/String;Ljava/lang/String;I[B)[B
.end method

.method private native nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[B)[B
.end method

.method private native nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method private native nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)I
.end method

.method private native nativeWrite2(Ljava/lang/String;Ljava/lang/String;I[B)[B
.end method


# virtual methods
.method public destroy(Ljava/lang/String;[B[B[B)I
    .locals 7

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x68

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v1, -0x6a

    return v1

    :cond_1
    const/16 v1, -0x66

    if-eqz p2, :cond_2

    array-length v2, p2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    const-string v2, "VaultKeeperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "destroy : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    array-length v2, p3

    if-nez v2, :cond_3

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "destroy : if cert is exist, it should contain value."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    array-length v2, p4

    const/16 v3, 0x100

    if-eq v2, v3, :cond_4

    const-string v2, "VaultKeeperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "destroy : if signature is exist, it should be 256, but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/VaultKeeperService;->nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_5
    const-string v1, "VaultKeeperService"

    const-string v2, "Unable to acquire lock"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v1, -0x69

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 v2, -0x67

    return v2

    :cond_6
    if-nez p3, :cond_7

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "destroy : cert is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-nez p4, :cond_8

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "destroy : sig is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v1
.end method

.method public encryptMessage(Ljava/lang/String;[B)[B
    .locals 6

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "encryptMessage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    array-length v2, p2

    if-nez v2, :cond_2

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "encryptMessage : if msg is exist, it should contain value."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_3
    const-string v2, "VaultKeeperService"

    const-string v3, "Unable to acquire lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1
.end method

.method public initialize(Ljava/lang/String;[B[B[B[B)I
    .locals 8

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x68

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v1, -0x6a

    return v1

    :cond_1
    const/16 v1, -0x66

    if-eqz p2, :cond_2

    array-length v2, p2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    const-string v2, "VaultKeeperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialize : if key is exist, it should be 32 Bytes. but now("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    if-eqz p3, :cond_3

    array-length v2, p3

    if-nez v2, :cond_3

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "initialize : if initUnsheltered is exist, it should contain value."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    if-eqz p4, :cond_4

    array-length v2, p4

    if-nez v2, :cond_4

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "initialize : if cert is exist, it should contain value."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    if-eqz p5, :cond_5

    array-length v2, p5

    const/16 v3, 0x100

    if-eq v2, v3, :cond_5

    const-string v2, "VaultKeeperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialize :  if signature is exist, it should be 256, but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/4 v2, 0x0

    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    array-length v3, p5

    array-length v4, p4

    add-int/2addr v3, v4

    new-array v2, v3, [B

    array-length v3, p5

    const/4 v4, 0x0

    invoke-static {p5, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, p5

    array-length v5, p4

    invoke-static {p4, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_6
    move-object v7, v2

    if-nez p4, :cond_7

    if-nez p5, :cond_7

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "initialize : All of input param is empty."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_8

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/VaultKeeperService;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_8
    const-string v1, "VaultKeeperService"

    const-string v2, "Unable to acquire lock"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v1, -0x69

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 v2, -0x67

    return v2
.end method

.method public initialize2(Ljava/lang/String;[B[B)[B
    .locals 6

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize2"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    array-length v2, p2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    const-string v2, "VaultKeeperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialize : if key is exist, it should be 32 Bytes. but now("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    if-eqz p3, :cond_5

    array-length v2, p3

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeInitialize2(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_4
    const-string v2, "VaultKeeperService"

    const-string v3, "Unable to acquire lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1

    :cond_5
    :goto_0
    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "initialize : it should contain value."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public isInitialized(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "isInitialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/VaultKeeperService;->nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_2
    const-string v2, "VaultKeeperService"

    const-string v3, "Unable to acquire lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v1
.end method

.method public migrationStorage(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "migrationStorage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/VaultKeeperService;->nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_2
    const-string v2, "VaultKeeperService"

    const-string v3, "Unable to acquire lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v1
.end method

.method public read(Ljava/lang/String;I[B)[B
    .locals 6

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "read"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x1

    if-lt p2, v2, :cond_5

    const/4 v3, 0x3

    if-le p2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    array-length v3, p3

    if-nez v3, :cond_3

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "read : if msg is exist, it should contain value."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeRead(Ljava/lang/String;Ljava/lang/String;I[B)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_4
    const-string v2, "VaultKeeperService"

    const-string v3, "Unable to acquire lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1

    :cond_5
    :goto_0
    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "read : Invalid type value."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public sensitiveBox(Ljava/lang/String;I[B)[B
    .locals 6

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "sensitiveBox"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x1

    if-eqz p2, :cond_3

    if-lt p2, v2, :cond_2

    const/4 v3, 0x3

    if-le p2, v3, :cond_3

    :cond_2
    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "sensitiveBox : Invalid type vaule."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "sensitiveBox : Invalid msg value."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_5

    :try_start_1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[B)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_5
    const-string v2, "VaultKeeperService"

    const-string v3, "Unable to acquire lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1
.end method

.method public verifyCertificate(Ljava/lang/String;[B)Z
    .locals 6

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p2, :cond_2

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "verifyCertificate : cert is null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    array-length v2, p2

    if-nez v2, :cond_3

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "verifyCertificate : certificate length is zero"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_4
    const-string v2, "VaultKeeperService"

    const-string v3, "Unable to acquire lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v1
.end method

.method public write(Ljava/lang/String;I[B[B[B)I
    .locals 8

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "write"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VaultKeeper not support("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x68

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 v1, -0x6a

    return v1

    :cond_1
    const/4 v1, 0x1

    const/16 v2, -0x66

    if-lt p2, v1, :cond_7

    const/4 v3, 0x3

    if-le p2, v3, :cond_2

    goto/16 :goto_0

    :cond_2
    if-eqz p3, :cond_3

    array-length v3, p3

    if-nez v3, :cond_3

    const-string v1, "VaultKeeperService"

    const-string/jumbo v3, "write : if data is exist, it should contain value."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/16 v3, 0x20

    if-eqz p4, :cond_4

    array-length v4, p4

    if-eq v4, v3, :cond_4

    const-string v1, "VaultKeeperService"

    const-string/jumbo v3, "write : if privated is exist, it should contain value."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    if-eqz p5, :cond_5

    array-length v4, p5

    if-eq v4, v3, :cond_5

    const-string v1, "VaultKeeperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write : if hmac is exist, it should be 32 Bytes. but now("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_6

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/server/VaultKeeperService;->nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_6
    const-string v1, "VaultKeeperService"

    const-string v2, "Unable to acquire lock"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v1, -0x69

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 v2, -0x67

    return v2

    :cond_7
    :goto_0
    const-string v1, "VaultKeeperService"

    const-string/jumbo v3, "write : Invalid type vaule."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public write2(Ljava/lang/String;I[B)[B
    .locals 6

    const-string v0, "VaultKeeperService"

    const-string/jumbo v1, "write2"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "VaultKeeperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VaultKeeper not support("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->getPakageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x1

    if-lt p2, v2, :cond_5

    const/4 v3, 0x3

    if-le p2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    array-length v3, p3

    if-nez v3, :cond_3

    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "write : if data is exist, it should contain value."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeWrite2(Ljava/lang/String;Ljava/lang/String;I[B)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_4
    const-string v2, "VaultKeeperService"

    const-string v3, "Unable to acquire lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v1

    :cond_5
    :goto_0
    const-string v2, "VaultKeeperService"

    const-string/jumbo v3, "write : Invalid type vaule."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
