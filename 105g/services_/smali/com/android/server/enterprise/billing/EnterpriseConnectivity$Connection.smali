.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.super Lcom/android/internal/util/StateMachine;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;,
        Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;
    }
.end annotation


# static fields
.field private static final DISABLED:I = 0x0

.field private static final ENABLED:I = 0x1

.field private static final EVENT_APN_AVAILABLE:I = 0x3f0

.field private static final EVENT_APN_UNAVAILABLE:I = 0x3f1

.field private static final EVENT_BASE:I = 0x3e8

.field private static final EVENT_CONNECTED:I = 0x44d

.field private static final EVENT_CONNECTION_ENABLED_CHANGED:I = 0x3ee

.field private static final EVENT_CONNECTIVITY_ACTION:I = 0x3e9

.field private static final EVENT_DATABASE_CHANGED:I = 0x3ea

.field private static final EVENT_DATA_ENABLED_CHANGED:I = 0x3f3

.field private static final EVENT_DEFAULT_NETWORK_CHANGED:I = 0x3f2

.field private static final EVENT_DISCONNECTED:I = 0x44e

.field private static final EVENT_ENABLE_CHANGED:I = 0x3eb

.field private static final EVENT_LOCALE_CHANGED:I = 0x3f4

.field private static final EVENT_MOBILE_OFFLOAD_CHANGED:I = 0x3ec

.field private static final EVENT_NOTIFICATION_DISMISSED:I = 0x3f7

.field private static final EVENT_ROAMING_STATE_CHANGED:I = 0x3ef

.field private static final EVENT_USER_BACKGROUND:I = 0x3f6

.field private static final EVENT_USER_FOREGROUND:I = 0x3f5

.field private static final EVENT_WIFI_OFFLOAD_CHANGED:I = 0x3ed

.field private static final MAX_CONTAINERS:I = 0xa


# instance fields
.field private mApn:Ljava/lang/String;

.field private mApnAvailable:Z

.field private mBlockRulesEnabled:Z

.field private mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

.field private mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

.field private mConnectionEnabled:Z

.field private mDataEnabled:Z

.field private mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

.field private mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

.field private mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

.field private mEnabled:Z

.field private mEntSubId:I

.field private mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

.field private mIface:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNetId:I

.field private mNetworkType:I

.field private mNotifying:Z

.field private mOffloadToMobile:Z

.field private mOffloadToWifi:Z

.field private mRequest:Landroid/net/NetworkRequest;

.field private mRoamingDataAllowed:Z

.field private mRouteRulesEnabled:Z

.field private mSimState:I

.field private mState:Landroid/net/NetworkInfo$State;

.field private mUidRangeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntConnectivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRouteRulesEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockRulesEnabled:Z

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    iput-object p0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Looper;)Landroid/os/Looper;

    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-direct {v0, p1, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    invoke-static {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p1, v2, p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/os/Looper;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    invoke-static {p1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1502(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-static {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->DefaultNetworkInit(Landroid/net/IConnectivityManager;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)V

    sget-object p1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    iget-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;)V

    iget-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DefaultState;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setInitialState(Lcom/android/internal/util/State;)V

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->initSettingsAndUids()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->contains(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEntRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onEntNetworkChanged(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->showNotification()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableBlockRules(Ljava/util/Set;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onConnect(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataPossible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOnConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectingState;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->changeUidRangeRules(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSettings()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onDisconnect()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5802(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToMobile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDefaultRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onDefaultNetworkChanged(Landroid/os/Bundle;I)V

    return-void
.end method

.method private changeUidRangeRules(Z)V
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidRanges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oldranges - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "newRanges - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "to delete - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "to add - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/UidRange;

    invoke-interface {v1, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/UidRange;

    if-eqz p1, :cond_0

    iget v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    invoke-direct {p0, v5, v6, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateRouteRules([Landroid/net/UidRange;IZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToMobile()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateBlockRules([Landroid/net/UidRange;Z)V

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Landroid/net/UidRange;

    invoke-interface {v2, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/UidRange;

    if-eqz p1, :cond_2

    iget v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    invoke-direct {p0, v5, v6, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateRouteRules([Landroid/net/UidRange;IZ)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToMobile()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v5, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateBlockRules([Landroid/net/UidRange;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "error in changeUidRangeRules "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    :goto_2
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_5

    if-nez p1, :cond_4

    iput-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockRulesEnabled:Z

    goto :goto_3

    :cond_4
    iput-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRouteRulesEnabled:Z

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_6

    if-nez p1, :cond_6

    iput-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockRulesEnabled:Z

    :cond_6
    :goto_3
    return-void
.end method

.method private contains(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    iget v2, v1, Landroid/net/UidRange;->start:I

    if-lt p1, v2, :cond_0

    iget v2, v1, Landroid/net/UidRange;->stop:I

    if-gt p1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private enableBlockRules(Ljava/util/Set;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "enableBlockRules E"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRange;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockRulesEnabled:Z

    if-eq v1, p2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateBlockRules([Landroid/net/UidRange;Z)V

    iput-boolean p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mBlockRulesEnabled:Z

    :cond_0
    const-string/jumbo v1, "enableBlockRules X"

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    return-void
.end method

.method private enableRouteRules(Ljava/util/Set;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "enableRouteRules E"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/UidRange;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRouteRulesEnabled:Z

    if-eq v1, p3, :cond_0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->updateRouteRules([Landroid/net/UidRange;IZ)V

    iput-boolean p3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRouteRulesEnabled:Z

    :cond_0
    const-string/jumbo v1, "enableRouteRules X"

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    return-void
.end method

.method private eventToName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string v0, "UNKNOWN EVENT"

    return-object v0

    :pswitch_0
    const-string v0, "EVENT_DISCONNECTED"

    return-object v0

    :pswitch_1
    const-string v0, "EVENT_CONNECTED"

    return-object v0

    :pswitch_2
    const-string v0, "EVENT_NOTIFICATION_DISMISSED"

    return-object v0

    :pswitch_3
    const-string v0, "EVENT_USER_BACKGROUND"

    return-object v0

    :pswitch_4
    const-string v0, "EVENT_USER_FOREGROUND"

    return-object v0

    :pswitch_5
    const-string v0, "EVENT_LOCALE_CHANGED"

    return-object v0

    :pswitch_6
    const-string v0, "EVENT_DATA_ENABLED_CHANGED"

    return-object v0

    :pswitch_7
    const-string v0, "EVENT_DEFAULT_NETWORK_CHANGED"

    return-object v0

    :pswitch_8
    const-string v0, "EVENT_APN_UNAVAILABLE"

    return-object v0

    :pswitch_9
    const-string v0, "EVENT_APN_AVAILABLE"

    return-object v0

    :pswitch_a
    const-string v0, "EVENT_ROAMING_STATE_CHANGED"

    return-object v0

    :pswitch_b
    const-string v0, "EVENT_CONNECTION_ENABLED_CHANGED"

    return-object v0

    :pswitch_c
    const-string v0, "EVENT_WIFI_OFFLOAD_CHANGED"

    return-object v0

    :pswitch_d
    const-string v0, "EVENT_MOBILE_OFFLOAD_CHANGED"

    return-object v0

    :pswitch_e
    const-string v0, "EVENT_ENABLE_CHANGED"

    return-object v0

    :pswitch_f
    const-string v0, "EVENT_DATABASE_CHANGED"

    return-object v0

    :pswitch_10
    const-string v0, "EVENT_CONNECTIVITY_ACTION"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getConnectionEnabled()Z
    .locals 2

    const-string/jumbo v0, "getConnectionEnabled"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isTurnedOnInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getEnabled()Z
    .locals 2

    const-string/jumbo v0, "getEnabled"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isSplitBillingEnabledInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getOffloadToMobile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getOffloadToWifi()Z
    .locals 2

    const-string/jumbo v0, "getOffloadToWifi"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isWifiFallbackAllowedInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getRoamingDataAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isRoamingAllowedInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method private getSettings()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntSubId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getConnectionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    return-void
.end method

.method private getSystemServices()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f5
        0x3fb
    .end array-data
.end method

.method private getUidRanges()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUsersRangeSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidsForApn(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Landroid/net/UidRange;

    invoke-direct {v5, v4, v4}, Landroid/net/UidRange;-><init>(II)V

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getUidsForApn(Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getApplicationsForConnectionInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getUsersRangeSet()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Landroid/net/UidRange;

    const v4, 0x186a0

    mul-int v5, v2, v4

    add-int/lit16 v5, v5, 0x2710

    add-int/lit8 v6, v2, 0x1

    mul-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v5, v6}, Landroid/net/UidRange;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initSettingsAndUids()V
    .locals 2

    const-string/jumbo v0, "initSettingsAndUids"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSettings()V

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidRanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private isAllowed()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    nop

    :cond_3
    if-nez v1, :cond_8

    const-string v2, ""

    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - mEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-nez v0, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sim slot is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V

    :cond_5
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - mOffloadToWifi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - isWifiActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    iget-boolean v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - mOffloadToMobile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - isMobileActive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed due to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V

    :cond_8
    return v1
.end method

.method private isApnAvailable()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error iisApnAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v0
.end method

.method private isDataEnabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v1, v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method private isDataPossible()Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isApnAvailable()Z

    move-result v0

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    const-string v3, ""

    iget v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    if-eq v4, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - mSimState "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - mDataEnabled "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - mConnectionEnabled "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - mRoamingDataAllowed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-nez v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - isApnAvailable "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not possible due to"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V

    :cond_6
    return v1
.end method

.method private isDefaultRequest(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isValidRequest(I)Z

    move-result v0

    return v0
.end method

.method private isEntRequest(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNetworkConnected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOffloadedToMobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOffloadedToWifi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized onConnect(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnect: uid ranges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableRouteRules(Ljava/util/Set;IZ)V

    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error onConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private onDefaultNetworkChanged(Landroid/os/Bundle;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->onNetworkChanged(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized onDisconnect()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "on disconnect: uid ranges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRangeSet:Ljava/util/Set;

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetId:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableRouteRules(Ljava/util/Set;IZ)V

    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is DISCONNECTED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error onDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private onEntNetworkChanged(Landroid/os/Bundle;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEntNetworkChanged default case : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendDisconnectedEvent(Landroid/os/Bundle;I)V

    goto :goto_1

    :cond_0
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v1, Landroid/net/LinkProperties;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2, v0}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error in ConnectivityService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->loge(Ljava/lang/String;)V

    :goto_0
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendConnectedEvent(Landroid/os/Bundle;I)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private sendConnectedEvent(Landroid/os/Bundle;I)V
    .locals 5

    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    const-class v1, Landroid/net/LinkProperties;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->hasIPv6Address(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "EntConnectivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending EVENT_CONNECTED for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x44d

    iget v3, v0, Landroid/net/Network;->netId:I

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, p2, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(IIILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private sendDisconnectedEvent()V
    .locals 2

    const-string v0, "EntConnectivity"

    const-string/jumbo v1, "sending EVENT_DISCONNECTED for turnoffconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x44e

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    return-void
.end method

.method private sendDisconnectedEvent(Landroid/os/Bundle;I)V
    .locals 3

    const-string v0, "EntConnectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending EVENT_DISCONNECTED for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v2, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x44e

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(II)V

    return-void
.end method

.method private setContainersForConnection()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "setContainersForConnection"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getContainersForConnectionInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setUserHandle(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error setContainersForConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showNotification()V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isConnected()Z

    move-result v1

    const v2, 0x1040302

    if-eqz v1, :cond_0

    const v1, 0x1080105

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToWifi()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    const-string v2, "EntConnectivity"

    iget v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isOffloadedToMobile()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x1080105

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v1, 0x1080104

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x1040300

    goto :goto_1

    :cond_3
    const v3, 0x1040301

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    const v1, 0x1080103

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.server.enterprise.billing.notification_dismissed"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_2
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ENTERPRISE_BILLING:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040303

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz v0, :cond_6

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_6
    iget-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$2000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "EntConnectivity"

    iget v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNotifying:Z

    return-void
.end method

.method private declared-synchronized turnOffConnection()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendDisconnectedEvent()V

    const-string/jumbo v1, "network request released"

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "error turnOffConnection: "

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized turnOnConnection()Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities;-><init>()V

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v0}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/net/IConnectivityManager;

    move-result-object v3

    new-instance v5, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 v6, 0x0

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    const/16 v8, 0x1c

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Landroid/net/IConnectivityManager;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRequest:Landroid/net/NetworkRequest;

    const-string/jumbo v0, "network request issued"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "network request already issued"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error turnOnConnection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return v1
.end method

.method private updateBlockRules([Landroid/net/UidRange;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "updateBlockRules block"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->blockEnterpriseUidRanges([Landroid/net/UidRange;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "updateBlockRules unblock"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->unblockEnterpriseUidRanges([Landroid/net/UidRange;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRouteRules([Landroid/net/UidRange;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    if-eqz p3, :cond_0

    const-string/jumbo v0, "updateRouteRules enable"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Landroid/os/INetworkManagementService;->addEnterpriseUidRanges([Landroid/net/UidRange;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "updateRouteRules disable"

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p2}, Landroid/os/INetworkManagementService;->removeEnterpriseUidRanges([Landroid/net/UidRange;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectivityType()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I

    return v0
.end method

.method public getUserHandle()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getUsers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectedState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mConnectionEnabled:Z

    return v0
.end method

.method public isDisconnected()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIdleState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$IdleState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEnabled:Z

    return v0
.end method

.method public isOffloadToMobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToMobile:Z

    return v0
.end method

.method public isOffloadToWifi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z

    return v0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->logv(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onActiveDefaultNetworkChanged(ILandroid/net/LinkProperties;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDefaultNetwork:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->onActiveNetworkChanged(ILandroid/net/LinkProperties;)V

    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onApnAvailableChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApnAvailable:Z

    :cond_1
    return-void
.end method

.method public onMobileDataEnabledChanged()V
    .locals 3

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntSubId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataEnabled(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMobileDataEnabledChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    const/16 v1, 0x3f3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(II)V

    :cond_0
    return-void
.end method

.method public onSimStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    iget-object v0, v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mSimState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntSubId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->isDataEnabled(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDataEnabled:Z

    if-eq v1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending data enabled changed on SIM_READY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->logd(Ljava/lang/String;)V

    const/16 v1, 0x3f3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(II)V

    :cond_0
    return-void
.end method

.method public setUserHandle(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUserHandles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
