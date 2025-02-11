.class Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
.super Lcom/android/settings/widget/AppSwitchPreference;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessPreference"
.end annotation


# instance fields
.field private final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private final mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private final mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-direct {p0, p2}, Lcom/android/settings/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0106

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setWidgetLayoutResource(I)V

    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iput-object p3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    iget-object v0, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->access$300(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->access$400(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    return-object v0
.end method

.method private setState()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12074b

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_1

    const v0, 0x7f121210

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getEntryForTest()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$1;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->access$300(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    const v0, 0x7f0a03c9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->isDisabledByAdmin()Z

    move-result v2

    const v3, 0x1020018

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v4, v4, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v4, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v5, 0x1020040

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v6, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$2;

    invoke-direct {v6, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$2;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v4, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v6, 0x7f0a0099

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v6, 0x8

    if-eqz v4, :cond_4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v7, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v7, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v7, 0x7f0a067c

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v2, :cond_5

    move v8, v1

    goto :goto_3

    :cond_5
    nop

    move v8, v6

    :goto_3
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v2, :cond_6

    move v1, v6

    goto :goto_4

    :cond_6
    nop

    :goto_4
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    const v1, 0x7f120145

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onClick()V

    :goto_0
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrepareForRemoval()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->access$400(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onPrepareForRemoval()V

    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    :cond_0
    return-void
.end method

.method public performClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->performClick()V

    :cond_0
    return-void
.end method

.method public reuse()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->notifyChanged()V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void
.end method
