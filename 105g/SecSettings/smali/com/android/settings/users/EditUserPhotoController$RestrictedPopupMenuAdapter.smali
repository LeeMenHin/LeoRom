.class final Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/EditUserPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictedPopupMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d0100

    const v1, 0x7f0a0847

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;

    const v2, 0x7f0a0847

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a067b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0
.end method
