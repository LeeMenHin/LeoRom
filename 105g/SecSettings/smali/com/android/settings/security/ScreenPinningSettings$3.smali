.class Lcom/android/settings/security/ScreenPinningSettings$3;
.super Ljava/lang/Object;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/security/ScreenPinningSettings;->screenPinningDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/ScreenPinningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/security/ScreenPinningSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings$3;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings$3;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-static {v0}, Lcom/android/settings/security/ScreenPinningSettings;->access$400(Lcom/android/settings/security/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings$3;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-static {v0, v1}, Lcom/android/settings/security/ScreenPinningSettings;->access$500(Lcom/android/settings/security/ScreenPinningSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings$3;->this$0:Lcom/android/settings/security/ScreenPinningSettings;

    invoke-virtual {v0}, Lcom/android/settings/security/ScreenPinningSettings;->updateDisplay()V

    return-void
.end method
