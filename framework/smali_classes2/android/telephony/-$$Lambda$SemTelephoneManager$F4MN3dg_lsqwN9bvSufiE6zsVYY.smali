.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$F4MN3dg_lsqwN9bvSufiE6zsVYY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

.field private final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$F4MN3dg_lsqwN9bvSufiE6zsVYY;->f$0:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$F4MN3dg_lsqwN9bvSufiE6zsVYY;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$F4MN3dg_lsqwN9bvSufiE6zsVYY;->f$0:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$F4MN3dg_lsqwN9bvSufiE6zsVYY;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$changeIccFdnPasswordBySupplyPuk2$31(Landroid/telephony/SemTelephoneManager$OnCompleteListener;Ljava/lang/Exception;)V

    return-void
.end method
