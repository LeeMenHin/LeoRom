.class final Lcom/android/server/BatteryService$HealthServiceWrapper;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HealthServiceWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;,
        Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;,
        Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;,
        Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;
    }
.end annotation


# static fields
.field public static final INSTANCE_HEALTHD:Ljava/lang/String; = "backup"

.field public static final INSTANCE_VENDOR:Ljava/lang/String; = "exthealth"

.field private static final TAG:Ljava/lang/String; = "HealthServiceWrapper"

.field private static final sAllInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

.field private mInstanceName:Ljava/lang/String;

.field private final mLastService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "exthealth"

    const-string v1, "backup"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService$HealthServiceWrapper;->sAllInstances:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;-><init>(Lcom/android/server/BatteryService$HealthServiceWrapper;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HealthServiceRefresh"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/server/BatteryService$HealthServiceWrapper;)Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/server/BatteryService$HealthServiceWrapper;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method getHandlerThread()Landroid/os/HandlerThread;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method getLastService()Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;

    return-object v0
.end method

.method init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    iput-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    iput-object p3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHealthSupplier:Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/BatteryService$HealthServiceWrapper;->sAllInstances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HealthInitGetService_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/BatteryService;->access$7500(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p3, v2}, Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;->get(Ljava/lang/String;)Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    :goto_1
    invoke-static {}, Lcom/android/server/BatteryService;->access$7600()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/android/server/BatteryService;->access$7600()V

    throw v1

    :catch_0
    move-exception v3

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    goto :goto_0

    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mCallback:Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3}, Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;->onRegistration(Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;Lvendor/samsung/hardware/exthealth/V1_0/IExtHealth;Ljava/lang/String;)V

    const-string v1, "HealthInitRegisterNotification"

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$7500(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :try_start_1
    invoke-interface {p2}, Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;->get()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    const-string v2, "android.hardware.health@2.0::IHealth"

    iget-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    invoke-interface {v1, v2, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/BatteryService;->access$7600()V

    nop

    const-string v1, "HealthServiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: HealthServiceWrapper listening to instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception v1

    invoke-static {}, Lcom/android/server/BatteryService;->access$7600()V

    throw v1

    :cond_2
    new-instance v1, Ljava/util/NoSuchElementException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/BatteryService$HealthServiceWrapper;->sAllInstances:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "No IHealth service instance among %s is available. Perhaps no permission?"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
