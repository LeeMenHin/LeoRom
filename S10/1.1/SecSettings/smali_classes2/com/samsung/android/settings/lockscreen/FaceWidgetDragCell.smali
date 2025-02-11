.class Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;
.super Landroid/widget/RelativeLayout;
.source "FaceWidgetDragCell.java"


# instance fields
.field private mDndHandler:Landroid/widget/ImageView;

.field private mKey:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getDndHandler()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mDndHandler:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitch()Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a086c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a02f2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a0273

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mDndHandler:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->invalidate()V

    return-void
.end method

.method public setDragHandlerPadding(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070483

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setLabelAndDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->invalidate()V

    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mDndHandler:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mDndHandler:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->invalidate()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->requestLayout()V

    return-void
.end method
