.class public Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimpleIndicatorReceiver.java"


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private mMediator:Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;->mMediator:Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.systemui.action.SPLUGIN_SLIMINDICATOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "iconblacklist"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;->mMediator:Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->setBlackListDBValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;->mMediator:Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;

    const-string/jumbo v3, "rotate,headset"

    invoke-virtual {v2, v3}, Lcom/android/systemui/simpleindicator/SimpleIndicatorMediator;->setBlackListDBValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 6

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/simpleindicator/SimpleIndicatorReceiver;->mFilter:Landroid/content/IntentFilter;

    const-string v4, "com.samsung.systemui.permission.SPLUGIN"

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
