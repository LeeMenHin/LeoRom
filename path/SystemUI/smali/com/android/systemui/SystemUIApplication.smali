.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/SysUiServiceProvider;


# static fields
.field private static mLeoContext:Landroid/content/Context;


# instance fields
.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/SystemUIApplication;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/SystemUIApplication;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/SystemUIApplication;->mLeoContext:Landroid/content/Context;

    return-object v0
.end method

.method private startServicesIfNeeded([Ljava/lang/String;)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "1"

    const-string/jumbo v2, "sys.boot_completed"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    :cond_1
    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v0, "SystemUIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting SystemUI services for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v2, "SystemUIBootTiming"

    const-wide/16 v3, 0x1000

    invoke-direct {v0, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v2, "StartServices"

    invoke-virtual {v0, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartServices"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/SystemUI;

    aput-object v10, v9, v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v9, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v9, v9, v4

    iput-object p0, v9, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v9, v9, v4

    iget-object v10, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v10, v9, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    iget-object v9, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Lcom/android/systemui/SystemUI;->start()V

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    const-wide/16 v6, 0x3e8

    cmp-long v6, v9, v6

    if-lez v6, :cond_2

    const-string v6, "SystemUIService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Initialization of "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " took "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ms"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-class v4, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/PluginManager;

    new-instance v5, Lcom/android/systemui/SystemUIApplication$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/SystemUIApplication$3;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    const-class v6, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v4, v5, v6, v1}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const v0, 0x7f130277

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUIApplication;->setTheme(I)V

    sput-object p0, Lcom/android/systemui/SystemUIApplication;->mLeoContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/SystemUIFactory;->createFromConfig(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/systemui/SystemUIApplication$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/SystemUIApplication$2;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->setStatusBarIcons()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->startSecondaryUserServicesIfNeeded()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->setStatusBarIcons()V

    return-void
.end method

.method public setStatusBarIcons()V
    .locals 1

    sget-object v0, Lcom/android/systemui/SystemUIApplication;->mLeoContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/LeoDrawable;->updateStatusBarIcons(Landroid/content/Context;)V

    return-void
.end method

.method startSecondaryUserServicesIfNeeded()V
    .locals 2

    nop

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/String;)V

    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/String;)V

    return-void
.end method
