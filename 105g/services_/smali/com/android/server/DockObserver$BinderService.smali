.class final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DockObserver"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v2}, Lcom/android/server/DockObserver;->access$600(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz p3, :cond_5

    :try_start_1
    array-length v4, p3

    if-eqz v4, :cond_5

    const-string v4, "-a"

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    array-length v4, p3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_3

    const-string/jumbo v4, "set"

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v3, p3, v6

    const/4 v4, 0x2

    aget-object v4, p3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v5, "state"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v5, v6}, Lcom/android/server/DockObserver;->access$902(Lcom/android/server/DockObserver;Z)Z

    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/DockObserver;->access$1500(Lcom/android/server/DockObserver;I)V

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown set option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    goto/16 :goto_5

    :cond_3
    array-length v4, p3

    if-ne v4, v6, :cond_4

    const-string/jumbo v4, "reset"

    aget-object v5, p3, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4, v3}, Lcom/android/server/DockObserver;->access$902(Lcom/android/server/DockObserver;Z)Z

    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->access$1200(Lcom/android/server/DockObserver;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/DockObserver;->access$1500(Lcom/android/server/DockObserver;I)V

    goto/16 :goto_5

    :cond_4
    const-string v3, "Dump current dock state, or:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  set state <value>"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  reset"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v3

    goto/16 :goto_6

    :cond_5
    :goto_2
    const-string v4, "Current Dock Observer Service state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->access$900(Lcom/android/server/DockObserver;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  reported state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v5}, Lcom/android/server/DockObserver;->access$1000(Lcom/android/server/DockObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  previous state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v5}, Lcom/android/server/DockObserver;->access$1100(Lcom/android/server/DockObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  actual state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v5}, Lcom/android/server/DockObserver;->access$1200(Lcom/android/server/DockObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  smart dock state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v5}, Lcom/android/server/DockObserver;->access$1300(Lcom/android/server/DockObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " last uevent device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v5}, Lcom/android/server/DockObserver;->access$500(Lcom/android/server/DockObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->access$1400(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, " == Latest states from Driver =="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v3

    :goto_3
    const/16 v5, 0xa

    if-ge v4, v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   Time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v6}, Lcom/android/server/DockObserver;->access$1400(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/DockObserver$logRecent;->uEventTime:[J

    aget-wide v6, v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v6}, Lcom/android/server/DockObserver;->access$1400(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/DockObserver$logRecent;->uEventType:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " UsbpdIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v6}, Lcom/android/server/DockObserver;->access$1400(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/DockObserver$logRecent;->uEventUsbpdIds:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const-string v4, " == Latest states to Apps =="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_4
    if-ge v3, v5, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Time: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v6}, Lcom/android/server/DockObserver;->access$1400(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/DockObserver$logRecent;->reportTime:[J

    aget-wide v6, v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " State: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v6}, Lcom/android/server/DockObserver;->access$1400(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/DockObserver$logRecent;->report:[I

    aget v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " UsbpdIds: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v6}, Lcom/android/server/DockObserver;->access$1400(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$logRecent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/DockObserver$logRecent;->reportUsbpdIds:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    const-string v3, " Cannot log latest events!"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    :goto_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_6
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
