.class public Lcom/android/systemui/util/NotificationChannels;
.super Lcom/android/systemui/SystemUI;
.source "NotificationChannels.java"


# static fields
.field public static ALERTS:Ljava/lang/String;

.field public static BATTERY:Ljava/lang/String;

.field public static GENERAL:Ljava/lang/String;

.field public static HINTS:Ljava/lang/String;

.field public static ONGOING:Ljava/lang/String;

.field public static SCREENSHOTS_HEADSUP:Ljava/lang/String;

.field public static SCREENSHOTS_LEGACY:Ljava/lang/String;

.field public static STORAGE:Ljava/lang/String;

.field public static TVPIP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ALR"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    const-string v0, "SCN"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_LEGACY:Ljava/lang/String;

    const-string v0, "SCN_HEADSUP"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    const-string v0, "GEN"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    const-string v0, "DSK"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    const-string v0, "TPP"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    const-string v0, "BAT"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    const-string v0, "HNT"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    const-string v0, "ONGOING"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->ONGOING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method public static createAll(Landroid/content/Context;)V
    .locals 15

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    const v3, 0x7f12092f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_battery_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    new-instance v5, Landroid/app/NotificationChannel;

    sget-object v7, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    const v8, 0x7f12092e

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v7, Landroid/app/NotificationChannel;

    sget-object v8, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    const v9, 0x7f120934

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v8, Landroid/app/NotificationChannel;

    sget-object v9, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    const v10, 0x7f120939

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-eqz v11, :cond_0

    nop

    move v11, v13

    goto :goto_0

    :cond_0
    move v11, v12

    :goto_0
    invoke-direct {v8, v9, v10, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v9, Landroid/app/NotificationChannel;

    sget-object v10, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    const v11, 0x7f120935

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v10, Landroid/app/NotificationChannel;

    sget-object v11, Lcom/android/systemui/util/NotificationChannels;->ONGOING:Ljava/lang/String;

    const v14, 0x7f120937

    invoke-virtual {p0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v11, v14, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v11, 0x7

    new-array v11, v11, [Landroid/app/NotificationChannel;

    const/4 v14, 0x0

    aput-object v5, v11, v14

    aput-object v7, v11, v3

    aput-object v8, v11, v12

    const v3, 0x7f120938

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v12, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_LEGACY:Ljava/lang/String;

    invoke-virtual {v0, v12}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/android/systemui/util/NotificationChannels;->createScreenshotChannel(Ljava/lang/String;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    move-result-object v3

    aput-object v3, v11, v13

    aput-object v1, v11, v6

    aput-object v9, v11, v4

    const/4 v3, 0x6

    aput-object v10, v11, v3

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_LEGACY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    const v11, 0x7f12093b

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v6, v11, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method static createScreenshotChannel(Ljava/lang/String;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_1
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    :cond_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    :cond_3
    return-object v0
.end method

.method private static isTv(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    return-void
.end method
