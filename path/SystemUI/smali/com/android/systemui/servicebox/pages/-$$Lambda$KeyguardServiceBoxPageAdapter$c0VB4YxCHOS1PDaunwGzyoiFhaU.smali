.class public final synthetic Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$c0VB4YxCHOS1PDaunwGzyoiFhaU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Ljava/io/PrintWriter;

.field private final synthetic f$1:Ljava/io/FileDescriptor;

.field private final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$c0VB4YxCHOS1PDaunwGzyoiFhaU;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$c0VB4YxCHOS1PDaunwGzyoiFhaU;->f$1:Ljava/io/FileDescriptor;

    iput-object p3, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$c0VB4YxCHOS1PDaunwGzyoiFhaU;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$c0VB4YxCHOS1PDaunwGzyoiFhaU;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$c0VB4YxCHOS1PDaunwGzyoiFhaU;->f$1:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/-$$Lambda$KeyguardServiceBoxPageAdapter$c0VB4YxCHOS1PDaunwGzyoiFhaU;->f$2:[Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->lambda$dump$11(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    return-void
.end method
