.class public Landroid/net/wifi/ScanResult$InformationElement;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InformationElement"
.end annotation


# static fields
.field public static final EID_BSS_LOAD:I = 0xb

.field public static final EID_ERP:I = 0x2a

.field public static final EID_EXTENDED_CAPS:I = 0x7f

.field public static final EID_EXTENDED_SUPPORTED_RATES:I = 0x32

.field public static final EID_EXTENSION:I = 0xff

.field public static final EID_EXT_ASSOC_DELAY_INFO:I = 0x1

.field public static final EID_EXT_ESTIMATED_SERVICE_PARAMS:I = 0xb

.field public static final EID_EXT_EXTENDED_REQUEST:I = 0xa

.field public static final EID_EXT_FILS_HLP_CONTAINER:I = 0x5

.field public static final EID_EXT_FILS_IP_ADDR_ASSIGN:I = 0x6

.field public static final EID_EXT_FILS_KEY_CONFIRM:I = 0x3

.field public static final EID_EXT_FILS_NONCE:I = 0xd

.field public static final EID_EXT_FILS_PUBLIC_KEY:I = 0xc

.field public static final EID_EXT_FILS_REQ_PARAMS:I = 0x2

.field public static final EID_EXT_FILS_SESSION:I = 0x4

.field public static final EID_EXT_FILS_WRAPPED_DATA:I = 0x8

.field public static final EID_EXT_FTM_SYNC_INFO:I = 0x9

.field public static final EID_EXT_FUTURE_CHANNEL_GUIDANCE:I = 0xe

.field public static final EID_EXT_HE_CAPABILITIES:I = 0x23

.field public static final EID_EXT_HE_OPERATION:I = 0x24

.field public static final EID_EXT_KEY_DELIVERY:I = 0x7

.field public static final EID_EXT_OWE_DH_PARAM:I = 0x20

.field public static final EID_HT_CAPABILITIES:I = 0x2d

.field public static final EID_HT_OPERATION:I = 0x3d

.field public static final EID_INTERWORKING:I = 0x6b

.field public static final EID_ROAMING_CONSORTIUM:I = 0x6f

.field public static final EID_RSN:I = 0x30

.field public static final EID_SSID:I = 0x0

.field public static final EID_SUPPORTED_RATES:I = 0x1

.field public static final EID_TIM:I = 0x5

.field public static final EID_VHT_CAPABILITIES:I = 0xbf

.field public static final EID_VHT_OPERATION:I = 0xc0

.field public static final EID_VSA:I = 0xdd

.field public static final EID_WAPI:I = 0x44


# instance fields
.field public bytes:[B

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    iput v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    return-void
.end method
