.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const v0, 0x7f1212a8

    const v1, 0x7f1208e7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$4300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$18;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->access$4300(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/support/v7/preference/SwitchPreferenceCompat;

    move-result-object v0

    const v1, 0x7f121d46

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
