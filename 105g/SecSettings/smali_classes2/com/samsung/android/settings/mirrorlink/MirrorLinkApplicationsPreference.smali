.class public Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;
.super Landroid/support/v7/preference/Preference;
.source "MirrorLinkApplicationsPreference.java"


# instance fields
.field private mIndex:I

.field private mValidCheck:Landroid/widget/TextView;

.field private mValidStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mIndex:I

    const-string v0, "MirrorLinkApplicationsPreference"

    const-string v1, "MirrorLinkApplicationsPreference(Context context) is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mIndex:I

    const-string v0, "MirrorLinkApplicationsPreference"

    const-string v1, "MirrorLinkApplicationsPreference(Context context, AttributeSet attrs) is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mIndex:I

    const-string v0, "MirrorLinkApplicationsPreference"

    const-string v1, "MirrorLinkApplicationsPreference(Context context, AttributeSet attrs, int defStyle) is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    const-string v0, "MirrorLinkApplicationsPreference"

    const-string v1, "init():"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0d01ed

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->setLayoutResource(I)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const-string v0, "MirrorLinkApplicationsPreference"

    const-string v1, "onBindViewHolder():"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a08da

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "VALID"

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f12158b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const-string v0, "UNCHECKED"

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f12158d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const-string v0, "NONCERTIFIED"

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    const v1, 0x7f12158c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidCheck:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setIndex(I)V
    .locals 3

    const-string v0, "MirrorLinkApplicationsPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndex() index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mIndex:I

    return-void
.end method

.method public setValidCheck(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MirrorLinkApplicationsPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValidCheck() status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkApplicationsPreference;->mValidStatus:Ljava/lang/String;

    return-void
.end method
