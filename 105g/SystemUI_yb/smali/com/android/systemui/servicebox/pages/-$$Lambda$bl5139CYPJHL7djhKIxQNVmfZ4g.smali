.class public final synthetic Lcom/android/systemui/servicebox/pages/-$$Lambda$bl5139CYPJHL7djhKIxQNVmfZ4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/servicebox/pages/-$$Lambda$bl5139CYPJHL7djhKIxQNVmfZ4g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/servicebox/pages/-$$Lambda$bl5139CYPJHL7djhKIxQNVmfZ4g;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/pages/-$$Lambda$bl5139CYPJHL7djhKIxQNVmfZ4g;-><init>()V

    sput-object v0, Lcom/android/systemui/servicebox/pages/-$$Lambda$bl5139CYPJHL7djhKIxQNVmfZ4g;->INSTANCE:Lcom/android/systemui/servicebox/pages/-$$Lambda$bl5139CYPJHL7djhKIxQNVmfZ4g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onOpenThemeReApply()V

    return-void
.end method
