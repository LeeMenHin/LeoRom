.class public Landroid/net/wifi/WifiConfiguration$PairwiseCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PairwiseCipher"
.end annotation


# static fields
.field public static final CCMP:I = 0x2

.field public static final NONE:I = 0x0

.field public static final TKIP:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "pairwise"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "NONE"

    const-string v1, "TKIP"

    const-string v2, "CCMP"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
