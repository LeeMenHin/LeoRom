.class Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;
.super Ljava/lang/Object;
.source "StateNotifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LcdOffDisableListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    iput p5, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/StateNotifier;->access$600(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/StateNotifier;->access$600(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/StateNotifier;->access$700(Lcom/android/server/sepunion/cover/StateNotifier;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
