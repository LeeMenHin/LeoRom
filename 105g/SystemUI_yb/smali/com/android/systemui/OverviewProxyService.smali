.class public Lcom/android/systemui/OverviewProxyService;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/Dumpable;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnectionBackoffAttempts:I

.field private final mConnectionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mDeferredConnectionCallback:Ljava/lang/Runnable;

.field private final mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mHandler:Landroid/os/Handler;

.field private mInteractionFlags:I

.field private mIsEnabled:Z

.field private final mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

.field private final mOverviewServiceConnection:Landroid/content/ServiceConnection;

.field private final mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPluginConnected:Z

.field private final mQuickStepIntent:Landroid/content/Intent;

.field private final mRecentsComponentName:Landroid/content/ComponentName;

.field private mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private mTaskLockDbHelper:Lcom/android/systemui/util/TaskLockDbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$iQ_AhE_jQV1-6xCMm0AowIu_bDY;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$iQ_AhE_jQV1-6xCMm0AowIu_bDY;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    new-instance v1, Lcom/android/systemui/OverviewProxyService$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/OverviewProxyService$1;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    new-instance v1, Lcom/android/systemui/-$$Lambda$OverviewProxyService$SlBFfY-D9O-Us5sbpzzPXvtyKy4;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$OverviewProxyService$SlBFfY-D9O-Us5sbpzzPXvtyKy4;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/OverviewProxyService$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/OverviewProxyService$2;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/OverviewProxyService$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/OverviewProxyService$3;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/android/systemui/OverviewProxyService$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/OverviewProxyService$4;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    new-instance v1, Lcom/android/systemui/-$$Lambda$McHnOU5IdjMu78SRtgrSsSZOLVw;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$McHnOU5IdjMu78SRtgrSsSZOLVw;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    const v1, 0x104022d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    const-string v2, "QuickStepInteractionFlags"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    new-instance v1, Lcom/android/systemui/util/TaskLockDbHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/TaskLockDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mTaskLockDbHelper:Lcom/android/systemui/util/TaskLockDbHelper;

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->updateEnabledState()V

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedCallback:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mLauncherStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const-class v1, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/splugins/SPluginManager;

    new-instance v2, Lcom/android/systemui/OverviewProxyService$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/OverviewProxyService$5;-><init>(Lcom/android/systemui/OverviewProxyService;)V

    const-class v3, Lcom/samsung/systemui/splugins/recents/PluginExRecents;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/OverviewProxyService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/OverviewProxyService;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->notifyConnectionChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/OverviewProxyService;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/OverviewProxyService;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/OverviewProxyService;Lcom/android/systemui/shared/recents/IOverviewProxy;)Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/OverviewProxyService;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/OverviewProxyService;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/OverviewProxyService;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/OverviewProxyService;Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/OverviewProxyService;->connectPlugin(Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->disconnectPlugin()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/OverviewProxyService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/OverviewProxyService;)Lcom/android/systemui/util/TaskLockDbHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mTaskLockDbHelper:Lcom/android/systemui/util/TaskLockDbHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/OverviewProxyService;FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/OverviewProxyService;->notifyBackButtonAlphaChanged(FZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/OverviewProxyService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->updateEnabledState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/OverviewProxyService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/OverviewProxyService;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/OverviewProxyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    return v0
.end method

.method private connectPlugin(Lcom/samsung/systemui/splugins/recents/PluginExRecents;)V
    .locals 4

    const-string v0, "OverviewProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectPlugin : mPluginConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->disconnectFromLauncherService()V

    invoke-interface {p1}, Lcom/samsung/systemui/splugins/recents/PluginExRecents;->getOverviewProxy()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onBind(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    const-string v0, "OverviewProxyService"

    const-string v1, "connectPlugin : binding success!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OverviewProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectPlugin : binding fail!! : e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private disconnectFromLauncherService()V
    .locals 6

    const-string v0, "OverviewProxyService"

    const-string v1, "disconnectFromLauncherService : mOverviewProxy=%b, mPluginConnected=%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    nop

    move v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OverviewProxyService"

    const-string/jumbo v2, "unlink is failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v5}, Lcom/android/systemui/OverviewProxyService;->notifyBackButtonAlphaChanged(FZ)V

    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->notifyConnectionChanged()V

    :cond_1
    return-void
.end method

.method private disconnectPlugin()V
    .locals 3

    const-string v0, "OverviewProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectPlugin : mPluginConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OverviewProxyService"

    const-string v1, "disconnectPlugin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    invoke-virtual {p0}, Lcom/android/systemui/OverviewProxyService;->startConnectionToCurrentUser()V

    return-void
.end method

.method private internalConnectToCurrentUser()V
    .locals 7

    const-string v0, "OverviewProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalConnectToCurrentUser : mPluginConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->disconnectFromLauncherService()V

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Lcom/android/systemui/OverviewProxyService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewServiceConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "OverviewProxyService"

    const-string v5, "Unable to bind because of security error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    const v3, 0x459c4000    # 5000.0f

    iget v4, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-static {v3, v4}, Ljava/lang/Math;->scalb(FI)F

    move-result v3

    float-to-long v3, v3

    iget-object v5, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v5, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    const-string v2, "OverviewProxyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to connect on attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " will try again in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string v0, "OverviewProxyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot attempt connection, is setup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$iQ_AhE_jQV1-6xCMm0AowIu_bDY(Lcom/android/systemui/OverviewProxyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/OverviewProxyService;)V
    .locals 2

    const-string v0, "OverviewProxyService"

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->internalConnectToCurrentUser()V

    return-void
.end method

.method private notifyBackButtonAlphaChanged(FZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onBackButtonAlphaChanged(FZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyConnectionChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    iget-object v3, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateEnabledState()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/OverviewProxyService;->mIsEnabled:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x40000

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/OverviewProxyService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/OverviewProxyService;->mIsEnabled:Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/OverviewProxyService;->mIsEnabled:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onConnectionChanged(Z)V

    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    invoke-interface {p1, v0}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onInteractionFlagsChanged(I)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/OverviewProxyService;->addCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "OverviewProxyService state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mConnectionBackoffAttempts="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionBackoffAttempts:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  isCurrentUserSetup="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  isConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mRecentsComponentName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mRecentsComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mIsEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mInteractionFlags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mQuickStepIntent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mQuickStepIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mPluginConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mPluginConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getInteractionFlags()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    return v0
.end method

.method public getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/OverviewProxyService;->mIsEnabled:Z

    return v0
.end method

.method public notifyQuickScrubStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onQuickScrubStarted()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyQuickStepStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-interface {v1}, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;->onQuickStepStarted()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/OverviewProxyService;->removeCallback(Lcom/android/systemui/OverviewProxyService$OverviewProxyListener;)V

    return-void
.end method

.method public shouldShowSwipeUpUI()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/OverviewProxyService;->mInteractionFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->getNavigationBarGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startConnectionToCurrentUser()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/OverviewProxyService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/OverviewProxyService;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/OverviewProxyService;->internalConnectToCurrentUser()V

    :goto_0
    return-void
.end method
