.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
.super Ljava/lang/Object;
.source "DcmKeyguardLiveUXManager.java"


# static fields
.field private static final DCM_MODEL:Z

.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mBRLauncherChange:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

.field private mHandler:Landroid/os/Handler;

.field private mIsShowingDCMLiveUX:Z

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mNPViewRoot:Landroid/widget/FrameLayout;

.field private mSavingMode:Z

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mWasDCMBeforeSavingMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DCM_LIVEUX:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBRLauncherChange:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$2;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBRLauncherChange:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBRLauncherChange:Landroid/content/BroadcastReceiver;

    const-string v5, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$DcmKeyguardLiveUXManager$tWb-gZaydEwAiG1kyoUGen8kiao;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$DcmKeyguardLiveUXManager$tWb-gZaydEwAiG1kyoUGen8kiao;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->handleShow(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->sInstance:Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;

    return-object v0
.end method

.method private handleShow(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    if-eq v1, v0, :cond_2

    const-string v1, "DcmKeyguardLiveUXManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShow() >> START >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->switchBottomView(Z)V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->registerReceiver()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->unregisterReceiver()V

    :goto_1
    const-string v1, "DcmKeyguardLiveUXManager"

    const-string v2, "handleShow() << END <<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;Landroid/net/Uri;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    if-eq v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mIsShowingDCMLiveUX:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mWasDCMBeforeSavingMode:Z

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mSavingMode:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mWasDCMBeforeSavingMode:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->showDCMLiveUX()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->hideDCMLiveUX()V

    :cond_5
    :goto_2
    return-void
.end method

.method private registerReceiver()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager$3;-><init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v1, "DcmKeyguardLiveUXManager"

    const-string v2, "registerReceiver(): regist "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private switchBottomView(Z)V
    .locals 8

    const/4 v0, 0x4

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0d005d

    invoke-static {v5, v6, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    const v4, 0x7f0a0145

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    const v6, 0x7f0a0289

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/systemui/statusbar/phone/DcmLockIconDummy;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/android/systemui/statusbar/phone/DcmLockIconDummy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/systemui/SystemUIFactory;->createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v0, 0x0

    nop

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardBottomAreaValues(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0d009d

    invoke-static {v5, v6, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    const v4, 0x7f0a0272

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setKeyguardBottomAreaValues(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getIndicationView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->getLockIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardTouchHelpers(Z)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "DcmKeyguardLiveUXManager"

    const-string v1, "NotificationPanelView.unregisterReceiver(): unregist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DcmKeyguardLiveUXManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationPanelView.unregisterReceiver(): exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getActivityStarter()Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method public getDcmKBAView()Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    return-object v0
.end method

.method public hideDCMLiveUX()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DcmKeyguardLiveUXManager"

    const-string v1, "hideDCMLiveUX()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16b3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setAlpha(F)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setAssistManager(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    return-void
.end method

.method public setKeyguardViews(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const v1, 0x7f0a03a1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mNPViewRoot:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public showDCMLiveUX()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->DCM_MODEL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DcmKeyguardLiveUXManager"

    const-string v1, "showDCMLiveUX()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16b3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardLiveUXManager;->mDcmKBAView:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateLayout()V

    :cond_0
    return-void
.end method
