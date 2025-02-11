.class public Lcom/android/setupwizardlib/template/RequireScrollMixin;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;,
        Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

.field private mEverScrolledToBottom:Z

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

.field private mRequiringScrollToBottom:Z

.field private final mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    return-void
.end method

.method static synthetic access$200(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object v0
.end method

.method private postScrollStateChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;

    invoke-direct {v1, p0, p1}, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method notifyScrollabilityChange(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->postScrollStateChange(Z)V

    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->postScrollStateChange(Z)V

    iput-boolean v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    iput-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

    return-void
.end method
