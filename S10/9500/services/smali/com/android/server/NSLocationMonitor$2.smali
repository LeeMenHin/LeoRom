.class Lcom/android/server/NSLocationMonitor$2;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NSLocationMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/NSLocationMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NSLocationMonitor$2;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManagerService is connected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$2;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {p2}, Landroid/location/INSLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/INSLocationManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$1002(Lcom/android/server/NSLocationMonitor;Landroid/location/INSLocationManager;)Landroid/location/INSLocationManager;

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$2;->this$0:Lcom/android/server/NSLocationMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$1102(Lcom/android/server/NSLocationMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$2;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$500(Lcom/android/server/NSLocationMonitor;)Lcom/android/server/NSLocationMonitor$ServiceCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/NSLocationMonitor$ServiceCallback;->onServiceConnected(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "NSLocationMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManagerService has unexpectedly disconnected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$2;->this$0:Lcom/android/server/NSLocationMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$1102(Lcom/android/server/NSLocationMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$2;->this$0:Lcom/android/server/NSLocationMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/NSLocationMonitor;->access$1002(Lcom/android/server/NSLocationMonitor;Landroid/location/INSLocationManager;)Landroid/location/INSLocationManager;

    iget-object v0, p0, Lcom/android/server/NSLocationMonitor$2;->this$0:Lcom/android/server/NSLocationMonitor;

    invoke-static {v0}, Lcom/android/server/NSLocationMonitor;->access$500(Lcom/android/server/NSLocationMonitor;)Lcom/android/server/NSLocationMonitor$ServiceCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/NSLocationMonitor$ServiceCallback;->onServiceDisconnected(Ljava/lang/String;)V

    return-void
.end method
