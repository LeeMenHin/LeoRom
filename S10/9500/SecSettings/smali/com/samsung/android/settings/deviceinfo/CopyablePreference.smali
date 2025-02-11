.class public Lcom/samsung/android/settings/deviceinfo/CopyablePreference;
.super Landroid/support/v7/preference/Preference;
.source "CopyablePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/deviceinfo/CopyablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static copyPreference(Landroid/content/Context;Lcom/samsung/android/settings/deviceinfo/CopyablePreference;)V
    .locals 2

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/deviceinfo/CopyablePreference;->getCopyableText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/CopyablePreference;->showCopyCompleteToast(Landroid/content/Context;)V

    return-void
.end method

.method public static showCopyCompleteToast(Landroid/content/Context;)V
    .locals 2

    nop

    const v0, 0x7f1213e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getCopyableText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/CopyablePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/CopyablePreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/CopyablePreference$1;-><init>(Lcom/samsung/android/settings/deviceinfo/CopyablePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
