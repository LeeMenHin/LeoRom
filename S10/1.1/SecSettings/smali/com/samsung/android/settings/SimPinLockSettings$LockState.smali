.class final enum Lcom/samsung/android/settings/SimPinLockSettings$LockState;
.super Ljava/lang/Enum;
.source "SimPinLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/SimPinLockSettings$LockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/SimPinLockSettings$LockState;

.field public static final enum LOCK_CONFIRM:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

.field public static final enum LOCK_CONFIRM_AND_CHANGE:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

.field public static final enum LOCK_NEW:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

.field public static final enum LOCK_REENTER:Lcom/samsung/android/settings/SimPinLockSettings$LockState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    const-string v1, "LOCK_NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/SimPinLockSettings$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;->LOCK_NEW:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    new-instance v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    const-string v1, "LOCK_REENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/SimPinLockSettings$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;->LOCK_REENTER:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    new-instance v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    const-string v1, "LOCK_CONFIRM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/SimPinLockSettings$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;->LOCK_CONFIRM:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    new-instance v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    const-string v1, "LOCK_CONFIRM_AND_CHANGE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/SimPinLockSettings$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    sget-object v1, Lcom/samsung/android/settings/SimPinLockSettings$LockState;->LOCK_NEW:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/SimPinLockSettings$LockState;->LOCK_REENTER:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/SimPinLockSettings$LockState;->LOCK_CONFIRM:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/settings/SimPinLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;->$VALUES:[Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/SimPinLockSettings$LockState;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/SimPinLockSettings$LockState;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/SimPinLockSettings$LockState;->$VALUES:[Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/SimPinLockSettings$LockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/SimPinLockSettings$LockState;

    return-object v0
.end method
