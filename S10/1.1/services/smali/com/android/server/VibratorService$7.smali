.class synthetic Lcom/android/server/VibratorService$7;
.super Ljava/lang/Object;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$os$Vibrator$SemMagnitudeTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Vibrator$SemMagnitudeTypes;->values()[Landroid/os/Vibrator$SemMagnitudeTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/VibratorService$7;->$SwitchMap$android$os$Vibrator$SemMagnitudeTypes:[I

    :try_start_0
    sget-object v0, Lcom/android/server/VibratorService$7;->$SwitchMap$android$os$Vibrator$SemMagnitudeTypes:[I

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/VibratorService$7;->$SwitchMap$android$os$Vibrator$SemMagnitudeTypes:[I

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_EXTRA:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/server/VibratorService$7;->$SwitchMap$android$os$Vibrator$SemMagnitudeTypes:[I

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/server/VibratorService$7;->$SwitchMap$android$os$Vibrator$SemMagnitudeTypes:[I

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/server/VibratorService$7;->$SwitchMap$android$os$Vibrator$SemMagnitudeTypes:[I

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/server/VibratorService$7;->$SwitchMap$android$os$Vibrator$SemMagnitudeTypes:[I

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MIN:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/server/VibratorService$7;->$SwitchMap$android$os$Vibrator$SemMagnitudeTypes:[I

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    invoke-virtual {v1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    return-void
.end method
