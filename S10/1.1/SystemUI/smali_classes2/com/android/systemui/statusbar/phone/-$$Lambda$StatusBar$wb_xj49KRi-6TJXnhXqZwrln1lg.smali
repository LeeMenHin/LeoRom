.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wb_xj49KRi-6TJXnhXqZwrln1lg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wb_xj49KRi-6TJXnhXqZwrln1lg;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wb_xj49KRi-6TJXnhXqZwrln1lg;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$animateExpandSettingsPanel$24(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method
