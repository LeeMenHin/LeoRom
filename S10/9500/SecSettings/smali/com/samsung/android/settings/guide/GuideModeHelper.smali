.class public final Lcom/samsung/android/settings/guide/GuideModeHelper;
.super Ljava/lang/Object;
.source "GuideModeHelper.java"


# static fields
.field private static mIsTablet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static drawActionPointerForSwitcher(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, p0, p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->placeHandPointer(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/guide/GuideModeHelper$1;

    invoke-direct {v3, v1, p0, p1, v2}, Lcom/samsung/android/settings/guide/GuideModeHelper$1;-><init>(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method

.method static getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "settings:guide_mode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return-void
.end method

.method static isGuideCompleted(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method static isGuideModeBluetooth(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method static isGuideModeWiFi(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method static isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0
.end method

.method static isTablet()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return v0
.end method

.method private static placeHandPointer(Landroid/view/View;Lcom/samsung/android/settings/helpdialog/TwHelpDialog;Landroid/app/Activity;)Z
    .locals 9

    const/4 v0, -0x1

    const v1, 0x7f0a0359

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a035a

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;

    const v4, 0x7f0a0356

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v0, v6

    :cond_0
    const/4 v6, 0x1

    if-lez v0, :cond_4

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x9

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v8, 0xa

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v8, 0x7f070267

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    add-int/2addr v8, v0

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v8, 0x7f070268

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-nez v2, :cond_2

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v2, v8

    const v8, 0x7f080681

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const v8, 0x7f120557

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v8, 0x7f0a035c

    invoke-virtual {p1, v8}, Lcom/samsung/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_1

    invoke-virtual {v8, v2, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setId(I)V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    :goto_0
    if-eqz v3, :cond_3

    nop

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/helpdialog/TwTouchPunchView;->invalidate()V

    :cond_3
    if-eqz v4, :cond_4

    nop

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const v8, 0x7f070249

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    sub-int v8, v0, v8

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->invalidate()V

    :cond_4
    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    return v6
.end method

.method static setSettingsListEnabled(ZLandroid/app/Activity;)V
    .locals 2

    instance-of v0, p1, Landroid/app/ListActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/ListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEnabled(Z)V

    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method static setSettingsListFocusEnabled(ZLandroid/app/Activity;)V
    .locals 2

    instance-of v0, p1, Landroid/app/ListActivity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/ListActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    :cond_1
    return-void
.end method
