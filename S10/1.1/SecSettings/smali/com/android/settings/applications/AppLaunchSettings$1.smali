.class Lcom/android/settings/applications/AppLaunchSettings$1;
.super Ljava/lang/Object;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppLaunchSettings;->buildStateDropDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppLaunchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppLaunchSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AppLaunchSettings;->access$000(Lcom/android/settings/applications/AppLaunchSettings;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AppLaunchSettings;->access$000(Lcom/android/settings/applications/AppLaunchSettings;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    invoke-static {v1}, Lcom/android/settings/applications/AppLaunchSettings;->access$000(Lcom/android/settings/applications/AppLaunchSettings;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings$1;->this$0:Lcom/android/settings/applications/AppLaunchSettings;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppLaunchSettings;->access$100(Lcom/android/settings/applications/AppLaunchSettings;I)Z

    move-result v0

    return v0
.end method
