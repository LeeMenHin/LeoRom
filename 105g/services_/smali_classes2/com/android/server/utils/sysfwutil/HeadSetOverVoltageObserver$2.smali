.class Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$2;
.super Landroid/os/Handler;
.source "HeadSetOverVoltageObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;


# direct methods
.method constructor <init>(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$2;->this$0:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$2;->this$0:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

    invoke-static {v0}, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->access$000(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)Landroid/os/Handler;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver$2;->this$0:Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;

    invoke-static {v1}, Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;->access$100(Lcom/android/server/utils/sysfwutil/HeadSetOverVoltageObserver;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040ade

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
