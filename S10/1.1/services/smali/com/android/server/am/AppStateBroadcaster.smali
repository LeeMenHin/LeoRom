.class Lcom/android/server/am/AppStateBroadcaster;
.super Ljava/lang/Object;
.source "AppStateBroadcaster.java"


# static fields
.field private static final APP_STATE_EXITED:Ljava/lang/String; = "EXITED"

.field private static final APP_STATE_FOCUS_GAIN:Ljava/lang/String; = "FOCUS_GAIN"

.field private static final APP_STATE_FOCUS_LOSS:Ljava/lang/String; = "FOCUS_LOSS"

.field private static final APP_STATE_START:Ljava/lang/String; = "START"

.field static final APP_TERM_REASONS:[Ljava/lang/String;

.field private static final APP_TERM_REASON_ANR:Ljava/lang/String; = "ANR"

.field private static final APP_TERM_REASON_CRASH:Ljava/lang/String; = "CRASH"

.field private static final APP_TERM_REASON_SYSTEM_HALT:Ljava/lang/String; = "NORMAL_SYSTEM_HALT"

.field private static final APP_TERM_REASON_USER_HALT:Ljava/lang/String; = "USER_HALTED"

.field private static final DEBUG:Z = false

.field private static final EXTRA_APP_PACKAGE_NAME:Ljava/lang/String; = "ApplicationPackageName"

.field private static final EXTRA_APP_STATE:Ljava/lang/String; = "ApplicationState"

.field private static final EXTRA_APP_TERM_REASON:Ljava/lang/String; = "ApplicationTermReason"

.field private static final INTENT_NAME:Ljava/lang/String; = "diagandroid.app.ApplicationState"

.field private static final LOG_TAG:Ljava/lang/String; = "AppStateBroadcaster"

.field private static final PERMISSION_NAME:Ljava/lang/String; = "diagandroid.app.receiveDetailedApplicationState"

.field public static final STOP_REASON_ANR:I = 0x2

.field public static final STOP_REASON_CRASH:I = 0x3

.field public static final STOP_REASON_NORMAL_SYSTEM_HALT:I = 0x0

.field public static final STOP_REASON_USER_HALT:I = 0x1

.field private static sAppLosingFocus:Ljava/lang/String;

.field private static volatile sBroadcastEnabled:Z

.field private static final sKnownRunningPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ApplicationState;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastFocusAppName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->sBroadcastEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sAppLosingFocus:Ljava/lang/String;

    const-string v0, "NORMAL_SYSTEM_HALT"

    const-string v1, "USER_HALTED"

    const-string v2, "ANR"

    const-string v3, "CRASH"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static broadcastAppExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "diagandroid.app.ApplicationState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tmobile.pr.mytmobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationPackageName"

    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationState"

    const-string v2, "EXITED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationTermReason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string/jumbo v2, "diagandroid.app.receiveDetailedApplicationState"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static broadcastAppState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "EXITED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "diagandroid.app.ApplicationState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tmobile.pr.mytmobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationPackageName"

    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ApplicationState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string/jumbo v2, "diagandroid.app.receiveDetailedApplicationState"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static disableIntentBroadcast()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->sBroadcastEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static enableIntentBroadcast(Landroid/content/Context;Lcom/android/internal/app/ProcessMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->sBroadcastEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcaster;->populateRunningProcesses(Landroid/content/Context;Lcom/android/internal/app/ProcessMap;)V

    return-void
.end method

.method private static isKnownRunning(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static isPackageNameNull(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logOriginFunction(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "AppStateBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " called from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static packageRunning(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ApplicationState;

    if-nez v3, :cond_0

    new-instance v4, Lcom/android/server/am/ApplicationState;

    invoke-direct {v4}, Lcom/android/server/am/ApplicationState;-><init>()V

    move-object v3, v4

    sget-object v4, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/server/am/ApplicationState;->addProcess(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const-string v1, "START"

    invoke-static {p0, p1, v1}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static packageStopped(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->stripPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ApplicationState;

    if-eqz v5, :cond_2

    invoke-virtual {v5, p2, p3}, Lcom/android/server/am/ApplicationState;->removeProcess(II)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    :cond_0
    sget-object v6, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/ApplicationState;->getTermReason()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    if-ge p3, v6, :cond_3

    sget-object v6, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/server/am/ApplicationState;->getTermReason()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/android/server/am/AppStateBroadcaster;->sKnownRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    aget-object v6, v6, p3

    move-object v2, v6

    const/4 v0, 0x1

    :cond_3
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusLoss(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {p0, v3, v2}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppExit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private static populateRunningProcesses(Landroid/content/Context;Lcom/android/internal/app/ProcessMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {p0, v4, v5}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Landroid/content/Context;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public static sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->sBroadcastEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->isPackageNameNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    const-string v1, "FOCUS_LOSS"

    invoke-static {p0, v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "FOCUS_GAIN"

    invoke-static {p0, p1, v0}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static sendApplicationFocusLoss(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->sBroadcastEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->isPackageNameNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "FOCUS_LOSS"

    invoke-static {p0, p1, v0}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AppStateBroadcaster;->sLastFocusAppName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static sendApplicationStart(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->sBroadcastEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->isPackageNameNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppStateBroadcaster;->packageRunning(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static sendApplicationStop(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->sBroadcastEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/AppStateBroadcaster;->isPackageNameNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p3, :cond_0

    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p3, v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppStateBroadcaster;->packageStopped(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method private static stripPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
