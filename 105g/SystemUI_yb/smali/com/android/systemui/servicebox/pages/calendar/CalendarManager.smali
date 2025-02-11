.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
.super Ljava/lang/Object;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;,
        Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;
    }
.end annotation


# static fields
.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static sInstance:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBootUpDataReloadTryCnt:I

.field private mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mCalendarDataConnection:Landroid/content/ServiceConnection;

.field protected mCalendarDataService:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

.field private mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field

.field private mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

.field private mEventChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIs24HourMode:Z

.field private mIsCalendarDataServiceBound:Z

.field private mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLoadTodayEventsCompletedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

.field private final mLoadTodayEventsRunnable:Ljava/lang/Runnable;

.field private mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mTimeTickReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateCalendarRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    iput v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurrentUserId:I

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    iput v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mBootUpDataReloadTryCnt:I

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$1;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataConnection:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarManager$-ehpS725eec_SGMxHdE2CKmtVlE;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarManager$-ehpS725eec_SGMxHdE2CKmtVlE;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mUpdateCalendarRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$2;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$3;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$5;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$6;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$7;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$8;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarManager$LF7nQLJ-aRGwWq0Hu6DTjlqKduE;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarManager$LF7nQLJ-aRGwWq0Hu6DTjlqKduE;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarManager$qvLokaMavLQ_JxWKt1ty1oXxUls;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/-$$Lambda$CalendarManager$qvLokaMavLQ_JxWKt1ty1oXxUls;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$9;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$9;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.keyguard.servicebox.pages.calendar.NEXT_EVENT_ENDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->registerReceivers()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->controlCalendarDataServiceConnection(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->handleCalendarUpdated()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->registerAlarm(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->unregisterAlarm()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->handleCalendarUpdated(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;JJJJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getEventsFromCalendar(JJJJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mBootUpDataReloadTryCnt:I

    return v0
.end method

.method static synthetic access$1408(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mBootUpDataReloadTryCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mBootUpDataReloadTryCnt:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mUpdateCalendarRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->removeEndedEvents(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getNextEndEvent(Ljava/util/ArrayList;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    move-result-object v0

    return-object v0
.end method

.method private getEventsFromCalendar(JJJJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    .locals 20

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    const-string v11, "(allDay= ?) AND (deleted= 0) AND (visible= 1)"

    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-static {v12, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-wide/16 v13, 0x1

    sub-long v4, v2, v13

    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    nop

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    const-string v4, "0"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    add-long v8, p5, v13

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    sub-long v13, p7, v13

    invoke-static {v5, v13, v14}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getHideContactsEvents()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " AND (contact_id is null)"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_0
    const/4 v14, 0x1

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    sget-object v16, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    const-string v10, "1"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v13, p0

    move-object/from16 v17, v11

    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v10

    if-nez v4, :cond_1

    if-nez v10, :cond_1

    const/4 v13, 0x0

    return-object v13

    :cond_1
    new-instance v13, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    invoke-direct {v13}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;-><init>()V

    invoke-virtual {v13, v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->addAll(Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;)V

    invoke-virtual {v13, v10}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->addAll(Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;)V

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->resetTimeForDay(JJ)V

    invoke-virtual {v13}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->sort()V

    return-object v13
.end method

.method private getHideContactsEvents()Z
    .locals 8

    const-string v0, "content://com.sec.android.calendar.preference/PreferenceBoolean"

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v5, "preferences_hide_contacts_events"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    :cond_3
    :goto_0
    nop

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
    .locals 2

    const-class v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    :cond_0
    sget-object v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sInstance:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNextEndEvent(Ljava/util/ArrayList;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    invoke-direct {p0, v6}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->isValidEndTime(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-wide v7, v6, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_1

    iget-wide v7, v6, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    cmp-long v7, v7, v0

    if-lez v7, :cond_1

    move-object v2, v6

    iget-wide v3, v2, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    :cond_1
    goto :goto_0

    :cond_2
    const-string v5, "CalendarManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next end = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    const-string v7, "null"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleCalendarUpdated()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->handleCalendarUpdated(Z)V

    return-void
.end method

.method private handleCalendarUpdated(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private isValidEndTime(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-nez v1, :cond_1

    iget-wide v1, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    iget-wide v3, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->startTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->handleCalendarUpdated()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Landroid/net/Uri;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIs24HourMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->notifyEventChanged()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sendDataToExternal()V

    return-void
.end method

.method private query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataService:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "CalendarManager"

    const-string v3, "No service bound. Query to current context."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object v3, v9

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v4, p1

    :try_start_1
    invoke-direct {v0, v4, v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;-><init>(ILandroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move/from16 v4, p1

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move/from16 v4, p1

    :try_start_2
    iget-object v10, v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataService:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

    move v11, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;->getCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    new-instance v3, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    invoke-direct {v3, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;-><init>(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v2
.end method

.method private registerAlarm(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->unregisterAlarm()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private registerReceivers()V
    .locals 9

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.android.calendar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.samsung.android.calendar.ACTION_UPDATE_WIDGET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.keyguard.servicebox.pages.calendar.NEXT_EVENT_ENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.sec.android.intent.CHANGE_SHARE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarSettingChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CalendarManager"

    invoke-static {v1}, Lcom/android/systemui/SystemUiIntent;->getUserTaggedAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mTimeTickReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/Handler;

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v3, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->addEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    return-void
.end method

.method private removeEndedEvents(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    iget-wide v3, v3, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->endTime:J

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    iget-boolean v5, v5, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->isAllDay:Z

    if-nez v5, :cond_1

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    cmp-long v5, v3, v0

    if-gez v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private roundDownMillis(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    rem-long v0, p1, v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private sendDataToExternal()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mNextEventEndedPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public addEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->removeEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mLoadTodayEventsCompletedListener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->loadTodayEvents(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;->onChanged(Ljava/util/ArrayList;)V

    :goto_1
    return-void
.end method

.method public bindCalendarDataService()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.servicebox.pages.calendar.CalendarDataService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataConnection:Landroid/content/ServiceConnection;

    iget v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurrentUserId:I

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    const-string v1, "CalendarManager"

    const-string v2, "Cannot bind to com.android.systemui.servicebox.pages.calendar.CalendarDataService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    const-string v1, "CalendarManager"

    const-string v2, "Calendar data service is started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_2
    const-string v0, "CalendarManager"

    const-string v1, "Calendar data service is already started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public controlCalendarDataServiceConnection(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->unbindCalendarDataService()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->bindCalendarDataService()V

    :cond_0
    return-void
.end method

.method public getCachedEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEventCnt()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public loadTodayEvents(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .locals 24

    move-object/from16 v11, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/4 v7, 0x1

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v8, 0x2

    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v9, 0x5

    invoke-virtual {v12, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v0, 0xb

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v0, 0xc

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    move-object v0, v12

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v12, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v14

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->roundDownMillis(J)J

    move-result-wide v15

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->roundDownMillis(J)J

    move-result-wide v17

    invoke-virtual {v13}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v15

    invoke-virtual {v13}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->roundDownMillis(J)J

    move-result-wide v19

    invoke-virtual {v13}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    add-long v0, v17, v0

    invoke-virtual {v13}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->roundDownMillis(J)J

    move-result-wide v21

    new-instance v10, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;

    move-object v0, v10

    move-object v1, v11

    move-wide v2, v15

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    move-wide/from16 v8, v21

    move-object v11, v10

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;JJJJLcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v11, v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-void
.end method

.method public notifyEventChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;->onChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sendDataToExternal()V

    return-void
.end method

.method public removeEventChangedListener(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mEventChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestCalendarData()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sendDataToExternal()V

    return-void
.end method

.method public declared-synchronized unbindCalendarDataService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mIsCalendarDataServiceBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataService:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

    const-string v0, "CalendarManager"

    const-string v1, "Calendar data service is unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "CalendarManager"

    const-string v1, "Calendar data service is already unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
