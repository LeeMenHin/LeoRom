.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$IW193FcUAtkqxgd71_wEPwVMC_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;

.field private final synthetic f$1:Landroid/graphics/Rect;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$IW193FcUAtkqxgd71_wEPwVMC_E;->f$0:Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$IW193FcUAtkqxgd71_wEPwVMC_E;->f$1:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$IW193FcUAtkqxgd71_wEPwVMC_E;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$IW193FcUAtkqxgd71_wEPwVMC_E;->f$0:Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$IW193FcUAtkqxgd71_wEPwVMC_E;->f$1:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$KnoxStatusBarTextView$IW193FcUAtkqxgd71_wEPwVMC_E;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;->lambda$onDarkChanged$1(Lcom/android/systemui/statusbar/phone/KnoxStatusBarTextView;Landroid/graphics/Rect;I)V

    return-void
.end method
