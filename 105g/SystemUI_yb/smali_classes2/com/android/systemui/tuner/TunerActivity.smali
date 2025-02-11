.class public Lcom/android/systemui/tuner/TunerActivity;
.super Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.source "TunerActivity.java"

# interfaces
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDestroy$0(Lcom/android/systemui/fragments/FragmentService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentService;->destroyAll()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/systemui/Dependency;->initDependencies(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "tuner"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.action.DEMO_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/systemui/tuner/DemoModeFragment;

    invoke-direct {v2}, Lcom/android/systemui/tuner/DemoModeFragment;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/systemui/tuner/TunerFragment;

    invoke-direct {v2}, Lcom/android/systemui/tuner/TunerFragment;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0a0124

    const-string v5, "tuner"

    invoke-virtual {v3, v4, v2, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onDestroy()V

    const-class v0, Lcom/android/systemui/fragments/FragmentService;

    sget-object v1, Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$RI23eCWQLUIRemsdYo0hJRYd5ug;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$RI23eCWQLUIRemsdYo0hJRYd5ug;

    invoke-static {v0, v1}, Lcom/android/systemui/Dependency;->destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/systemui/Dependency;->clearDependencies()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 6

    :try_start_0
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/tuner/TunerActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a0124

    invoke-virtual {v4, v5, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const-string v5, "PreferenceFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string v1, "TunerActivity"

    const-string v2, "Problem launching fragment"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceStartScreen(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/PreferenceScreen;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;

    invoke-direct {v1}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    const v4, 0x7f0a0124

    invoke-virtual {v0, v4, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const-string v4, "PreferenceFragment"

    invoke-virtual {v0, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return v3
.end method
