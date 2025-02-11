.class public Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EnterpriseInstalledPackagesPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mAsync:Z

.field private final mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    iput-boolean p2, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mAsync:Z

    return-void
.end method

.method static synthetic lambda$isAvailable$1([Ljava/lang/Boolean;I)V
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p0, v0

    return-void
.end method

.method public static synthetic lambda$updateState$0(Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;Landroid/support/v7/preference/Preference;I)V
    .locals 6

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100020

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "number_enterprise_installed_packages"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mAsync:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-array v0, v1, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    new-instance v3, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$cz4T-BR7YJ9IEY1tdj7V5o_-Yuo;

    invoke-direct {v3, v0}, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$cz4T-BR7YJ9IEY1tdj7V5o_-Yuo;-><init>([Ljava/lang/Boolean;)V

    invoke-interface {v1, v2, v3}, Lcom/android/settings/applications/ApplicationFeatureProvider;->calculateNumberOfPolicyInstalledApps(ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    new-instance v1, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$ywnQ5T98AEytxQMBHl3WTR7fuAo;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/enterprise/-$$Lambda$EnterpriseInstalledPackagesPreferenceController$ywnQ5T98AEytxQMBHl3WTR7fuAo;-><init>(Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;Landroid/support/v7/preference/Preference;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/android/settings/applications/ApplicationFeatureProvider;->calculateNumberOfPolicyInstalledApps(ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    return-void
.end method
