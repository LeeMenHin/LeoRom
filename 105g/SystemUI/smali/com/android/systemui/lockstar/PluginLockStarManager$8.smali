.class Lcom/android/systemui/lockstar/PluginLockStarManager$8;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/PluginLockStarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlashlightAvailabilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$2700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$2700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$2500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    :cond_1
    return-void
.end method

.method public onFlashlightChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$2700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$2700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;->onFlashlightChanged(Z)V

    :cond_0
    return-void
.end method

.method public onFlashlightError()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$2700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager$8;->this$0:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->access$2700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;->onFlashlightError()V

    :cond_0
    return-void
.end method
