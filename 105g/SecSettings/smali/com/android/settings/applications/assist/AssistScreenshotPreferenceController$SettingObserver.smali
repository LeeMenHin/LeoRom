.class Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;
.super Lcom/android/settings/applications/assist/AssistSettingObserver;
.source "AssistScreenshotPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final CONTEXT_URI:Landroid/net/Uri;

.field private final URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;-><init>()V

    const-string v0, "assist_screenshot_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->URI:Landroid/net/Uri;

    const-string v0, "assist_structure_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->CONTEXT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected getSettingUris()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->CONTEXT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onSettingChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->access$000(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->access$000(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;->refreshPreferences()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;->access$100(Lcom/android/settings/applications/assist/AssistScreenshotPreferenceController;)V

    :goto_0
    return-void
.end method
