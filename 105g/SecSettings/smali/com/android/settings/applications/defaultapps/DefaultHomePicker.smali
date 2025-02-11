.class public Lcom/android/settings/applications/defaultapps/DefaultHomePicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultHomePicker.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private hasManagedProfile()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, v2}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->versionNumberAtLeastL(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    return v0
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->hasManagedProfile()Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v4, v0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-direct {v0, v13}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120b75

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v15, v4

    move-object v9, v5

    new-instance v16, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v6, v0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v7, v0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mUserId:I

    move-object/from16 v4, v16

    move-object v5, v11

    move v10, v15

    invoke-direct/range {v4 .. v10}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x313

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150041

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-static {v3, v4}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->isHomeDefault(Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/16 v3, 0xf39

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    const v3, 0x7f1214c1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v5, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    sget-object v7, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->HOME_FILTER:Landroid/content/IntentFilter;

    const/high16 v8, 0x100000

    new-array v1, v1, [Landroid/content/ComponentName;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return v4

    :cond_2
    return v1
.end method

.method protected setDescriptionText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1214bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
