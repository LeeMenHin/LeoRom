.class public Lcom/samsung/android/settings/lockscreen/OwnerInfo;
.super Landroid/app/DialogFragment;
.source "OwnerInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/OwnerInfo$DialogFragmentListener;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field context:Landroid/content/Context;

.field private info:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNickname:Landroid/widget/EditText;

.field private mOwnerInfo:Landroid/widget/EditText;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShowNickname:Z

.field private mView:Landroid/view/View;

.field private tempCursor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->tempCursor:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/settings/lockscreen/OwnerInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->tempCursor:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/settings/lockscreen/OwnerInfo;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->tempCursor:I

    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x41

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v3, 0x7f0a05b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v3, 0x7f0a0763

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v3, 0x7f0a02d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mErrorTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mErrorTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f12166d

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setText(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v4, 0x7f0a05ae

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "input_text"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const-string v5, "disableImage=true;"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    const v5, 0x7f0a05af

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    iget-boolean v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mShowNickname:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelected(Z)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f12181f

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f121670

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/samsung/android/settings/lockscreen/OwnerInfo$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$2;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/lockscreen/OwnerInfo;
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showInputMethod()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const/16 v0, 0x4d

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->saveChanges()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sget v4, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    const/16 v3, 0xc8

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->hideSoftInput()V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configure the unlock banner : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    const/16 v2, 0x1162

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->hideSoftInput()V

    const/16 v1, 0x1144

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "show_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "show_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mShowNickname:Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0210

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1207a0

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->hideSoftInput()V

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v2, "getCurrentLockScreenString"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "OwnerInfoSettings"

    const-string v2, "onResume() : OwnerInfo has updated by MDM admin."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo$4;-><init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v1, 0x4d

    invoke-static {v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return-void
.end method

.method saveChanges()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->MY_USER_ID:I

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mShowNickname:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->mNickname:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
