.class public Lcom/android/setupwizardlib/view/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4

    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mergeDrawableStates([I[I)[I

    move-result-object v2

    return-object v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->refreshDrawableState()V

    return-void
.end method

.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setChecked(Z)V

    return-void
.end method
