.class Lcom/android/systemui/fusionleo/AnalogClock$2;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fusionleo/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fusionleo/AnalogClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/fusionleo/AnalogClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/AnalogClock$2;->this$0:Lcom/android/systemui/fusionleo/AnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fusionleo/AnalogClock$2;->this$0:Lcom/android/systemui/fusionleo/AnalogClock;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/systemui/fusionleo/AnalogClock;->access$102(Lcom/android/systemui/fusionleo/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock$2;->this$0:Lcom/android/systemui/fusionleo/AnalogClock;

    invoke-static {v0}, Lcom/android/systemui/fusionleo/AnalogClock;->access$000(Lcom/android/systemui/fusionleo/AnalogClock;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/AnalogClock$2;->this$0:Lcom/android/systemui/fusionleo/AnalogClock;

    invoke-virtual {v0}, Lcom/android/systemui/fusionleo/AnalogClock;->invalidate()V

    return-void
.end method
