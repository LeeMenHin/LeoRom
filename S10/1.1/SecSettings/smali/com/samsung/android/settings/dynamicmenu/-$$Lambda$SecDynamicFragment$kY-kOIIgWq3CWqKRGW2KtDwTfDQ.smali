.class public final synthetic Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$kY-kOIIgWq3CWqKRGW2KtDwTfDQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/support/v7/preference/Preference;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$kY-kOIIgWq3CWqKRGW2KtDwTfDQ;->f$0:Landroid/support/v7/preference/Preference;

    iput-object p2, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$kY-kOIIgWq3CWqKRGW2KtDwTfDQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$kY-kOIIgWq3CWqKRGW2KtDwTfDQ;->f$0:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/settings/dynamicmenu/-$$Lambda$SecDynamicFragment$kY-kOIIgWq3CWqKRGW2KtDwTfDQ;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/dynamicmenu/SecDynamicFragment;->lambda$bindSummary$1(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void
.end method
