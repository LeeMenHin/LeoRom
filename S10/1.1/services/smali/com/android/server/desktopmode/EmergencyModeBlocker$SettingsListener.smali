.class Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;
.super Landroid/database/ContentObserver;
.source "EmergencyModeBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/EmergencyModeBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$500(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$402(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$700(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$602(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)Z

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "emergency_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {v2}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$400(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {v2}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$600(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$400(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$600(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->access$200(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    :cond_2
    return-void
.end method
