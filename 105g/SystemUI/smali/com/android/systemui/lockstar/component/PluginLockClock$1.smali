.class Lcom/android/systemui/lockstar/component/PluginLockClock$1;
.super Ljava/lang/Object;
.source "PluginLockClock.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/component/PluginLockClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;


# direct methods
.method constructor <init>(Lcom/android/systemui/lockstar/component/PluginLockClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockStyleChanged()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;

    iget-wide v2, v2, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockCallbackRegisterTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;

    iget-wide v5, v0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockCallbackRegisterTime:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;

    iget-wide v5, v0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockCallbackRegisterTime:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockCallbackRegisterTime:J

    const-string v0, "PluginLockClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClockCallbackRegisterTime changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;

    iget-wide v2, v2, Lcom/android/systemui/lockstar/component/PluginLockClock;->mClockCallbackRegisterTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "PluginLockClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClockStyleChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-static {v2}, Lcom/android/systemui/lockstar/component/PluginLockClock;->access$000(Lcom/android/systemui/lockstar/component/PluginLockClock;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-static {v0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->access$000(Lcom/android/systemui/lockstar/component/PluginLockClock;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/component/PluginLockClock;->setClockBackupValue(I)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockClock$1;->this$0:Lcom/android/systemui/lockstar/component/PluginLockClock;

    const-string/jumbo v1, "plugin_lock_clock"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/lockstar/component/PluginLockClock;->putSettingsSecure(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
