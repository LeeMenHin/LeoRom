.class public Landroid/support/v14/preference/SwitchPreference;
.super Landroid/support/v7/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v14/preference/SwitchPreference$DummyClickListener;,
        Landroid/support/v14/preference/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mClickListener:Landroid/support/v14/preference/SwitchPreference$DummyClickListener;

.field private final mListener:Landroid/support/v14/preference/SwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Landroid/support/v7/preference/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/support/v14/preference/SwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v14/preference/SwitchPreference$Listener;-><init>(Landroid/support/v14/preference/SwitchPreference;Landroid/support/v14/preference/SwitchPreference$1;)V

    iput-object v0, p0, Landroid/support/v14/preference/SwitchPreference;->mListener:Landroid/support/v14/preference/SwitchPreference$Listener;

    new-instance v0, Landroid/support/v14/preference/SwitchPreference$DummyClickListener;

    invoke-direct {v0, p0, v1}, Landroid/support/v14/preference/SwitchPreference$DummyClickListener;-><init>(Landroid/support/v14/preference/SwitchPreference;Landroid/support/v14/preference/SwitchPreference$1;)V

    iput-object v0, p0, Landroid/support/v14/preference/SwitchPreference;->mClickListener:Landroid/support/v14/preference/SwitchPreference$DummyClickListener;

    sget-object v0, Landroid/support/v14/preference/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v14/preference/R$styleable;->SwitchPreference_summaryOn:I

    sget v2, Landroid/support/v14/preference/R$styleable;->SwitchPreference_android_summaryOn:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    sget v1, Landroid/support/v14/preference/R$styleable;->SwitchPreference_summaryOff:I

    sget v2, Landroid/support/v14/preference/R$styleable;->SwitchPreference_android_summaryOff:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    sget v1, Landroid/support/v14/preference/R$styleable;->SwitchPreference_switchTextOn:I

    sget v2, Landroid/support/v14/preference/R$styleable;->SwitchPreference_android_switchTextOn:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    sget v1, Landroid/support/v14/preference/R$styleable;->SwitchPreference_switchTextOff:I

    sget v2, Landroid/support/v14/preference/R$styleable;->SwitchPreference_android_switchTextOff:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    sget v1, Landroid/support/v14/preference/R$styleable;->SwitchPreference_disableDependentsState:I

    sget v2, Landroid/support/v14/preference/R$styleable;->SwitchPreference_android_disableDependentsState:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v14/preference/SwitchPreference;->setDisableDependentsState(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v14/preference/SwitchPreference;)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v14/preference/SwitchPreference;->callClickListener()V

    return-void
.end method

.method private syncSwitchView(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroid/support/v14/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    instance-of v0, p1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iget-object v2, p0, Landroid/support/v14/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/support/v14/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroid/support/v14/preference/SwitchPreference;->mListener:Landroid/support/v14/preference/SwitchPreference$Listener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v14/preference/SwitchPreference;->mClickListener:Landroid/support/v14/preference/SwitchPreference$DummyClickListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v14/preference/SwitchPreference;->isTalkBackIsRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/support/v14/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v14/preference/SwitchPreference;->syncSwitchView(Landroid/view/View;)V

    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v14/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v14/preference/SwitchPreference;->syncSwitchView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->syncSummaryView(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->performClick(Landroid/view/View;)V

    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v14/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/v14/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v14/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/support/v14/preference/SwitchPreference;->notifyChanged()V

    return-void
.end method
