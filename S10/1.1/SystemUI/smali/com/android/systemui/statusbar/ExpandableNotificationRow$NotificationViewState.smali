.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationViewState"
.end annotation


# instance fields
.field private final mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    return-void
.end method

.method private handleFixedTranslationZ(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasExpandingChild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->zTranslation:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->clipTopAmount:I

    :cond_0
    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->handleFixedTranslationZ(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->startChildAnimation(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    const-class v1, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isOpenthemeOn()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNotiColoringOn()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToRevert(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->invert:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->invert:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, v2, :cond_4

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->update(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->handleFixedTranslationZ(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->mOverallState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    const-class v1, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationColorPicker;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isOpenthemeOn()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNotiColoringOn()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationColorPicker;->isNeedToRevert(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->invert:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$NotificationViewState;->invert:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, v2, :cond_4

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/statusbar/NotificationColorPicker;->update(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->onYTranslationAnimationFinished(Landroid/view/View;)V

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsUpAnimatingAway(Z)V

    :cond_0
    return-void
.end method
