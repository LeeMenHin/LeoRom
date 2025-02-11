.class public Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;
.super Ljava/lang/Object;
.source "BixbySettingsActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBixbyHandler:Lcom/samsung/android/globalactions/util/BixbyHandler;

.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private final mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

.field private final mThemeChecker:Lcom/samsung/android/globalactions/util/ThemeChecker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/BixbyHandler;Lcom/samsung/android/globalactions/util/SettingsWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BixbySettingsActionViewModel"

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mBixbyHandler:Lcom/samsung/android/globalactions/util/BixbyHandler;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mThemeChecker:Lcom/samsung/android/globalactions/util/ThemeChecker;

    iput-object p5, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onPress()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mBixbyHandler:Lcom/samsung/android/globalactions/util/BixbyHandler;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mThemeChecker:Lcom/samsung/android/globalactions/util/ThemeChecker;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/util/ThemeChecker;->getState()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mSettingsWrapper:Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/util/SettingsWrapper;->getCurrentBixbySettings()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/BixbyHandler;->startBixbyGlobalSettingsActivity(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "BixbySettingsActionViewModel"

    const-string v3, "Activity not found exception!"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
