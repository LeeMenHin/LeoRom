.class public Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;
    }
.end annotation


# instance fields
.field private L:Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;

.field public checkbox:Landroid/widget/CheckBox;

.field public dataUsageText:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public postion:I

.field public wifiUsageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->L:Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->checkbox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->L:Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;

    iget v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->postion:I

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;->onChecked(IZ)V

    return-void
.end method

.method public setCheckBox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->postion:I

    return-void
.end method
