.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$w2VgqGiloJyKurgTXgDln7ZBF2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$w2VgqGiloJyKurgTXgDln7ZBF2s;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$w2VgqGiloJyKurgTXgDln7ZBF2s;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->lambda$onApplyWindowInsets$0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    return-void
.end method
