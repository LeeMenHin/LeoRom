.class public Lcom/android/settings/password/ChooseLockGenericController;
.super Ljava/lang/Object;
.source "ChooseLockGenericController.java"


# static fields
.field private static is3LMActiveAdmin:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field mForFingerprint:Z

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/password/ChooseLockGenericController;->is3LMActiveAdmin:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1, p2}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/ManagedLockPasswordProvider;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/ManagedLockPasswordProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mForFingerprint:Z

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    iput-object p4, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private upgradeQualityForDPM(I)I
    .locals 4

    iget v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mForFingerprint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    :cond_1
    if-ge p1, v0, :cond_2

    move p1, v0

    :cond_2
    return p1
.end method

.method private upgradeQualityForEncryption(ILandroid/os/Bundle;)I
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    const-string v0, ""

    if-eqz p2, :cond_2

    const-string v1, "ode_password_quality"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x10001

    if-lt p1, v1, :cond_3

    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_4

    :cond_3
    const/high16 p1, 0x10000

    :cond_4
    return p1
.end method


# virtual methods
.method public getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/android/settings/password/ChooseLockGenericController$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f121ae7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f121aeb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f121ae9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanDCMModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f121ae3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f121ae2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f121ae5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVisibleScreenLockTypes(IZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/android/settings/password/ScreenLockType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(ILandroid/os/Bundle;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0, v5, v0}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public isScreenLockDisabledByAdmin(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 4

    iget v0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    if-ne p1, v3, :cond_3

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {v3}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 2

    iget v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    if-lt v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z
    .locals 3

    sget-object v0, Lcom/android/settings/password/ChooseLockGenericController$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {v0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public upgradeQuality(ILandroid/os/Bundle;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQualityForEncryption(ILandroid/os/Bundle;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQualityForDPM(I)I

    move-result p1

    return p1
.end method
