.class public Lcom/android/systemui/statusbar/NotificationEntryManager;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationUpdateHandler;
.implements Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
.implements Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;,
        Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;,
        Lcom/android/systemui/statusbar/NotificationEntryManager$HunDragCallback;
    }
.end annotation


# static fields
.field protected static final KNOX_DEBUG:Z


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

.field protected final mContext:Landroid/content/Context;

.field protected final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field protected mDisableNotificationAlerts:Z

.field protected final mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field protected final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field protected final mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field protected final mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field protected mHeadsUpObserver:Landroid/database/ContentObserver;

.field protected mHunDragCallbackArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationEntryManager$HunDragCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeysKeptForRemoteInput:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field protected mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

.field protected final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field protected final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field protected final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field protected final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field protected final mNotificationClicker:Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field protected final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mNullClickListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private mOnAppOpsClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;

.field protected final mPendingNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected mPowerManager:Landroid/os/PowerManager;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field protected final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mSbnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mShowButtonBackground:I

.field private final mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field protected mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private mTypoController:Lcom/android/systemui/statusbar/typo/NotificationTypoController;

.field protected final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field protected mUseHeadsUp:Z

.field protected final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->KNOX_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationEntryManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationClicker:Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    const-class v0, Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    const-class v0, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    const-class v0, Lcom/android/systemui/statusbar/NotificationListener;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    const-class v0, Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNullClickListenerList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSbnList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHunDragCallbackArray:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationEntryManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationEntryManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-direct {v0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setPendingEntries(Ljava/util/HashMap;)V

    return-void
.end method

.method private abortExistingInflation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationEntryManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNullClickListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationEntryManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSbnList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onNotificationAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method

.method private addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v2

    const-class v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/KnoxStateMonitor;->isSkipShowingNotificationForHeadsUp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_5

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_ADO_DOZE_SERVICE:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->awakenDreamsAsync()V

    :cond_4
    const-string v3, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x8ca2

    :try_start_0
    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->notifyFullScreenIntentLaunched()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v4, "note_fullscreen"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_5
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/android/systemui/ForegroundServiceController;->addNotification(Landroid/service/notification/StatusBarNotification;I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onPendingEntryAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/systemui/aod/PluginAODManager;->addNotification(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private bindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 7

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsPersona(Z)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V

    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationLongClicker()Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLongPressListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v0, p4}, Lcom/android/systemui/statusbar/NotificationListContainer;->bindRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->bindRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    const/16 v2, 0x2200

    :try_start_0
    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppName(Ljava/lang/String;)V

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$p09FMS7AYoZmfD9cDsLBRp9615M;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$p09FMS7AYoZmfD9cDsLBRp9615M;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnDismissRunnable(Ljava/lang/Runnable;)V

    const/high16 v2, 0x60000

    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    sget-boolean v2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x20000

    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setNotificationPreview(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOnAppOpsClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;

    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppOpsOnClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;)V

    new-instance v2, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a02ff

    const v4, 0x7f0a0300

    invoke-virtual {v2, v3, v4}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setTagKeys(II)V

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->color:I

    invoke-virtual {v2, v5}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setColor(I)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setColor(I)V

    :goto_2
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v2, v4, v5}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setPreviewIcon(Landroid/graphics/drawable/Drawable;I)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setPreviewKey(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setAppName(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setLockStarNotificationPreview(Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mTypoController:Lcom/android/systemui/statusbar/typo/NotificationTypoController;

    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNotificationTypoController(Lcom/android/systemui/statusbar/typo/NotificationTypoController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onBindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method private handleGroupSummaryRemoved(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x62

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    sget-boolean v8, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v8, :cond_3

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldKeepForRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldKeepForSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    move v8, v7

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    if-nez v6, :cond_5

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setKeepInParent(Z)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoved()V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/RowInflaterTask;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/RowInflaterTask;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$yU99liQRswiKdTnkqwP5AJilUkM;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$yU99liQRswiKdTnkqwP5AJilUkM;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v2, v3, p2, p1, v4}, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$bindRow$4(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic lambda$inflateViews$3(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->bindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public static synthetic lambda$logNotificationExpansion$2(Lcom/android/systemui/statusbar/NotificationEntryManager;Ljava/lang/String;ZZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setUpWithPresenter$0(Lcom/android/systemui/statusbar/NotificationEntryManager;Ljava/lang/Void;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public static synthetic lambda$setUpWithPresenter$1(Lcom/android/systemui/statusbar/NotificationEntryManager;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method private removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "NotificationEntryMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeNotification for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    return-object v1
.end method

.method private shouldKeepForRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustSentRemoteInput()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private shouldKeepForSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->isSendingSmartReply(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    return v0
.end method

.method private updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onUpdateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->stopSending(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getKeyToRemoveOnGutsClosed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationGutsManager;->setKeyToRemoveOnGutsClosed(Ljava/lang/String;)V

    const-string v2, "NotificationEntryMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification that was kept for guts was updated. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object p1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->onEntryUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->updateIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setNotificationPreview(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v4, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->getViewParentForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, p1, v5}, Lcom/android/systemui/ForegroundServiceController;->updateNotification(Landroid/service/notification/StatusBarNotification;I)V

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v5

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v6, v7}, Lcom/android/systemui/statusbar/NotificationListContainer;->snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6, v7}, Lcom/android/systemui/aod/PluginAODManager;->updateNotification(Landroid/service/notification/StatusBarNotification;)V

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getLockStarNotificationPreview()Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v9, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/NotificationColorUtil;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->color:I

    invoke-virtual {v6, v9}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setColor(I)V

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setColor(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v6, v8, v9}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setPreviewIcon(Landroid/graphics/drawable/Drawable;I)V

    iget-object v9, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setPreviewKey(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setAppName(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.title"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.text"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setLockStarNotificationPreview(Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public addKeyKeptForRemoteInput(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->tagForeground(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;)V

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/leak/LeakDetector;->trackInstance(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->createIcons(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationListContainer;->getViewParentForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const-string v0, "NotificationEntryManager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mPendingNotifications="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "  mUseHeadsUp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mKeysKeptForRemoteInput: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "mNullClickListenerList="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNullClickListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSbnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSbnList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNullClickListenerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    move v5, v2

    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSbnList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNullClickListenerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    move v5, v2

    :goto_6
    array-length v6, v4

    if-ge v5, v6, :cond_5

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method public filterOutForKnoxContainer(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4, v2}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4}, Lcom/android/systemui/KnoxStateMonitor;->isContainerKioskMode()Z

    move-result v4

    iput v4, v0, Lcom/android/systemui/statusbar/NotificationData;->isKnoxKioskMode:I

    :cond_1
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    const-class v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    const-class v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/KnoxStateMonitor;->filterOutForKnoxContainer(ILjava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, "NotificationEntryMgr"

    const-string v5, "MPSM enabled! Skip showing Knox notifications"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4, v2}, Lcom/android/systemui/KnoxStateMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v4

    if-nez v4, :cond_c

    const-class v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v4, v2}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    iget v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v5, v5, -0x4

    iput v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v6, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData;->mSanitizingToCollapse:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v7, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iput-object v0, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationClicker:Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;

    iget-object v8, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    :cond_9
    goto :goto_1

    :cond_a
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    if-ne v5, v0, :cond_b

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v5, 0x0

    iput-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationClicker:Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    :cond_b
    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    iget v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->sanitizing:I

    :goto_1
    return v4

    :cond_c
    :goto_2
    return v0
.end method

.method public getLatestRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public getNotificationData()Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method public getNotificationLongClicker()Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$c60ntPGLw0RNAFWdGf1n1pJttuQ;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/-$$Lambda$c60ntPGLw0RNAFWdGf1n1pJttuQ;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;)V

    return-object v1
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-void
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    move-object v8, p2

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method protected isHeadsUp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Z
    .locals 8

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    move v5, v1

    :goto_1
    if-eqz p2, :cond_2

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/systemui/KnoxStateMonitor;->isPersona(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    const-class v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    const-class v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    const-class v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v6

    move v2, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/KnoxStateMonitor;->isKnoxNotificationSanitizeNeeded(IILjava/lang/String;ZZ)Z

    move-result v1

    return v1
.end method

.method public isNotificationKeptForRemoteInput(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$Q4hIfCbKU-aShOGq9dvLCfeOJ-w;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$Q4hIfCbKU-aShOGq9dvLCfeOJ-w;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public makeScreenShot()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeScreenShot()V

    :cond_0
    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterLocked()Z

    move-result v3

    if-eqz v0, :cond_1

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasLowPriorityStateUpdated()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onLowPriorityUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews()V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isTypoNotification(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews()V

    :cond_3
    :goto_1
    iget-object v4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLowPriorityStateUpdated(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    :cond_4
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getLatestRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->setLatestRankingMap(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReorderingAllowed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public performRemoveNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v3

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v5

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v14

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v0, v2, v14}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onPerformRemoveNotification(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v10

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationEntryManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/NotificationListContainer;->hasPulsingNotifications()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x2

    :cond_2
    :goto_0
    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    move-object v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move v12, v0

    move-object v13, v5

    invoke-interface/range {v6 .. v13}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onPerformRemoveNotification(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method rebuildNotificationForCanceledSmartReplies(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/service/notification/StatusBarNotification;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;
    .locals 19

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.remoteInputHistory"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    new-array v7, v4, [Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    array-length v7, v5

    add-int/2addr v7, v4

    new-array v7, v7, [Ljava/lang/CharSequence;

    array-length v8, v5

    invoke-static {v5, v6, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_1
    move/from16 v5, p3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setHideSmartReplies(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v6, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v6, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v6, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    new-instance v18, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v11

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v12

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v16

    move-object/from16 v6, v18

    move-object v13, v4

    invoke-direct/range {v6 .. v17}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    return-object v6
.end method

.method public removeKeyKeptForRemoteInput(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->abortExistingInflation(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v4, p1, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    move-result v4

    xor-int/2addr v3, v4

    move v0, v3

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->onNotificationRemoved(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_4

    const-class v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getNotificationManager()Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->removeServiceBoxMusicNotification(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    sget-boolean v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldKeepForRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    :cond_5
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onRemoteInputInserted()V

    :try_start_0
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    const/4 v0, 0x0

    :goto_1
    if-eqz v6, :cond_6

    const-string v2, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keeping notification around after sending remote input "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addKeyKeptForRemoteInput(Ljava/lang/String;)V

    return-void

    :cond_6
    sget-boolean v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v3, :cond_7

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldKeepForSmartReply(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->rebuildNotificationForCanceledSmartReplies(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    nop

    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_1
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v4

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->stopSending(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    if-eqz v2, :cond_7

    const-string v4, "NotificationEntryMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keeping notification around after sending smart reply "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->addKeyKeptForRemoteInput(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/SmartReplyController;->stopSending(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    if-eqz v0, :cond_8

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpEntriesToRemoveOnSwitch:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->onRemoveNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void

    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v3

    if-ne v2, v3, :cond_a

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGuts;->isLeavebehind()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "NotificationEntryMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keeping notification because it\'s showing guts. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->setKeyToRemoveOnGutsClosed(Ljava/lang/String;)V

    return-void

    :cond_a
    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v2, v3}, Lcom/android/systemui/ForegroundServiceController;->removeNotification(Landroid/service/notification/StatusBarNotification;)Z

    :cond_b
    if-eqz v1, :cond_c

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setRemoved()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->cleanUpViewState(Landroid/view/View;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->handleGroupSummaryRemoved(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v3, p1, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onNotificationRemoved(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    invoke-static {}, Lcom/android/systemui/aod/PluginAODManager;->getInstance()Lcom/android/systemui/aod/PluginAODManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/systemui/aod/PluginAODManager;->removeNotification(Ljava/lang/String;)V

    return-void
.end method

.method public sanitizePendingIntent(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Landroid/app/PendingIntent;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/systemui/statusbar/NotificationEntryManager;->KNOX_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "NotificationEntryMgr"

    const-string v4, "----- Inside sanitizePendingIntent -----"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v4, v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    sget-boolean v7, Lcom/android/systemui/statusbar/NotificationEntryManager;->KNOX_DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "NotificationEntryMgr"

    const-string v8, "----- sanitizePendingIntent : innerIntent null or filterEquals -----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v5, 0x1

    :cond_4
    :goto_0
    sget-boolean v6, Lcom/android/systemui/statusbar/NotificationEntryManager;->KNOX_DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "NotificationEntryMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----- sanitizePendingIntent : isSanitizeRequired - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v5, :cond_8

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v12, 0x8000000

    const/4 v13, 0x0

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v11, v7

    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_2

    :cond_7
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v11, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v14, 0x8000000

    const/4 v15, 0x0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v13, v9

    move-object/from16 v16, v10

    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_2
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->isSanitizedPendingIntent:Z

    :cond_8
    sget-boolean v6, Lcom/android/systemui/statusbar/NotificationEntryManager;->KNOX_DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "NotificationEntryMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----- sanitizePendingIntent : sanitized - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v4
.end method

.method public setDisableNotificationAlerts(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDisableNotificationAlerts:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public setLatestRankingMap(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLatestRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method protected setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->setNotificationsShown([Ljava/lang/String;)V

    return-void
.end method

.method protected setNotificationsShown([Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationListener;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationEntryMgr"

    const-string v2, "failed setNotificationsShown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setNotiifcationTypoController(Lcom/android/systemui/statusbar/typo/NotificationTypoController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mTypoController:Lcom/android/systemui/statusbar/typo/NotificationTypoController;

    return-void
.end method

.method public setShowButtonBackground(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mShowButtonBackground:I

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_notifications_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ticker_gets_heads_up"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$UXhQQT1EcpQ7iahyyi282W5mE2Q;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/-$$Lambda$UXhQQT1EcpQ7iahyyi282W5mE2Q;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mOnAppOpsClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->getNotificationManager()Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$p9n2T_J7t1JAveMUEONAZdI-qLg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$p9n2T_J7t1JAveMUEONAZdI-qLg;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$pCrmrENmANhuJ8dYbGxDotWG_bA;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$pCrmrENmANhuJ8dYbGxDotWG_bA;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->init(Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    :cond_0
    return-void
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
    .locals 6

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isTouchpadEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInGearVrDocked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NotificationEntryMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No peeking: isDeviceInGearVrDocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->semFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    const-string v0, "NotificationEntryMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No peeking: edge lighting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLock()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRecoveryLock()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "NotificationEntryMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No peeking: filtered notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isDreaming()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDozing()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v2, "NotificationEntryMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No peeking: not in use: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDozing()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v2, "NotificationEntryMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No peeking: shouldSuppressPeek by DND: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDozing()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldSuppressAmbient(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v2, "NotificationEntryMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No peeking: shouldSuppressAmbient by DND: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasJustLaunchedFullScreenIntent()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v2, "NotificationEntryMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No peeking: recent fullscreen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_b

    return v1

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDozing()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x3

    goto :goto_1

    :cond_c
    const/4 v3, 0x4

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v4

    if-ge v4, v3, :cond_d

    return v1

    :cond_d
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v2, "NotificationEntryMgr"

    const-string v4, "No peeking: suppressed due to group alert behavior"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v4, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_f

    return v1

    :cond_f
    return v2

    :cond_10
    :goto_2
    const-string v0, "NotificationEntryMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No peeking: remote lock state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    :goto_3
    return v1
.end method

.method protected tagForeground(Landroid/service/notification/StatusBarNotification;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ForegroundServiceController;->getAppOps(ILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationsForAppOp(IILjava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateAllNotificationColor(Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/NotificationEntryManager$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager$4;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p2, p4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotificationInternal(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v4

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsLowPriority(Z)V

    if-eqz v1, :cond_1

    if-eq v4, v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {p4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLowPriorityStateUpdated(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationClicker:Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;

    invoke-virtual {v5, p4, p3}, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    :try_start_0
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "NotificationEntryMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed looking up ApplicationInfo for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v6, 0x9

    const/16 v7, 0x15

    if-lt v5, v6, :cond_2

    iget v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v5, v7, :cond_2

    move v5, v2

    goto :goto_3

    :cond_2
    move v5, v3

    :goto_3
    invoke-virtual {p4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLegacy(Z)V

    const v5, 0x7f0a0227

    iget v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v6, v7, :cond_3

    move v6, v2

    goto :goto_4

    :cond_3
    move v6, v3

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setIconTag(ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-nez v5, :cond_4

    move v5, v2

    goto :goto_5

    :cond_4
    move v5, v3

    :goto_5
    iput-boolean v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    iput-object p4, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    sget-boolean v5, Lcom/android/systemui/Rune;->NOTI_SUPPORT_DOUBLETAP_ON_LOCKSCREEN:Z

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnDoubleTappedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnDoubleTappedListener;)V

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, p3, v6}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    invoke-virtual {p4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUseIncreasedCollapsedHeight(Z)V

    invoke-virtual {p4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUseIncreasedHeadsUpHeight(Z)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterLocked()Z

    move-result v3

    invoke-virtual {p4, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v3, p4}, Lcom/android/systemui/statusbar/NotificationListContainer;->cleanUpViewState(Landroid/view/View;)V

    return-void
.end method

.method public updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v6

    if-eq v6, v5, :cond_0

    iget-object v7, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsLowPriority(Z)V

    iget-object v7, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    return-void
.end method

.method public updateNotifications()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews()V

    return-void
.end method

.method public updateNotificationsForAppOp(IILjava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-interface {v0, v1, p3}, Lcom/android/systemui/ForegroundServiceController;->getStandardLayoutKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, v0

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/NotificationData;->updateAppOp(IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    :cond_0
    return-void
.end method

.method public updateNotificationsOnDensityOrFontScaleChanged()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getAllEntries()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->showButtonBackground:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iget-object v6, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onDensityOrFontScaleChanged()V

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mGutsManager:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v7, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/NotificationGutsManager;->onDensityOrFontScaleChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_1
    iget v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mShowButtonBackground:I

    if-eq v1, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/NotificationListContainer;->getViewParentForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/systemui/statusbar/NotificationEntryManager;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v3, "NotificationEntryMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNotificationsOnDensity PendingNotifications size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPendingNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData$Entry;->abortTask()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v5, v4}, Lcom/android/systemui/statusbar/NotificationListContainer;->getViewParentForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/NotificationEntryManager;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    return-void
.end method
