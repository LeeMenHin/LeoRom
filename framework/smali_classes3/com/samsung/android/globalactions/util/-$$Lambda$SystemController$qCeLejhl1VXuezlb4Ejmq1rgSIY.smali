.class public final synthetic Lcom/samsung/android/globalactions/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/globalactions/util/SystemController;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/globalactions/util/SystemController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;->f$0:Lcom/samsung/android/globalactions/util/SystemController;

    iput-boolean p2, p0, Lcom/samsung/android/globalactions/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;->f$0:Lcom/samsung/android/globalactions/util/SystemController;

    iget-boolean v1, p0, Lcom/samsung/android/globalactions/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;->f$1:Z

    invoke-static {v0, v1}, Lcom/samsung/android/globalactions/util/SystemController;->lambda$doBugReport$0(Lcom/samsung/android/globalactions/util/SystemController;Z)V

    return-void
.end method
