.class public Lcom/samsung/android/settings/location/SatelliteView;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/SatelliteView$SetHandler;,
        Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;,
        Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;
    }
.end annotation


# static fields
.field private static ANIMATION_COUNT:I

.field private static ANIMATION_TIME:I

.field private static CIRCLE_RADIUS:I

.field private static final DEBUG:Ljava/lang/Boolean;

.field private static ICON_RADIUS:I

.field private static a:[D

.field static ani_count:I

.field static ani_gap_x:D

.field static ani_gap_y:D

.field private static azimuth:[F

.field private static b:[D

.field private static circlePaint:Landroid/graphics/Paint;

.field private static elevation:[F

.field private static mAltitude:D

.field private static mBearing:F

.field private static mCenter_X:I

.field private static mCenter_Y:I

.field private static mLatitude:D

.field private static mLongitude:D

.field static mNoOfSat:I

.field public static mStartMode:I

.field static mSvInformation:Ljava/lang/String;

.field private static px:[I

.field private static py:[I

.field private static snr:[F


# instance fields
.field private btn_log:Landroid/widget/Button;

.field calendarDate:Ljava/lang/String;

.field private drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

.field private mAccuracy:F

.field mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field mHandler:Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

.field private mIsWhiteTheme:Ljava/lang/Boolean;

.field mLocation:Landroid/location/Location;

.field mLocationListener:Landroid/location/LocationListener;

.field mLocationManager:Landroid/location/LocationManager;

.field mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private mRect_gap:I

.field private mRect_text_size:I

.field private mRect_width:I

.field private mScrHeight:I

.field private mScrWidth:I

.field private mSpeed:D

.field private mTime:J

.field sv_list:[Landroid/location/GpsSatellite;

.field sv_list_mask:I

.field private text:Landroid/widget/TextView;

.field private ttff:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/location/SatelliteView;->DEBUG:Ljava/lang/Boolean;

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    const/16 v1, 0x25

    sput v1, Lcom/samsung/android/settings/location/SatelliteView;->ICON_RADIUS:I

    const/16 v1, 0xc8

    sput v1, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    const/16 v1, 0x64

    sput v1, Lcom/samsung/android/settings/location/SatelliteView;->ANIMATION_TIME:I

    const/16 v1, 0x28

    sput v1, Lcom/samsung/android/settings/location/SatelliteView;->ANIMATION_COUNT:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/samsung/android/settings/location/SatelliteView;->mAltitude:D

    const/4 v3, 0x0

    sput v3, Lcom/samsung/android/settings/location/SatelliteView;->mBearing:F

    sput-wide v1, Lcom/samsung/android/settings/location/SatelliteView;->mLongitude:D

    sput-wide v1, Lcom/samsung/android/settings/location/SatelliteView;->mLatitude:D

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->mSvInformation:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v1, v0, [F

    sput-object v1, Lcom/samsung/android/settings/location/SatelliteView;->azimuth:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/samsung/android/settings/location/SatelliteView;->elevation:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/samsung/android/settings/location/SatelliteView;->snr:[F

    new-array v1, v0, [I

    sput-object v1, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    new-array v1, v0, [I

    sput-object v1, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    new-array v1, v0, [D

    sput-object v1, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    new-array v0, v0, [D

    sput-object v0, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mIsWhiteTheme:Ljava/lang/Boolean;

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrHeight:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mSpeed:D

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mTime:J

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->ttff:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mAccuracy:F

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocation:Landroid/location/Location;

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list_mask:I

    const/16 v1, 0x20

    new-array v1, v1, [Landroid/location/GpsSatellite;

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    new-instance v1, Lcom/samsung/android/settings/location/SatelliteView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/location/SatelliteView$2;-><init>(Lcom/samsung/android/settings/location/SatelliteView;)V

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    new-instance v1, Lcom/samsung/android/settings/location/SatelliteView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/location/SatelliteView$3;-><init>(Lcom/samsung/android/settings/location/SatelliteView;)V

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    new-instance v1, Lcom/samsung/android/settings/location/SatelliteView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/location/SatelliteView$4;-><init>(Lcom/samsung/android/settings/location/SatelliteView;)V

    iput-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_width:I

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_gap:I

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_text_size:I

    return-void
.end method

.method private Min(II)I
    .locals 1

    move v0, p1

    if-le p1, p2, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/location/SatelliteView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/location/SatelliteView;->ttff:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/location/SatelliteView;->DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/location/SatelliteView;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mIsWhiteTheme:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/location/SatelliteView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->calcRectDimension()V

    return-void
.end method

.method static synthetic access$1500()[F
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/location/SatelliteView;->snr:[F

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    return-object v0
.end method

.method static synthetic access$1700()[I
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    return-object v0
.end method

.method static synthetic access$1800()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/settings/location/SatelliteView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_gap:I

    return v0
.end method

.method static synthetic access$200()D
    .locals 2

    sget-wide v0, Lcom/samsung/android/settings/location/SatelliteView;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/settings/location/SatelliteView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_width:I

    return v0
.end method

.method static synthetic access$202(D)D
    .locals 0

    sput-wide p0, Lcom/samsung/android/settings/location/SatelliteView;->mLongitude:D

    return-wide p0
.end method

.method static synthetic access$2100(Lcom/samsung/android/settings/location/SatelliteView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrHeight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/settings/location/SatelliteView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_text_size:I

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/settings/location/SatelliteView;)Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->ANIMATION_TIME:I

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/settings/location/SatelliteView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->ANIMATION_COUNT:I

    return v0
.end method

.method static synthetic access$300()D
    .locals 2

    sget-wide v0, Lcom/samsung/android/settings/location/SatelliteView;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$302(D)D
    .locals 0

    sput-wide p0, Lcom/samsung/android/settings/location/SatelliteView;->mLatitude:D

    return-wide p0
.end method

.method static synthetic access$400()D
    .locals 2

    sget-wide v0, Lcom/samsung/android/settings/location/SatelliteView;->mAltitude:D

    return-wide v0
.end method

.method static synthetic access$402(D)D
    .locals 0

    sput-wide p0, Lcom/samsung/android/settings/location/SatelliteView;->mAltitude:D

    return-wide p0
.end method

.method static synthetic access$500()F
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->mBearing:F

    return v0
.end method

.method static synthetic access$502(F)F
    .locals 0

    sput p0, Lcom/samsung/android/settings/location/SatelliteView;->mBearing:F

    return p0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/location/SatelliteView;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mSpeed:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/samsung/android/settings/location/SatelliteView;D)D
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mSpeed:D

    return-wide p1
.end method

.method static synthetic access$702(Lcom/samsung/android/settings/location/SatelliteView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mAccuracy:F

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/location/SatelliteView;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/samsung/android/settings/location/SatelliteView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mTime:J

    return-wide p1
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    return v0
.end method

.method private adajustBgForTheme()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mIsWhiteTheme:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private calcRectDimension()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    div-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_width:I

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    div-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_gap:I

    iget v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_width:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_text_size:I

    const-string v0, "GPS_SATELLITE_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rect Width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GPS_SATELLITE_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rect Gap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_gap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GPS_SATELLITE_VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rect TEXT SIZE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mRect_text_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private init()V
    .locals 7

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->mStartMode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mTime:J

    move v1, v0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->azimuth:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->elevation:[F

    aput v3, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->snr:[F

    aput v3, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    aput-wide v3, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    aput v0, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/SatelliteView;->startGPS()V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    const v2, 0x7f0a06a0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->btn_log:Landroid/widget/Button;

    const v2, 0x7f0a06a3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    const v2, 0x7f12127a

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    sget-wide v5, Lcom/samsung/android/settings/location/SatelliteView;->mAltitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v0

    iget-wide v5, p0, Lcom/samsung/android/settings/location/SatelliteView;->mSpeed:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    sget v6, Lcom/samsung/android/settings/location/SatelliteView;->mBearing:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v0

    const/4 v0, 0x3

    iget-object v6, p0, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v6, v4, v0

    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/location/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->text:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v2, Lcom/samsung/android/settings/location/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->btn_log:Landroid/widget/Button;

    new-instance v4, Lcom/samsung/android/settings/location/SatelliteView$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/SatelliteView$1;-><init>(Lcom/samsung/android/settings/location/SatelliteView;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->adajustBgForTheme()V

    return-void
.end method

.method private initDimension()V
    .locals 6

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/SatelliteView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrHeight:I

    iget v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    iget v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrHeight:I

    int-to-double v1, v1

    const-wide v3, 0x3fdd4fdf3b645a1dL    # 0.458

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sput v1, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    sget v1, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    iget v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fb5532617c1bda5L    # 0.0833

    mul-double/2addr v4, v2

    double-to-int v2, v4

    sub-int/2addr v1, v2

    sget v2, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    iget v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->mScrHeight:I

    const/4 v4, 0x0

    mul-int/2addr v4, v3

    sub-int/2addr v2, v4

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/location/SatelliteView;->Min(II)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    const v1, 0x7f0a069f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-direct {v2, p0, p0}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;-><init>(Lcom/samsung/android/settings/location/SatelliteView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->invalidate()V

    return-void
.end method

.method private resetLocationInfo()V
    .locals 3

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/settings/location/SatelliteView;->mLongitude:D

    sput-wide v0, Lcom/samsung/android/settings/location/SatelliteView;->mLatitude:D

    sput-wide v0, Lcom/samsung/android/settings/location/SatelliteView;->mAltitude:D

    const/4 v2, 0x0

    sput v2, Lcom/samsung/android/settings/location/SatelliteView;->mBearing:F

    iput-wide v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mSpeed:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->ttff:I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;-><init>(Lcom/samsung/android/settings/location/SatelliteView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mHandler:Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

    const v0, 0x7f0d0253

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/SatelliteView;->setContentView(I)V

    const v0, 0x7f0a069e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->initDimension()V

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/SatelliteView;->stopGPS()V

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->drawView:Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->destroyDrawingCache()V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mHandler:Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mHandler:Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    return-void
.end method

.method showSVStatus()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    iget v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list_mask:I

    const/4 v4, 0x1

    shl-int/2addr v4, v0

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v3, v3, v0

    new-instance v4, Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;

    invoke-direct {v4, v3, v1}, Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;-><init>(Landroid/location/GpsSatellite;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    sget-object v4, Lcom/samsung/android/settings/location/SatelliteView;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "GPS_SATELLITE_VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ShowSVStatus: Number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GPS_SATELLITE_VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "snr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GPS_SATELLITE_VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "azimuth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GPS_SATELLITE_VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "elevation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/location/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GPS_SATELLITE_VIEW"

    const-string v5, "*******************************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    new-array v3, v1, [Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/16 v4, 0xc

    if-le v1, v4, :cond_3

    sput v4, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    goto :goto_2

    :cond_3
    sput v1, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    :goto_2
    const/4 v0, 0x0

    :goto_3
    sget v4, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    if-ge v0, v4, :cond_5

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/samsung/android/settings/location/SatelliteView$UserGpsSatellite;->getSat()Landroid/location/GpsSatellite;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    sget-object v5, Lcom/samsung/android/settings/location/SatelliteView;->azimuth:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/samsung/android/settings/location/SatelliteView;->elevation:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/samsung/android/settings/location/SatelliteView;->snr:[F

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v6

    aput v6, v5, v0

    sget-object v5, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->elevation:[F

    aget v6, v6, v0

    float-to-double v6, v6

    const-wide v8, 0x3f91df3300de4c51L    # 0.017453

    mul-double/2addr v6, v8

    aput-wide v6, v5, v0

    sget-object v5, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    sget-object v6, Lcom/samsung/android/settings/location/SatelliteView;->azimuth:[F

    aget v6, v6, v0

    const/high16 v7, 0x42b40000    # 90.0f

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v8

    aput-wide v6, v5, v0

    sget-object v5, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    sget v6, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    int-to-double v6, v6

    sget v8, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v8, v8

    sget-object v10, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    aget-wide v10, v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sget-object v10, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    aget-wide v10, v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v5, v0

    sget-object v5, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    sget v6, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    int-to-double v6, v6

    sget v8, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v8, v8

    sget-object v10, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    aget-wide v10, v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sget-object v10, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    aget-wide v10, v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v5, v0

    sget-object v5, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    aget v5, v5, v0

    sget v6, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sget-object v9, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    aget v9, v9, v0

    sget v10, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    sub-int/2addr v9, v10

    int-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    sget v7, Lcom/samsung/android/settings/location/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_4

    sget-object v5, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    sget v6, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_X:I

    aput v6, v5, v0

    sget-object v5, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    sget v6, Lcom/samsung/android/settings/location/SatelliteView;->mCenter_Y:I

    aput v6, v5, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_5
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/4 v5, 0x3

    iput v5, v4, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/samsung/android/settings/location/SatelliteView;->mHandler:Lcom/samsung/android/settings/location/SatelliteView$SetHandler;

    sget v6, Lcom/samsung/android/settings/location/SatelliteView;->ANIMATION_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method startGPS()V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->resetLocationInfo()V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/SatelliteView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    iget-object v7, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method stopGPS()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/location/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView;->mLocationManager:Landroid/location/LocationManager;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/location/SatelliteView;->mNoOfSat:I

    invoke-direct {p0}, Lcom/samsung/android/settings/location/SatelliteView;->resetLocationInfo()V

    move v1, v0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->azimuth:[F

    const/4 v3, 0x0

    aput v3, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->elevation:[F

    aput v3, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->snr:[F

    aput v3, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->a:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->b:[D

    aput-wide v3, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->px:[I

    aput v0, v2, v1

    sget-object v2, Lcom/samsung/android/settings/location/SatelliteView;->py:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
