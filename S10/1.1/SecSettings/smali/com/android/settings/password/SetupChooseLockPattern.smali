.class public Lcom/android/settings/password/SetupChooseLockPattern;
.super Lcom/android/settings/password/ChooseLockPattern;
.source "SetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;
    }
.end annotation


# instance fields
.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;-><init>()V

    return-void
.end method

.method public static modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockPattern;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a01cc

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    const v1, 0x7f0a0087

    invoke-virtual {p0, v1}, Lcom/android/settings/password/SetupChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iput-object v1, p0, Lcom/android/settings/password/SetupChooseLockPattern;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Lcom/android/settings/password/SetupChooseLockPattern;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06036e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/settings/password/SetupChooseLockPattern;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
