.class public final Landroid/net/wifi/WifiEnterpriseConfig$Phase1;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phase1"
.end annotation


# static fields
.field public static final ALLOW_AUTHENTICATED:I = 0x2

.field public static final ALLOW_BOTH:I = 0x3

.field public static final ALLOW_UNAUTHENTICATED:I = 0x1

.field public static final DISABLE:I = 0x0

.field public static final NONE:I = -0x1

.field private static final PREFIX:Ljava/lang/String; = "fast_provisioning="

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
