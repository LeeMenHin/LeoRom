.class final enum Lcom/android/internal/widget/DirectionLockView$Direction;
.super Ljava/lang/Enum;
.source "DirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/DirectionLockView$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum UP:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

.field public static final enum UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/DirectionLockView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->UP:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "UP_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/widget/DirectionLockView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/widget/DirectionLockView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "DOWN_RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/widget/DirectionLockView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "DOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/widget/DirectionLockView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "DOWN_LEFT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/internal/widget/DirectionLockView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "LEFT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/internal/widget/DirectionLockView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "UP_LEFT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/internal/widget/DirectionLockView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    new-instance v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    const-string v1, "INVALID"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/internal/widget/DirectionLockView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/widget/DirectionLockView$Direction;

    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->UP:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_RIGHT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->DOWN_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->UP_LEFT:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/widget/DirectionLockView$Direction;->INVALID:Lcom/android/internal/widget/DirectionLockView$Direction;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->$VALUES:[Lcom/android/internal/widget/DirectionLockView$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/widget/DirectionLockView$Direction;
    .locals 1

    const-class v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DirectionLockView$Direction;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/widget/DirectionLockView$Direction;
    .locals 1

    sget-object v0, Lcom/android/internal/widget/DirectionLockView$Direction;->$VALUES:[Lcom/android/internal/widget/DirectionLockView$Direction;

    invoke-virtual {v0}, [Lcom/android/internal/widget/DirectionLockView$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/DirectionLockView$Direction;

    return-object v0
.end method
