.class public final enum Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final privateModeHeaderMessage:I

.field final rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v9, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    sget-object v5, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v2, 0x0

    const v3, 0x7f120db7

    const v4, 0x7f1215ac

    const/4 v7, -0x1

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v9, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v11, "HelpScreen"

    sget-object v15, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v16, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v12, 0x1

    const v13, 0x7f120dc2

    const v14, 0x7f120dc2

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v2, "ChoiceTooShort"

    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v7, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v3, 0x2

    const v4, 0x7f120db4

    const v5, 0x7f120db4

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v11, "FirstChoiceValid"

    sget-object v15, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v16, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v12, 0x3

    const v13, 0x7f120db3

    const v14, 0x7f120db3

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v2, "NeedToConfirm"

    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v7, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v3, 0x4

    const v4, 0x7f120daf

    const v5, 0x7f120daf

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v11, "ConfirmWrong"

    sget-object v15, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v16, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v12, 0x5

    const v13, 0x7f121514

    const v14, 0x7f121514

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v2, "ChoiceConfirmed"

    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v7, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v3, 0x6

    const v4, 0x7f120db2

    const v5, 0x7f120db3

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
            "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    iput p4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->privateModeHeaderMessage:I

    iput-object p5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iput-object p6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iput p7, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    iput-boolean p8, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
