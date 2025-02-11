.class public Lcom/samsung/android/widget/SemTipPopup;
.super Ljava/lang/Object;
.source "SemTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemTipPopup$TipWindow;,
        Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_BOUNCE_SCALE1:I = 0xa7

.field private static final ANIMATION_DURATION_BOUNCE_SCALE2:I = 0xfa

.field private static final ANIMATION_DURATION_DISMISS_ALPHA:I = 0xa6

.field private static final ANIMATION_DURATION_DISMISS_SCALE:I = 0xa6

.field private static final ANIMATION_DURATION_EXPAND_ALPHA:I = 0x53

.field private static final ANIMATION_DURATION_EXPAND_SCALE:I = 0x1f4

.field private static final ANIMATION_DURATION_EXPAND_TEXT:I = 0xa7

.field private static final ANIMATION_DURATION_SHOW_SCALE:I = 0x1f4

.field private static final ANIMATION_OFFSET_BOUNCE_SCALE:I = 0xbb8

.field private static final ANIMATION_OFFSET_EXPAND_TEXT:I = 0x64

.field public static final DIRECTION_BOTTOM_LEFT:I = 0x2

.field public static final DIRECTION_BOTTOM_RIGHT:I = 0x3

.field public static final DIRECTION_DEFAULT:I = -0x1

.field public static final DIRECTION_TOP_LEFT:I = 0x0

.field public static final DIRECTION_TOP_RIGHT:I = 0x1

.field private static INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator; = null

.field private static INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator; = null

.field private static INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator; = null

.field private static INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator; = null

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_TRANSLUCENT:I = 0x1

.field private static final MSG_DISMISS:I = 0x1

.field private static final MSG_SCALE_UP:I = 0x2

.field private static final MSG_TIMEOUT:I = 0x0

.field public static final STATE_DISMISSED:I = 0x0

.field public static final STATE_EXPANDED:I = 0x2

.field public static final STATE_HINT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemTipPopup"

.field private static final TIMEOUT_DURATION_MS:I = 0x1bbc

.field private static final TYPE_BALLOON_ACTION:I = 0x1

.field private static final TYPE_BALLOON_CUSTOM:I = 0x2

.field private static final TYPE_BALLOON_SIMPLE:I = 0x0

.field private static final localLOGD:Z = true

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mActionClickListener:Landroid/view/View$OnClickListener;

.field private mActionText:Ljava/lang/CharSequence;

.field private mActionTextColor:Ljava/lang/Integer;

.field private final mActionView:Landroid/widget/Button;

.field private mArrowDirection:I

.field private final mArrowHeight:I

.field private mArrowPositionX:I

.field private mArrowPositionY:I

.field private final mArrowWidth:I

.field private mBackgroundColor:Ljava/lang/Integer;

.field private mBalloonBg1:Landroid/widget/ImageView;

.field private mBalloonBg2:Landroid/widget/ImageView;

.field private mBalloonBubble:Landroid/widget/FrameLayout;

.field private mBalloonBubbleHint:Landroid/widget/ImageView;

.field private mBalloonBubbleIcon:Landroid/widget/ImageView;

.field private mBalloonContent:Landroid/widget/FrameLayout;

.field private mBalloonHeight:I

.field private mBalloonPanel:Landroid/widget/FrameLayout;

.field private mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

.field private mBalloonPopupX:I

.field private mBalloonPopupY:I

.field private final mBalloonView:Landroid/view/View;

.field private mBalloonWidth:I

.field private mBalloonX:I

.field private mBalloonY:I

.field private mBorderColor:Ljava/lang/Integer;

.field private mBubbleBackground:Landroid/widget/ImageView;

.field private mBubbleHeight:I

.field private mBubbleIcon:Landroid/widget/ImageView;

.field private mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

.field private mBubblePopupX:I

.field private mBubblePopupY:I

.field private final mBubbleView:Landroid/view/View;

.field private mBubbleWidth:I

.field private mBubbleX:I

.field private mBubbleY:I

.field private final mContext:Landroid/content/Context;

.field private final mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mForceRealDisplay:Z

.field private mHintDescription:Ljava/lang/CharSequence;

.field private final mHorizontalTextMargin:I

.field private mInitialmMessageViewHeight:I

.field private mInitialmMessageViewWidth:I

.field private mIsDefaultPosition:Z

.field private mIsMessageViewMeasured:Z

.field private mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextColor:Ljava/lang/Integer;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mMode:I

.field private mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

.field private final mParentView:Landroid/view/View;

.field private final mResources:Landroid/content/res/Resources;

.field private mScaleMargin:I

.field private mSideMargin:I

.field private mState:I

.field private mType:I

.field private final mVerticalTextMargin:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageText:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mInitialmMessageViewWidth:I

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mInitialmMessageViewHeight:I

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsMessageViewMeasured:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mForceRealDisplay:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDisplayMetrics = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->initInterpolator()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109012c

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    const v3, 0x109012b

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemTipPopup;->initBubblePopup(I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemTipPopup;->initBalloonPopup(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v4, 0x10204e9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v4, 0x10204df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x10601e9

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050351

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050342

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050345

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050346

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$1;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$2;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/widget/SemTipPopup$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemTipPopup$3;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-direct {v0, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/widget/SemTipPopup;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    return v0
.end method

.method static synthetic access$1300()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/widget/SemTipPopup;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->scheduleTimeout()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->animateBounce()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/widget/SemTipPopup;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/widget/SemTipPopup;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/widget/SemTipPopup;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/widget/SemTipPopup;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/widget/SemTipPopup;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTipPopup;->dismissBubble(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->animateScaleUp()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$TipWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    return-object v0
.end method

.method private animateBounce()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v3

    int-to-float v1, v3

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v3

    int-to-float v2, v3

    goto :goto_0

    :pswitch_3
    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v3

    int-to-float v1, v3

    iget-object v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v3

    int-to-float v2, v3

    :goto_0
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v12, v3

    new-instance v13, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f99999a    # 1.2f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f99999a    # 1.2f

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v13

    move v9, v1

    move v11, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v14, 0xa7

    invoke-virtual {v13, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f553f7d    # 0.833f

    const v7, 0x3f553f7d    # 0.833f

    move-object/from16 v3, v16

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v3, v14, v15}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v4, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v4, Lcom/samsung/android/widget/SemTipPopup$8;

    invoke-direct {v4, v0, v12}, Lcom/samsung/android/widget/SemTipPopup$8;-><init>(Lcom/samsung/android/widget/SemTipPopup;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    iget-object v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    invoke-virtual {v4, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private animateScaleUp()V
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v7, 0x1050348

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x3fd9999a    # 1.7f

    int-to-float v8, v6

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v15, 0x0

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v11, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v9, v11

    int-to-float v4, v9

    const/4 v5, 0x0

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    int-to-float v9, v9

    div-float v1, v9, v10

    goto :goto_0

    :pswitch_1
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    int-to-float v2, v9

    const/4 v3, 0x0

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v11, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v9, v11

    int-to-float v4, v9

    const/4 v5, 0x0

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    int-to-float v9, v9

    div-float v1, v9, v10

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x0

    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v3, v9

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v11, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v9, v11

    int-to-float v4, v9

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    int-to-float v5, v9

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    sub-float v1, v15, v9

    goto :goto_0

    :pswitch_3
    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    int-to-float v2, v9

    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v3, v9

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v11, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v9, v11

    int-to-float v4, v9

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    int-to-float v5, v9

    iget v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    int-to-float v9, v9

    div-float/2addr v9, v10

    sub-float v1, v15, v9

    :goto_0
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v11, Landroid/view/animation/TranslateAnimation;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v11

    move/from16 v24, v1

    invoke-direct/range {v16 .. v24}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v14, v11

    const-wide/16 v12, 0x1f4

    invoke-virtual {v14, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    sget-object v11, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v11}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const v18, 0x3fd9999a    # 1.7f

    const/high16 v19, 0x3f800000    # 1.0f

    const v20, 0x3fd9999a    # 1.7f

    move-object/from16 v16, v11

    move/from16 v22, v2

    move/from16 v24, v3

    invoke-direct/range {v16 .. v24}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v11, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v12, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v25, v11

    const-wide/16 v10, 0xa6

    invoke-virtual {v12, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v10, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v11, v25

    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Lcom/samsung/android/widget/SemTipPopup$9;

    invoke-direct {v10, v0}, Lcom/samsung/android/widget/SemTipPopup$9;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v10, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v13, v10

    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const v16, 0x3e8a3d71    # 0.27f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object/from16 v10, v19

    move-object/from16 v22, v11

    move/from16 v11, v16

    move-object/from16 v23, v12

    move/from16 v12, v17

    move-object/from16 v26, v13

    move v13, v8

    move-object/from16 v24, v14

    move/from16 v14, v18

    move/from16 v15, v20

    move/from16 v16, v4

    move/from16 v17, v21

    move/from16 v18, v5

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v11, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v11, 0x1f4

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v14, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v14, 0x53

    invoke-virtual {v11, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v14, v26

    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v14, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v15, v14}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v15, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v15, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v12, v15

    sget-object v13, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move/from16 v27, v1

    move/from16 v28, v2

    const-wide/16 v1, 0x64

    invoke-virtual {v12, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v1, 0xa7

    invoke-virtual {v12, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$10;

    invoke-direct {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$10;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v12, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private animateViewIn()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v2, v11

    move v8, v0

    move v10, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v3, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Lcom/samsung/android/widget/SemTipPopup$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemTipPopup$7;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateArrowDirection(II)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    if-eqz v0, :cond_3

    new-array v0, v4, [I

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v0, v3

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v4

    add-int/2addr v5, v6

    aget v6, v0, v2

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/2addr v7, v4

    add-int/2addr v6, v7

    mul-int/lit8 v7, p1, 0x2

    iget-object v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v7, v8, :cond_1

    if-gt p2, v6, :cond_0

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    :cond_1
    if-gt p2, v6, :cond_2

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    :goto_0
    goto :goto_1

    :cond_3
    mul-int/lit8 v0, p1, 0x2

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v5, :cond_4

    mul-int/lit8 v0, p2, 0x2

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v5, :cond_4

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_1

    :cond_4
    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v1, :cond_5

    mul-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v1, :cond_5

    iput v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_1

    :cond_5
    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v1, :cond_6

    mul-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_6

    iput v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    goto :goto_1

    :cond_6
    mul-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v1, :cond_7

    mul-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_7

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateArrowDirection : arrow position ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") / mArrowDirection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method private calculateArrowPosition()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateArrowPosition anchor location : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    aget v1, v2, v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v1, v3

    aget v3, v2, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    mul-int/lit8 v4, v3, 0x2

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v4, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    sub-int v0, v3, v4

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    :goto_0
    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateArrowPosition mArrowPosition : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method private calculatePopupPosition()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->getDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-gez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    const-string v0, "Target position is too far to the left!"

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_7

    const-string v0, "Target position is too far to the right!"

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    goto :goto_3

    :cond_5
    :goto_2
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_6

    const-string v0, "Target position is too far to the left!"

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_7

    const-string v0, "Target position is too far to the right!"

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    :cond_7
    :goto_3
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    :cond_9
    :goto_4
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    packed-switch v0, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    goto :goto_5

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    goto :goto_5

    :pswitch_2
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    goto :goto_5

    :pswitch_3
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuestionPopup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BalloonPopup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculatePopupSize()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowWidth:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screen width DP "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    const/16 v2, 0x1e0

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v4, 0x3f547ae1    # 0.83f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    :goto_0
    goto :goto_1

    :cond_0
    const/16 v2, 0x3c0

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x500

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    :goto_1
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsMessageViewMeasured:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mInitialmMessageViewWidth:I

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsMessageViewMeasured:Z

    :cond_3
    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mInitialmMessageViewWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    mul-int/2addr v7, v3

    add-int/2addr v4, v7

    if-ge v4, v1, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    if-le v4, v2, :cond_5

    move v4, v2

    :cond_5
    :goto_2
    iput v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    iget v9, p0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    mul-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    mul-int/2addr v8, v3

    add-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    iget v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    if-ne v7, v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v5, v6, v6}, Landroid/widget/Button;->measure(II)V

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v7, 0x105034e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v3, v6

    add-int/2addr v5, v3

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    :cond_6
    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v7, 0x105034f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    :cond_7
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SemTipPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " #### "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dismissBubble(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$600(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private getDisplayFrame(Landroid/graphics/Rect;)V
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->getNavagationbarHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isNavigationbarHide()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "realMetrics = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "is tablet? = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isTablet()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mForceRealDisplay:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iput v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, p1, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen Rect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mForceRealDisplay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mForceRealDisplay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iput v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    :cond_1
    invoke-virtual {v5, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bounds = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "tablet"

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v6, v7, :cond_9

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v6, v7

    if-ne v6, v0, :cond_9

    if-eqz v1, :cond_9

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v6, "phone"

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v6, v7, :cond_4

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v7

    if-ne v6, v0, :cond_4

    if-eqz v1, :cond_3

    iget v6, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    :cond_3
    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    :cond_4
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v6, v7, :cond_9

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-ne v6, v0, :cond_9

    const-string v6, "Left Docked"

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    :pswitch_1
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v6, v7, :cond_6

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v6, v7

    if-ne v6, v0, :cond_6

    if-eqz v1, :cond_5

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_5
    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    :cond_6
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v6, v7, :cond_9

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-ne v6, v0, :cond_9

    const-string v6, "Top Docked"

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_2
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v6, v7, :cond_7

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v6, v7

    if-ne v6, v0, :cond_7

    if-eqz v1, :cond_7

    iget v6, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->right:I

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v7

    if-eqz v7, :cond_8

    iget v8, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p1, Landroid/graphics/Rect;->right:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "displayCutout.getSafeInsetLeft() :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    :cond_8
    goto :goto_0

    :pswitch_3
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v6, v7, :cond_9

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v6, v7

    if-ne v6, v0, :cond_9

    if-eqz v1, :cond_9

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    iput v6, p1, Landroid/graphics/Rect;->bottom:I

    :cond_9
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Screen Rect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNavagationbarHeight()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const-string/jumbo v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private initBalloonPopup(I)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonContent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    const v1, 0x10204e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    const v2, 0x1080942

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    const v3, 0x1080944

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    iget v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$1;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setAttachedInDecor(Z)V

    return-void
.end method

.method private initBubblePopup(I)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    const v1, 0x10204e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    const v1, 0x10204e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v2, 0x108094e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    const v3, 0x1080954

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x105034b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050349

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x105034a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050348

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    :goto_0
    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$1;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setAttachedInDecor(Z)V

    return-void
.end method

.method private initInterpolator()V
    .locals 3

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    const v1, 0x10c0038

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    :cond_0
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    const v1, 0x10c003a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    :cond_1
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_50:Landroid/view/animation/Interpolator;

    :cond_2
    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    sput-object v0, Lcom/samsung/android/widget/SemTipPopup;->INTERPOLATOR_ELASTIC_CUSTOM:Landroid/view/animation/Interpolator;

    :cond_3
    return-void
.end method

.method private isNavigationbarHide()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "navigationbar_hide_bar_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isTablet()Z
    .locals 5

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    mul-int/lit16 v2, v1, 0xa0

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "short size dp  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private scheduleTimeout()V
    .locals 4

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/samsung/android/widget/SemTipPopup;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1bbc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setBalloonPanel()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "setBalloonPanel()"

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget v1, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v2, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "leftMargin["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rightMargin["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] mBalloonWidth["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget v5, v0, Lcom/samsung/android/widget/SemTipPopup;->mHorizontalTextMargin:I

    iget-object v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v7, 0x105034e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v8, 0x105034f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget-object v8, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v10, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonContent:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v11, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v12, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const v14, 0x108094e

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    const v15, 0x1080954

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v14, 0x105034b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v14, 0x1050349

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_2
    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    const v14, 0x108094f

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v7, v15

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v7, v15

    int-to-float v7, v7

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    int-to-float v15, v15

    invoke-static {v13, v7, v15}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$1500(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v7, :cond_3

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const v13, 0x108094b

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v13, 0x43340000    # 180.0f

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setRotationY(F)V

    :goto_1
    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setRotationY(F)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setRotationY(F)V

    const/16 v7, 0x33

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, 0x0

    invoke-virtual {v11, v1, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v12, v7, v7, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    add-int/2addr v7, v13

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    sub-int/2addr v13, v6

    invoke-virtual {v10, v5, v7, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v13, v15

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v13, v15

    int-to-float v13, v13

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    int-to-float v15, v15

    invoke-static {v7, v13, v15}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$1500(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v7, :cond_4

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const v13, 0x108094a

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    const/16 v7, 0x35

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int v7, v2, v7

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v13, v7, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    add-int/2addr v7, v1

    invoke-virtual {v12, v7, v13, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    add-int/2addr v7, v13

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    sub-int/2addr v13, v6

    invoke-virtual {v10, v5, v7, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v13, v15

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v13, v15

    int-to-float v13, v13

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v15, v14

    int-to-float v14, v15

    invoke-static {v7, v13, v14}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$1500(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const v13, 0x108094d

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    const v13, 0x108094f

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v13, 0x43340000    # 180.0f

    goto :goto_2

    :cond_5
    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_2
    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setRotation(F)V

    const/16 v7, 0x53

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, 0x0

    invoke-virtual {v11, v1, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v12, v7, v7, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    add-int/2addr v13, v14

    sub-int/2addr v13, v6

    invoke-virtual {v10, v5, v7, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_4

    :pswitch_3
    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    sub-int/2addr v13, v14

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    invoke-static {v7, v13, v14}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$1500(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const v13, 0x108094c

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    const v13, 0x108094f

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v13, 0x43340000    # 180.0f

    goto :goto_3

    :cond_6
    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setRotationX(F)V

    :goto_3
    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setRotationX(F)V

    iget-object v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setRotationX(F)V

    const/16 v7, 0x55

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int v7, v2, v7

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v13, v7, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    add-int/2addr v7, v1

    invoke-virtual {v12, v7, v13, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mArrowHeight:I

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mVerticalTextMargin:I

    add-int/2addr v13, v14

    sub-int/2addr v13, v6

    invoke-virtual {v10, v5, v7, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :goto_4
    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v7, v1

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v13, v3

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    sub-int v14, v2, v14

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v14, v15

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    add-int/2addr v15, v4

    invoke-virtual {v8, v7, v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget v7, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    invoke-virtual {v9, v7, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    sub-int/2addr v13, v14

    iput v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    iget v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    sub-int/2addr v13, v14

    iput v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonContent:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonWidth:I

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    const/16 v16, 0x2

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setWidth(I)V

    iget-object v13, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v14, v0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonHeight:I

    iget v15, v0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int v16, v16, v15

    add-int v14, v14, v16

    invoke-virtual {v13, v14}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setHeight(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBubblePanel()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x105034b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050349

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    const/high16 v2, 0x43340000    # 180.0f

    const v3, 0x108094f

    const/4 v4, 0x0

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v1, v4, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$1500(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v2, 0x108094b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotationY(F)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$1500(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    const/16 v1, 0x35

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/2addr v2, v5

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v2, 0x108094a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v4, v6}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$1500(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/2addr v4, v5

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v2, 0x108094d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v4, v6}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$1500(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V

    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/2addr v4, v5

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleY:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/2addr v4, v5

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    const v2, 0x108094c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotationX(F)V

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleWidth:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    mul-int/2addr v5, v3

    add-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setHeight(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setInternal()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const v0, 0x3f99999a    # 1.2f

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x1050347

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x1050340

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    cmpl-float v4, v1, v0

    const/4 v5, 0x0

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    int-to-float v6, v2

    div-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    int-to-float v6, v3

    div-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    new-instance v5, Lcom/samsung/android/widget/SemTipPopup$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemTipPopup$4;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput v6, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mType:I

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMode:I

    if-eq v4, v6, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionView:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleBackground:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleHint:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBg2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubbleIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_9
    return-void

    :cond_a
    :goto_2
    return-void

    :cond_b
    :goto_3
    return-void
.end method

.method private showInternal()V
    .locals 5

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    invoke-interface {v0, v2}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsShowing : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->animateViewIn()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubbleView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$5;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonBubble:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    invoke-interface {v0, v2}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    iget v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTipPopup$6;-><init>(Lcom/samsung/android/widget/SemTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$600(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBubblePopup.mIsDismissing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$700(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$600(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBalloonPopup.mIsDismissing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->access$700(Lcom/samsung/android/widget/SemTipPopup$TipWindow;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->isShowing()Z

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->isShowing()Z

    move-result v1

    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setActionTextColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mActionTextColor:Ljava/lang/Integer;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method public setBackgroundColorWithAlpha(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBackgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBorderColor:Ljava/lang/Integer;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mScaleMargin:I

    :goto_0
    return-void
.end method

.method public setHintDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mHintDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMessageTextColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mMessageTextColor:Ljava/lang/Integer;

    return-void
.end method

.method public setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mOnStateChangeListener:Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    return-void
.end method

.method public setOutsideTouchEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setOutsideTouchable(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "outside enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method public setPopupWindowClippingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setClippingEnabled(Z)V

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mForceRealDisplay:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050351

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mSideMargin:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clipping enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method public setTargetPosition(II)V
    .locals 1

    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public show(I)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setInternal()V

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowPosition()V

    :cond_1
    if-ne p1, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowDirection(II)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupSize()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupPosition()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBubblePanel()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBalloonPanel()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->showInternal()V

    return-void
.end method

.method public update()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->update(IZ)V

    return-void
.end method

.method public update(IZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setInternal()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonX:I

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonY:I

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mIsDefaultPosition:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "update - default position"

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowPosition()V

    :cond_1
    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionX:I

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowPositionY:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->calculateArrowDirection(II)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup;->mArrowDirection:I

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupSize()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->calculatePopupPosition()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBubblePanel()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->setBalloonPanel()V

    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopupY:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBubblePopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->update(IIII)V

    if-eqz p2, :cond_4

    const-string v0, "Timer Reset!"

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->debugLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTipPopup;->scheduleTimeout()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupX:I

    iget v2, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopupY:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemTipPopup;->mBalloonPopup:Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->update(IIII)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method
