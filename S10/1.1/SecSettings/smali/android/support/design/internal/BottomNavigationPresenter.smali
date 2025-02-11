.class public Landroid/support/design/internal/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private mId:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

.field private mUpdateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mUpdateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mId:I

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V

    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    move-object v1, p1

    check-cast v1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    iget v1, v1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->tryRestoreSelectedItemId(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;-><init>()V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v1}, Landroid/support/design/internal/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->selectedItemId:I

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBottomNavigationMenuView(Landroid/support/design/internal/BottomNavigationMenuView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mId:I

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mUpdateSuspended:Z

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mUpdateSuspended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->buildMenuView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    :goto_0
    return-void
.end method
