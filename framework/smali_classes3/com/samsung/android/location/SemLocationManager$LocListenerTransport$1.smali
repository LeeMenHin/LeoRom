.class Lcom/samsung/android/location/SemLocationManager$LocListenerTransport$1;
.super Landroid/os/Handler;
.source "SemLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;-><init>(Lcom/samsung/android/location/SemLocationManager;Lcom/samsung/android/location/SemLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

.field final synthetic val$this$0:Lcom/samsung/android/location/SemLocationManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;Lcom/samsung/android/location/SemLocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport$1;->this$1:Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    iput-object p2, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport$1;->val$this$0:Lcom/samsung/android/location/SemLocationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport$1;->this$1:Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;

    invoke-static {v0, p1}, Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;->access$000(Lcom/samsung/android/location/SemLocationManager$LocListenerTransport;Landroid/os/Message;)V

    return-void
.end method
