.class public Landroid/inputmethodservice/ExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "ExtractEditLayout.java"


# instance fields
.field mExtractActionButton:Landroid/widget/Button;

.field private mIME:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020346

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    return-void
.end method

.method public setIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method
