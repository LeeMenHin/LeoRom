.class public Lcom/android/settings/applications/ManageDomainUrls;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManageDomainUrls.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;
    }
.end annotation


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mBooster:Lcom/samsung/android/settings/utils/Booster;

.field private mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

.field private mInstantAppAccountPreference:Landroid/support/v7/preference/Preference;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mWebAction:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onRebuildComplete$0(Lcom/android/settings/applications/ManageDomainUrls;Landroid/content/Intent;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageDomainUrls;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method private rebuild()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private rebuildAppList(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageDomainUrls;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/ManageDomainUrls;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    if-nez v5, :cond_2

    new-instance v6, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v6, v7, v8, v3}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    move-object v5, v6

    invoke-virtual {v5, v4}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->reuse()V

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setOrder(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageDomainUrls;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15006a

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls;->setAnimationAllowed(Z)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/samsung/android/settings/utils/Booster;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/utils/Booster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/utils/Booster;->start(I)V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageDomainUrls;->rebuild()V

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "instant_apps_enabled"

    nop

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v1, 0x1e3f

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    invoke-static {v0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->access$000(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/AppLaunchSettings;

    const v2, 0x7f121424

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getMetricsCategory()I

    move-result v7

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_ephemeral_feature"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v5, 0x7f121c90

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->setTitle(I)V

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v5, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    const v6, 0x7f121c8f

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    const v6, 0x7f121c8e

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "instant_apps_enabled"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageDomainUrls;->mWebAction:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    :cond_4
    if-eqz v6, :cond_5

    move-object v7, v6

    new-instance v8, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/applications/ManageDomainUrls;->mInstantAppAccountPreference:Landroid/support/v7/preference/Preference;

    iget-object v8, p0, Lcom/android/settings/applications/ManageDomainUrls;->mInstantAppAccountPreference:Landroid/support/v7/preference/Preference;

    const v9, 0x7f120bc9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    iget-object v8, p0, Lcom/android/settings/applications/ManageDomainUrls;->mInstantAppAccountPreference:Landroid/support/v7/preference/Preference;

    new-instance v9, Lcom/android/settings/applications/-$$Lambda$ManageDomainUrls$agHbI5vf9m7UaPnJCYH2ithkZhk;

    invoke-direct {v9, p0, v7}, Lcom/android/settings/applications/-$$Lambda$ManageDomainUrls$agHbI5vf9m7UaPnJCYH2ithkZhk;-><init>(Lcom/android/settings/applications/ManageDomainUrls;Landroid/content/Intent;)V

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v8, p0, Lcom/android/settings/applications/ManageDomainUrls;->mInstantAppAccountPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    new-instance v7, Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v7/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v7, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    const v8, 0x7f120799

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    iget-object v7, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, v7}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/android/settings/applications/ManageDomainUrls;->mDomainAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v3, p1}, Lcom/android/settings/applications/ManageDomainUrls;->rebuildAppList(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    :cond_8
    invoke-virtual {p0, v1, v1}, Lcom/android/settings/applications/ManageDomainUrls;->setLoading(ZZ)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageDomainUrls;->setLoading(ZZ)V

    return-void
.end method
