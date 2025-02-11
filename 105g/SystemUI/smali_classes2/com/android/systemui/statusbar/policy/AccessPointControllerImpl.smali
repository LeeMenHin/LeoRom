.class public Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.implements Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ICONS:[[I

.field private static final ICONS_GIGA:[[I

.field private static final ICONS_WECHAT:[I


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiApBleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "AccessPointController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    const/4 v0, 0x5

    new-array v2, v0, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_4

    const/4 v7, 0x4

    aput-object v4, v2, v7

    sput-object v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    new-array v2, v0, [[I

    new-array v4, v3, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_8

    aput-object v4, v2, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v2, v7

    sput-object v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_GIGA:[[I

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WECHAT:[I

    return-void

    :array_0
    .array-data 4
        0x7f0805cf
        0x7f0805d4
    .end array-data

    :array_1
    .array-data 4
        0x7f0805d0
        0x7f0805d5
    .end array-data

    :array_2
    .array-data 4
        0x7f0805d1
        0x7f0805d6
    .end array-data

    :array_3
    .array-data 4
        0x7f0805d2
        0x7f0805d7
    .end array-data

    :array_4
    .array-data 4
        0x7f0805d3
        0x7f0805d8
    .end array-data

    :array_5
    .array-data 4
        0x7f0805df
        0x7f0805d9
    .end array-data

    :array_6
    .array-data 4
        0x7f0805e0
        0x7f0805da
    .end array-data

    :array_7
    .array-data 4
        0x7f0805e1
        0x7f0805db
    .end array-data

    :array_8
    .array-data 4
        0x7f0805e2
        0x7f0805dc
    .end array-data

    :array_9
    .array-data 4
        0x7f0805e3
        0x7f0805dd
    .end array-data

    :array_a
    .array-data 4
        0x7f0805e4
        0x7f0805e5
        0x7f0805e6
        0x7f0805e7
        0x7f0805e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/samsung/android/settingslib/wifi/WifiTracker;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1, v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/WifiTracker$WifiListener;ZZ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireWifiApBleStateChangeCallback(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    return v0
.end method

.method private fireAcccessPointsCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settingslib/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onAccessPointsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireSettingsIntentCallback(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onSettingsActivityTriggered(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireWifiApBleStateChangeCallback(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;->onWifiApBleStateChanged(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->forceUpdateAsync()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->startTracking()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public addWifiApBleStateChangeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->registerSemWifiApSmartCallback(Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public canConfigWifi()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_wifi"

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public connect(Lcom/samsung/android/settingslib/wifi/AccessPoint;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "AccessPointController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect networkId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->startSettings(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :goto_0
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getIcon(Lcom/samsung/android/settingslib/wifi/AccessPoint;)I
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_WECHAT:[I

    aget v1, v1, v0

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->isOllehGigaAp()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_GIGA:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    return v1

    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS_GIGA:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v3

    return v1

    :cond_5
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object v1, v1, v0

    aget v1, v1, v2

    return v1
.end method

.method public getSmartTetheringIcon(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)I
    .locals 4

    iget v0, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBLERssi:I

    const/4 v1, 0x0

    const/16 v2, -0x3c

    if-lt v0, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v2, -0x46

    if-lt v0, v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/16 v2, -0x50

    if-lt v0, v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, -0x5a

    if-lt v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    iget v2, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSecurity:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    return v2

    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aget v2, v2, v3

    return v2
.end method

.method public getWifiApBleScanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getBleAccessPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApBleStatus(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAccessPointsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback(Ljava/util/List;)V

    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback(Ljava/util/List;)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 0

    return-void
.end method

.method public removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->stopTracking()V

    :cond_2
    return-void
.end method

.method public removeWifiApBleStateChangeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$WifiApBleStateChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiApBleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mSemWifiApSmartCallback:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiApSmartCallback;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->unregisterSemWifiApSmartCallback(Landroid/net/wifi/WifiManager$SemWifiApSmartCallback;)V

    :cond_0
    return-void
.end method

.method public scanForAccessPoints()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback(Ljava/util/List;)V

    return-void
.end method

.method public startSettings(Lcom/samsung/android/settingslib/wifi/AccessPoint;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "wifi_start_connect_ssid"

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "wifi_start_connect_security"

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireSettingsIntentCallback(Landroid/content/Intent;)V

    return-void
.end method

.method public triggerWifiApBleConnection(Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;)Z
    .locals 10

    const/4 v0, 0x0

    iget v1, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBattery:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    const-string v1, "AccessPointController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerWifiApBleConnection() : bleDevice -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/samsung/android/settingslib/wifi/WifiTracker;

    iget-object v4, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v5, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget v6, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v7, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v8, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v9, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/settingslib/wifi/WifiTracker;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string v1, "AccessPointController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerWifiApBleConnection() : bleDevice -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mBattery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/net/wifi/SemWifiApBleScanResult;->mBattery:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
