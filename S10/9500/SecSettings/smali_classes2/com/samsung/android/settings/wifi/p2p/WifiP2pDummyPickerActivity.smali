.class public final Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;
.super Landroid/app/Activity;
.source "WifiP2pDummyPickerActivity.java"


# instance fields
.field blankLayout:Landroid/widget/LinearLayout;

.field center:Landroid/widget/RelativeLayout;

.field private isTablet:Z

.field left:Landroid/widget/RelativeLayout;

.field private mIsGrandeDisplay:Z

.field private mIsLandscape:Z

.field right:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->isTablet:Z

    return-void
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 7

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    const-class v4, Landroid/view/Display;

    const-string v5, "getRawWidth"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    return v1
.end method

.method private setGrandeDisplayView(Z)V
    .locals 6

    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a045c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0685

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0164

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v3, v4

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-direct {v4, v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v0, v4

    const-string v1, "@android:style/Theme.DeviceDefault.Light"

    const-string v4, "Theme.DeviceDefault.Light"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0806cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getDisplayWidth(Landroid/content/Context;)I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {v4, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->setGrandeDisplayView(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->isTablet:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    const/16 v1, 0x400

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->isTablet:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setUiOptions(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d02c1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->setContentView(I)V

    const-string v0, "grande"

    const-string v2, "ro.build.scafe.size"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsGrandeDisplay:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->setGrandeDisplayView(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->isTablet:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->mIsLandscape:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDummyPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
