.class public Lcom/android/settings/applications/appinfo/PictureInPictureDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "PictureInPictureDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f120177

    goto :goto_0

    :cond_0
    const v1, 0x7f120178

    :goto_0
    return v1
.end method

.method static setEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 3

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/16 v2, 0x43

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x32c

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0x32d

    goto :goto_0

    :cond_0
    const/16 v0, 0x32e

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getEntityHeader()Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->seslSetSubheaderRoundedBg(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getEntityHeader()Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15007b

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->addPreferencesFromResource(I)V

    const-string v0, "app_ops_settings_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v1, 0x7f121086

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->seslSetRoundedBg(I)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->setEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected refreshUi()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getEnterPipStateForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->mSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const/4 v1, 0x1

    return v1
.end method
