.class public final synthetic Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$x0Jt6_h4gR7zn3D0ZvP16PKBVAg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$x0Jt6_h4gR7zn3D0ZvP16PKBVAg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$x0Jt6_h4gR7zn3D0ZvP16PKBVAg;

    invoke-direct {v0}, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$x0Jt6_h4gR7zn3D0ZvP16PKBVAg;-><init>()V

    sput-object v0, Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$x0Jt6_h4gR7zn3D0ZvP16PKBVAg;->INSTANCE:Lcom/android/keyguard/biometric/-$$Lambda$KeyguardBiometricSmallIconView$x0Jt6_h4gR7zn3D0ZvP16PKBVAg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/android/keyguard/biometric/KeyguardBiometricSmallIconView;->lambda$updateVisualCueIcon$2(Ljava/lang/Throwable;)V

    return-void
.end method
