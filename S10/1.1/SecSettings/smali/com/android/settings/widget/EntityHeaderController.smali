.class public Lcom/android/settings/widget/EntityHeaderController;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/EntityHeaderController$ActionType;
    }
.end annotation


# instance fields
.field private mAction1:I

.field private mAction2:I

.field private final mActivity:Landroid/app/Activity;

.field private final mAppContext:Landroid/content/Context;

.field private mAppNotifPrefIntent:Landroid/content/Intent;

.field private mEditRuleNameOnClickListener:Landroid/view/View$OnClickListener;

.field private final mFragment:Landroid/app/Fragment;

.field private mHasAppInfoLink:Z

.field private final mHeader:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconContentDescription:Ljava/lang/String;

.field private mIsInstantApp:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final mMetricsCategory:I

.field private mPackageName:Ljava/lang/String;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mReturnToAppInfo:Z

.field private mSecondSummary:Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/CharSequence;

.field private mUid:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mReturnToAppInfo:Z

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const v1, 0x7f0d0261

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0121

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/EntityHeaderController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mReturnToAppInfo:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/EntityHeaderController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/EntityHeaderController;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/EntityHeaderController;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/EntityHeaderController;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/EntityHeaderController;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private bindAppInfoLink(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    const-string v1, "os"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/settings/widget/EntityHeaderController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/EntityHeaderController$1;-><init>(Lcom/android/settings/widget/EntityHeaderController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "AppDetailFeature"

    const-string v1, "Missing ingredients to build app info link, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private bindButton(Landroid/widget/ImageButton;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/widget/EntityHeaderController;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v4, 0x7f0a008f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object p1, v3

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_settings"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    const v3, 0x7f12133f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/settings/widget/-$$Lambda$EntityHeaderController$n6m5L58KYyh9ywHDdFljNC3VFFs;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/widget/-$$Lambda$EntityHeaderController$n6m5L58KYyh9ywHDdFljNC3VFFs;-><init>(Lcom/android/settings/widget/EntityHeaderController;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mEditRuleNameOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v1, 0x7f080139

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mEditRuleNameOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/android/settings/widget/EntityHeaderController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/EntityHeaderController$2;-><init>(Lcom/android/settings/widget/EntityHeaderController;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_2
    return-void

    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$bindButton$0(Lcom/android/settings/widget/EntityHeaderController;Landroid/content/Intent;Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    const/16 v1, 0x1d04

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1

    new-instance v0, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindHeaderButtons()Lcom/android/settings/widget/EntityHeaderController;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v1, 0x7f0a02c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v3, 0x102001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->bindAppInfoLink(Landroid/view/View;)V

    iget v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    invoke-direct {p0, v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    iget v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    return-object p0
.end method

.method done(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public done(Landroid/app/Activity;Z)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v1, 0x7f0a02c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIconContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const v1, 0x7f0a02c8

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0a02c7

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    const v1, 0x7f0a02c6

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mSecondSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0a040b

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120ba0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/widget/EntityHeaderController;->bindHeaderButtons()Lcom/android/settings/widget/EntityHeaderController;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    return-object v1
.end method

.method public done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;
    .locals 2

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setSelectable(Z)V

    const-string v1, "pref_app_header"

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setKey(Ljava/lang/String;)V

    return-object v0
.end method

.method public setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    iput p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    return-object p0
.end method

.method public setEditZenRuleNameListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mEditRuleNameOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method public setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 2

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIconContentDescription(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIconContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    return-object p0
.end method

.method public setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-object p0
.end method

.method public setReturnToAppInfo(Z)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mReturnToAppInfo:Z

    return-object p0
.end method

.method public setSecondSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mSecondSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummary(Landroid/content/pm/PackageInfo;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    :cond_0
    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUid(I)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    return-object p0
.end method

.method public styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "AppDetailFeature"

    const-string v1, "No activity, cannot style actionbar."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "AppDetailFeature"

    const-string v2, "No actionbar, cannot style actionbar."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/ActionBarShadowController;->attachToRecyclerView(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)Lcom/android/settings/widget/ActionBarShadowController;

    :cond_2
    return-object p0
.end method
