.class public Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextPedometerAttribute.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_EXERCISE:I = 0x1

.field private static final MODE_USER_INFO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemContextPedometerAttribute"


# instance fields
.field private mExerciseMode:I

.field private mGender:I

.field private mHeight:D

.field private mMode:I

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    const-wide v1, 0x4065400000000000L    # 170.0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    iput-wide p2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    iput-wide p4, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    return-void
.end method

.method private setAttribute()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    if-nez v1, :cond_0

    const-string v1, "gender"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "height"

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "weight"

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_0
    const-string v1, "exercise_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 8

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_1

    const-string v0, "SemContextPedometerAttribute"

    const-string v1, "The height is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_2

    const-string v0, "SemContextPedometerAttribute"

    const-string v1, "The weight is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    const/4 v4, -0x1

    if-lt v0, v4, :cond_4

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    if-le v0, v3, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const-string v0, "SemContextPedometerAttribute"

    const-string v1, "The exercise mode is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    :goto_1
    const-string v0, "SemContextPedometerAttribute"

    const-string v1, "The gender is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
