.class Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$1;
.super Ljava/lang/Object;
.source "SemCameraCaptureProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;

.field final synthetic val$cameraDevice:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;

    iput-object p2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$1;->val$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$1;->this$1:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;

    iget-object v0, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback;->this$0:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->access$1600(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CameraStateCallback$1;->val$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    :cond_0
    return-void
.end method
