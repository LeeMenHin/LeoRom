.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$iggOgW3uQuDz4THu_f8NgRyxqwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$iggOgW3uQuDz4THu_f8NgRyxqwU;->f$0:Lcom/android/systemui/recents/RecentsOnboarding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$iggOgW3uQuDz4THu_f8NgRyxqwU;->f$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->lambda$showKeyboardTip$4(Lcom/android/systemui/recents/RecentsOnboarding;)V

    return-void
.end method
