.class public final Lcom/android/internal/telephony/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    }
.end annotation


# static fields
.field public static final ALERT_DEFAULT:I = 0x0

.field public static final ALERT_HIGH_PRIO:I = 0x3

.field public static final ALERT_LOW_PRIO:I = 0x1

.field public static final ALERT_MEDIUM_PRIO:I = 0x2

.field public static final CMAS_CATEGORY_RECORD:I = 0x1

.field public static final CMAS_IDENTIFIER_RECORD:I = 0x2

.field public static final CMAS_MESSAGE_RECORD:I = 0x0

.field public static final CMAS_PROTOCOL_VER:I = 0x0

.field public static final CMAS_RECORD_TYPE_0:I = 0x0

.field public static final CMAS_RECORD_TYPE_1:I = 0x1

.field public static final CMAS_RECORD_TYPE_2:I = 0x2

.field public static final CMAS_RECORD_TYPE_3:I = 0x3

.field public static final CMAS_SUPPORT_TYPE:I = 0x1

.field public static final CMAS_TYPE_0_1:I = 0x3

.field public static final CMAS_TYPE_0_2:I = 0x5

.field public static final CMAS_TYPE_1_2:I = 0x7

.field public static final DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final DISPLAY_MODE_USER:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final ERROR_UNDEFINED:I = 0xff

.field public static final LANGUAGE_CHINESE:I = 0x6

.field public static final LANGUAGE_ENGLISH:I = 0x1

.field public static final LANGUAGE_FRENCH:I = 0x2

.field public static final LANGUAGE_HEBREW:I = 0x7

.field public static final LANGUAGE_JAPANESE:I = 0x4

.field public static final LANGUAGE_KOREAN:I = 0x5

.field public static final LANGUAGE_SPANISH:I = 0x3

.field public static final LANGUAGE_UNKNOWN:I = 0x0

.field public static final LANGUAGE_UNKNOWN_LGT:I = 0x40

.field private static final LOG_TAG:Ljava/lang/String; = "BearerData"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final PRIORITY_EMERGENCY:I = 0x3

.field public static final PRIORITY_INTERACTIVE:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_URGENT:I = 0x2

.field public static final PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final PRIVACY_RESTRICTED:I = 0x1

.field public static final PRIVACY_SECRET:I = 0x3

.field public static final RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final RELATIVE_TIME_NOW:I = 0xf6

.field public static final RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final STATUS_ACCEPTED:I = 0x0

.field public static final STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CANCEL_FAILED:I = 0x6

.field public static final STATUS_DELIVERED:I = 0x2

.field public static final STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final STATUS_INVALID_DESTINATION:I = 0xa

.field public static final STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x5

.field public static final STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final STATUS_UNDEFINED:I = 0xff

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t

.field public static compChar:C

.field public static language:I

.field public static mBodyOffset:I

.field public static mIsfourBytesUnicode:Z

.field public static mlastByte:[B

.field public static userLength:I

.field public static userdata:[B


# instance fields
.field public alert:I

.field public alertIndicatorSet:Z

.field public callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field public deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public deferredDeliveryTimeRelative:I

.field public deferredDeliveryTimeRelativeSet:Z

.field public deliveryAckReq:Z

.field public depositIndex:I

.field public displayMode:I

.field public displayModeSet:Z

.field public errorClass:I

.field public hasUserDataHeader:Z

.field public languageIndicatorSet:Z

.field public messageId:I

.field public messageStatus:I

.field public messageStatusSet:Z

.field public messageType:I

.field public msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public msgDeliveryTime:Ljava/lang/String;

.field public numberOfMessages:I

.field public priority:I

.field public priorityIndicatorSet:Z

.field public privacy:I

.field public privacyIndicatorSet:Z

.field public readAckReq:Z

.field public reportReq:Z

.field public semServiceCategoryProgramData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public serviceCategoryProgramData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public serviceCategoryProgramResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public userAckReq:Z

.field public userData:Lcom/android/internal/telephony/cdma/sms/UserData;

.field public userResponseCode:I

.field public userResponseCodeSet:Z

.field public validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public validityPeriodRelative:I

.field public validityPeriodRelativeSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    return-void
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;ZZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 8

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, -0x1

    const/16 v3, 0xa0

    const/16 v4, 0x8c

    const/4 v5, 0x1

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    iput v0, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    iget v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    if-le v6, v4, :cond_1

    const/16 v3, 0x86

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, -0x2

    mul-int/2addr v1, v4

    if-gt v6, v1, :cond_0

    add-int/lit8 v3, v3, -0x2

    :cond_0
    add-int/lit8 v1, v3, -0x1

    add-int/2addr v1, v6

    div-int/2addr v1, v3

    iput v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iget v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v1, v3

    sub-int/2addr v1, v6

    iput v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0

    :cond_1
    iput v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_0
    iput v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    :cond_2
    if-eq v0, v2, :cond_3

    if-gt v0, v3, :cond_3

    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    move-object v2, v1

    iput v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v0, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    iput v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthForCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v3, v5, :cond_6

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v3, v5, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v3, v3, 0x2

    if-le v3, v4, :cond_5

    const/16 v4, 0x86

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v5, v4, -0x2

    mul-int/2addr v1, v5

    if-gt v3, v1, :cond_4

    add-int/lit8 v4, v4, -0x2

    :cond_4
    add-int/lit8 v1, v4, -0x1

    add-int/2addr v1, v3

    div-int/2addr v1, v4

    iput v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iget v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v1, v4

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    :cond_5
    iput v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_1
    if-nez p3, :cond_6

    const/4 v1, 0x3

    iput v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    :cond_6
    :goto_2
    return-object v2
.end method

.method public static calcTextEncodingDetailsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 11

    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v1

    const/16 v2, 0xa0

    const/4 v3, 0x1

    if-lez p2, :cond_0

    sub-int/2addr v2, p2

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/16 v4, 0x9a

    if-lez p2, :cond_1

    sub-int/2addr v4, p2

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_1
    nop

    :goto_1
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    if-gt v1, v2, :cond_2

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    sub-int v5, v2, v1

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_4

    :cond_2
    const/4 v6, 0x0

    if-eq v1, v5, :cond_5

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    if-le v1, v2, :cond_4

    add-int/lit8 v5, v1, -0x1

    div-int/2addr v5, v4

    add-int/2addr v5, v3

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    rem-int v5, v1, v4

    if-lez v5, :cond_3

    rem-int v5, v1, v4

    sub-int v5, v4, v5

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_3
    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_4
    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int v5, v2, v1

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_2
    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_4

    :cond_5
    const/4 v7, 0x2

    mul-int/2addr p2, v7

    const/16 v8, 0x8c

    if-lez p2, :cond_6

    sub-int/2addr v8, p2

    sub-int/2addr v8, v3

    nop

    :cond_6
    move v2, v8

    const/16 v8, 0x80

    if-lez p2, :cond_7

    sub-int/2addr v8, p2

    sub-int/2addr v8, v3

    nop

    :cond_7
    move v4, v8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    mul-int/2addr v8, v7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    const/16 v9, 0x3e8

    if-le v8, v2, :cond_a

    add-int/lit8 v10, v2, -0x2

    if-le p2, v10, :cond_8

    iput v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_8
    rem-int v5, v8, v4

    if-eqz v5, :cond_9

    div-int v5, v8, v4

    add-int/2addr v5, v3

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    rem-int v3, v8, v4

    sub-int v3, v4, v3

    div-int/2addr v3, v7

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_9
    div-int v3, v8, v4

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_a
    add-int/lit8 v6, v4, -0x2

    if-lt p2, v6, :cond_b

    iput v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v5, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_b
    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int v3, v2, v8

    div-int/2addr v3, v7

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_3
    const/4 v3, 0x3

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    :goto_4
    return-object v0
.end method

.method private static countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 8

    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/2addr v4, v3

    and-int v5, v2, v4

    const/16 v6, 0x17

    if-eqz v5, :cond_1

    if-ltz v3, :cond_1

    if-le v3, v6, :cond_0

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal duplicate subparameter ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-static {v1, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z

    move-result v5

    goto/16 :goto_2

    :pswitch_1
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_2
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_3
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_4
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_5
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_6
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_7
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_8
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_9
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_a
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_b
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_c
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_d
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_e
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_f
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_10
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_11
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_12
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    goto :goto_2

    :pswitch_13
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    nop

    :goto_2
    nop

    if-eqz v5, :cond_2

    if-ltz v3, :cond_2

    if-gt v3, v6, :cond_2

    or-int/2addr v2, v4

    :cond_2
    goto/16 :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v3, :cond_7

    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->isCmasAlertCategory(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V

    goto :goto_3

    :cond_4
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v4, :cond_6

    xor-int/lit8 v3, v2, 0x1

    xor-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    const-string v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IS-91 must occur without extra subparams ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_3

    :cond_6
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v4, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    invoke-static {}, Landroid/telephony/SmsMessage;->getCDMASmsReassembly()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->extractPagination(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;)V

    :cond_7
    :goto_3
    return-object v1

    :cond_8
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v4, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "BearerData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BearerData decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "BearerData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BearerData decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static decode7bitAscii([BII)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v3, p2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_RIL_QmiCdmaGsm"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v4, 0xd

    const/16 v6, 0xa

    const/16 v7, 0x20

    const/4 v8, 0x7

    if-eqz v0, :cond_5

    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v9, v0, 0x6

    :try_start_0
    div-int/2addr v9, v8

    mul-int/lit8 v10, v9, 0x7

    sub-int/2addr v10, v0

    sub-int/2addr v3, v9

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v12, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    mul-int/lit8 v13, v3, 0x7

    add-int/2addr v13, v0

    add-int/2addr v13, v10

    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v14

    if-lt v14, v13, :cond_4

    add-int v14, v0, v10

    invoke-virtual {v12, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    nop

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {v12, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    if-lt v14, v7, :cond_0

    sget v15, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v14, v15, :cond_0

    sget-object v15, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 v16, v14, -0x20

    aget-char v15, v15, v16

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-ne v14, v6, :cond_1

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-ne v14, v4, :cond_2

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_4
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insufficient data (wanted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bits, but only have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "7bit ASCII decode failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    mul-int/lit8 v2, p1, 0x8

    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v9, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v9, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    mul-int/lit8 v10, v2, 0x8

    mul-int/lit8 v11, v3, 0x7

    add-int/2addr v10, v11

    invoke-virtual {v9}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v11

    if-lt v11, v10, :cond_a

    invoke-virtual {v9, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    nop

    :goto_2
    if-ge v5, v3, :cond_9

    invoke-virtual {v9, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    if-lt v11, v7, :cond_6

    sget v12, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v11, v12, :cond_6

    sget-object v12, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 v13, v11, -0x20

    aget-char v12, v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    if-ne v11, v6, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    if-ne v11, v4, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_a
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insufficient data (wanted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bits, but only have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "7bit ASCII decode failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static decode7bitGsm([BII)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v1, v0, 0x6

    div-int/lit8 v1, v1, 0x7

    sub-int/2addr p2, v1

    mul-int/lit8 v2, v1, 0x7

    sub-int v8, v2, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, v8

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v4, "7bit GSM decoding failed"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    const/16 v0, 0x8

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    mul-int/2addr v2, v1

    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v5, 0x4

    const/4 v6, 0x1

    iget v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v7, v4, :cond_1

    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    iput v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    const/16 v5, 0x8

    add-int/lit8 v7, v6, 0x7

    int-to-byte v6, v7

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    add-int/lit8 v1, v6, 0x8

    int-to-byte v1, v1

    sub-int v6, v2, v1

    iget v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v7, v5

    sub-int v8, v6, v7

    if-lt v6, v7, :cond_2

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    return v4

    :cond_2
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CALLBACK_NUMBER subparam encoding size error (remainingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", dataBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", paddingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    if-ltz p2, :cond_0

    mul-int v0, p2, p3

    add-int/2addr v0, p1

    array-length v1, p0

    if-le v0, v1, :cond_1

    :cond_0
    rem-int v0, p1, p3

    array-length v1, p0

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    div-int/2addr v1, p3

    if-ltz v1, :cond_2

    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " decode error: offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " numFields = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " data.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " maxNumFields = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v1

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    mul-int v1, p2, p3

    invoke-direct {v0, p0, p1, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " decode failed: offset out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_a

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    if-nez v2, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryToCmasMessageClass(I)I

    move-result v17

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    const-string v12, "UTC"

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>(Ljava/lang/String;)V

    move-object v15, v11

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v18, v9

    move/from16 v19, v10

    const/4 v4, 0x0

    :goto_0
    move v13, v4

    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    const/16 v5, 0x10

    const/4 v6, 0x7

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-lt v4, v5, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    packed-switch v4, :pswitch_data_0

    const/4 v11, 0x0

    const-string v6, "BearerData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skipping unsupported CMAS record type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v6, v5, 0x8

    invoke-virtual {v1, v6}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    move v4, v13

    goto/16 :goto_4

    :pswitch_0
    or-int/lit8 v6, v13, 0x8

    nop

    move v4, v6

    goto/16 :goto_2

    :pswitch_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v14, "BearerData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMAS RecordType(2) len : "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v5, v5, 0x8

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    shl-int/2addr v11, v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    or-int v3, v11, v14

    const-string v11, "BearerData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v6

    const-string v6, "CMAS Msg Id : "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, -0x10

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    const-string v6, "BearerData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v3

    const-string v3, "CMAS Alert Handling : "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, -0x8

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    const/16 v3, 0x60

    if-lt v6, v3, :cond_0

    add-int/lit16 v6, v6, 0x76c

    goto :goto_1

    :cond_0
    add-int/lit16 v6, v6, 0x7d0

    :goto_1
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    const-string v3, "BearerData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v11

    const-string v11, "CMAS Expires yy : "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mm : "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " dd : "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " h : "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " m : "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " s : "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v15

    move/from16 v19, v12

    move/from16 v20, v10

    move/from16 v21, v9

    move/from16 v22, v8

    move/from16 v23, v7

    move/from16 v24, v6

    invoke-virtual/range {v18 .. v24}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(IIIIII)V

    add-int/lit8 v5, v5, -0x30

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    sput v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    const-string v3, "BearerData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMAS Language : "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, -0x8

    or-int/lit8 v3, v13, 0x4

    nop

    move v4, v3

    move/from16 v18, v31

    move/from16 v19, v32

    const/16 v3, 0x8

    goto/16 :goto_2

    :pswitch_2
    const-string v3, "BearerData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CMAS RecordType(1) len : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    const-string v7, "BearerData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CMAS Category : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    const-string v8, "BearerData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CMAS RespType : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    const-string v10, "BearerData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CMAS Severity : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    const-string v11, "BearerData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMAS Urgency : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    const-string v11, "BearerData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMAS Certainty : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v11, v5, 0x8

    add-int/lit8 v11, v11, -0x1c

    invoke-virtual {v1, v11}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    or-int/lit8 v11, v13, 0x2

    nop

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v29, v9

    move/from16 v28, v10

    move v4, v11

    :goto_2
    const/4 v11, 0x0

    goto :goto_4

    :pswitch_3
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    invoke-virtual {v1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    iput v11, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    const-string v10, "BearerData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CMAS RecordType(0) len : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v10, :cond_1

    packed-switch v10, :pswitch_data_1

    packed-switch v10, :pswitch_data_2

    const/4 v3, 0x0

    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v7, "unsupported message encoding"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_4
    add-int/lit8 v6, v5, -0x1

    div-int/2addr v6, v8

    goto :goto_3

    :pswitch_5
    mul-int/lit8 v8, v5, 0x8

    sub-int/2addr v8, v7

    div-int/lit8 v6, v8, 0x7

    goto :goto_3

    :cond_1
    :pswitch_6
    add-int/lit8 v6, v5, -0x1

    nop

    :goto_3
    iput v6, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v8, v5, 0x8

    sub-int/2addr v8, v7

    invoke-virtual {v1, v8}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v7

    iput-object v7, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    or-int/lit8 v7, v13, 0x1

    nop

    move v4, v7

    :goto_4
    goto/16 :goto_0

    :cond_2
    const/4 v11, 0x0

    const-string v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMAS Message Body = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRecordType(0) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v13, 0x1

    if-ne v5, v10, :cond_3

    move v5, v10

    goto :goto_5

    :cond_3
    move v5, v11

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nisRecordType(1) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v13, 0x2

    if-ne v5, v8, :cond_4

    move v5, v10

    goto :goto_6

    :cond_4
    move v5, v11

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\nisRecordType(2) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v13, 0x4

    if-ne v5, v9, :cond_5

    move v11, v10

    nop

    :cond_5
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    if-ne v13, v3, :cond_6

    new-instance v3, Landroid/telephony/SmsCbCmasInfo;

    move-object v4, v3

    move/from16 v5, v17

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move/from16 v10, v29

    move v11, v13

    invoke-direct/range {v4 .. v11}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIIII)V

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    :goto_7
    move/from16 v22, v13

    move-object/from16 v20, v15

    goto/16 :goto_8

    :cond_6
    if-ne v13, v7, :cond_7

    new-instance v3, Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v15, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v8

    sget v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    move-object v4, v3

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move v11, v13

    invoke-direct/range {v4 .. v11}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIJII)V

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_7

    :cond_7
    if-ne v13, v6, :cond_8

    new-instance v3, Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v15, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v20

    sget v16, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    move-object v4, v3

    move/from16 v5, v17

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move/from16 v10, v29

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v22, v13

    move-wide/from16 v13, v20

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v22

    invoke-direct/range {v4 .. v16}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIIIIIJII)V

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_8

    :cond_8
    move/from16 v22, v13

    move-object/from16 v20, v15

    new-instance v3, Landroid/telephony/SmsCbCmasInfo;

    move-object v4, v3

    move/from16 v5, v17

    move/from16 v6, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move/from16 v10, v29

    invoke-direct/range {v4 .. v10}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    :goto_8
    return-void

    :cond_9
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported CMAE_protocol_version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "emergency CB with no CMAE_protocol_version"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x30

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    const/16 v2, 0x30

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x30

    const/4 v1, 0x1

    nop

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFERRED_DELIVERY_TIME_ABSOLUTE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1
.end method

.method private static decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFERRED_DELIVERY_TIME_RELATIVE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    return v1
.end method

.method private static decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x10

    const/4 v1, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/2addr v4, v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_DEPOSIT_INDEX decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1
.end method

.method private static decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISPLAY_MODE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    return v1
.end method

.method private static decodeDtmfSmsAddress([BI)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_5

    const/16 v2, 0xf

    div-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    rem-int/lit8 v4, v1, 0x2

    mul-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    ushr-int/2addr v3, v4

    and-int/2addr v2, v3

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    const/16 v4, 0x9

    if-gt v2, v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/16 v4, 0x30

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid SMS address DTMF code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static decodeGsmDcs([BIII)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    and-int/lit16 v0, p3, 0xc0

    if-nez v0, :cond_0

    shr-int/lit8 v0, p3, 0x2

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported user msgType encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported coding group ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported IS-91 message type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    const/16 v3, 0xe

    if-gt v1, v3, :cond_0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    if-lt v1, v2, :cond_0

    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    int-to-byte v4, v2

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    return-void

    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v4, "IS-91 voicemail status decoding failed"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const/4 v2, 0x6

    div-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    const/16 v4, 0xe

    if-gt v3, v4, :cond_1

    if-lt v1, v3, :cond_1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    sget-object v6, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    aget-char v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v4, "IS-91 short message decoding failed"

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const/4 v2, 0x6

    div-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    const/16 v4, 0xe

    if-gt v1, v4, :cond_3

    const/4 v4, 0x3

    if-lt v1, v4, :cond_3

    if-lt v1, v3, :cond_3

    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    if-lt v6, v2, :cond_0

    sget-object v6, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    invoke-virtual {v0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_1

    iput v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto :goto_1

    :cond_1
    const/16 v6, 0x21

    if-ne v8, v6, :cond_2

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    add-int/lit8 v7, v3, -0x3

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    nop

    return-void

    :cond_2
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IS-91 voicemail status decoding failed: illegal priority setting ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v2

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v4, "IS-91 voicemail status decoding failed"

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeKSC5601([BII)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    rem-int/lit8 v0, p1, 0x2

    add-int v1, p1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "EUC_KR"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EUC-KR decode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    sput v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LANGUAGE_INDICATOR decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    return v1
.end method

.method private static decodeLatin([BII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x18

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    add-int/lit8 v3, v3, -0x18

    const/4 v1, 0x1

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_1
    if-eqz v1, :cond_2

    if-lez v3, :cond_4

    :cond_2
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_IDENTIFIER decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    goto :goto_1

    :cond_3
    const-string v5, "failed"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1
.end method

.method private static decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x30

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    const/16 v2, 0x30

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x30

    const/4 v1, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_CENTER_TIME_STAMP decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1
.end method

.method private static decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_1

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_Sms3gpp2LgtNetwork"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaHexByteToInt(B)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    if-lez v3, :cond_4

    :cond_2
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NUMBER_OF_MESSAGES decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string/jumbo v5, "succeeded"

    goto :goto_1

    :cond_3
    const-string v5, "failed"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1
.end method

.method private static decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALERT_ON_MESSAGE_DELIVERY decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    return v1
.end method

.method private static decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_STATUS decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    return v1
.end method

.method private static decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIORITY_INDICATOR decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    return v1
.end method

.method private static decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIVACY_INDICATOR decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    return v1
.end method

.method private static decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_4

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v5

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_4
    if-eqz v1, :cond_5

    if-lez v3, :cond_7

    :cond_5
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REPLY_OPTION decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    const-string/jumbo v5, "succeeded"

    goto :goto_4

    :cond_6
    const-string v5, "failed"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1
.end method

.method private static decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/lit8 v2, v1, 0x8

    invoke-virtual {p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    :cond_0
    const-string v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESERVED bearer data subparameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_1
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (param bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    return v0

    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESERVED bearer data subparameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " had invalid SUBPARAM_LEN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static decodeSemServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const/16 v2, 0xd

    if-lt v1, v2, :cond_6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    mul-int/2addr v2, v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    add-int/lit8 v2, v2, -0x5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    if-lt v4, v2, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0x30

    const/4 v6, 0x0

    move v7, v2

    move v2, v6

    :goto_0
    const/16 v8, 0x30

    if-lt v7, v8, :cond_1

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    shl-int/2addr v9, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    or-int v17, v9, v10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    invoke-virtual {v0, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v15

    add-int/lit8 v7, v7, -0x30

    invoke-static {v3, v15}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getBitsForNumFields(II)I

    move-result v14

    if-lt v7, v14, :cond_0

    new-instance v9, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    move-object v13, v9

    iput v3, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v9, 0x1

    iput-boolean v9, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iput v15, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {v0, v14}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v9

    iput-object v9, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    sub-int/2addr v7, v14

    invoke-static {v13, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    iget-object v12, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    new-instance v20, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;

    move-object/from16 v9, v20

    move/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v21, v12

    move/from16 v12, v18

    move-object/from16 v22, v13

    move/from16 v13, v19

    move v1, v14

    move v14, v8

    move/from16 v23, v15

    move-object/from16 v15, v21

    invoke-direct/range {v9 .. v15}, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;-><init>(IIIIILjava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    nop

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v14

    move/from16 v23, v15

    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "category name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " bits in length, but there are only "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " bits available"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-eqz v2, :cond_2

    if-lez v7, :cond_4

    :cond_2
    const-string v1, "BearerData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SERVICE_CATEGORY_PROGRAM_DATA decode "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const-string/jumbo v8, "succeeded"

    goto :goto_1

    :cond_3
    const-string v8, "failed"

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (extra bits = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v0, v7}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    move-object/from16 v1, p0

    iput-object v4, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->semServiceCategoryProgramData:Ljava/util/ArrayList;

    return v2

    :cond_5
    move-object/from16 v1, p0

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bits available ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bits expected)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    move-object/from16 v1, p0

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bits available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v1

    const/16 v2, 0xd

    if-lt v1, v2, :cond_6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    mul-int/2addr v2, v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    add-int/lit8 v2, v2, -0x5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    if-lt v4, v2, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0x30

    const/4 v6, 0x0

    move v7, v2

    move v2, v6

    :goto_0
    const/16 v8, 0x30

    if-lt v7, v8, :cond_1

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    shl-int/2addr v9, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    or-int v17, v9, v10

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    invoke-virtual {v0, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v15

    add-int/lit8 v7, v7, -0x30

    invoke-static {v3, v15}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getBitsForNumFields(II)I

    move-result v14

    if-lt v7, v14, :cond_0

    new-instance v9, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    move-object v13, v9

    iput v3, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v9, 0x1

    iput-boolean v9, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iput v15, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {v0, v14}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v9

    iput-object v9, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    sub-int/2addr v7, v14

    invoke-static {v13, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    iget-object v12, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    new-instance v20, Landroid/telephony/cdma/CdmaSmsCbProgramData;

    move-object/from16 v9, v20

    move/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v21, v12

    move/from16 v12, v18

    move-object/from16 v22, v13

    move/from16 v13, v19

    move v1, v14

    move v14, v8

    move/from16 v23, v15

    move-object/from16 v15, v21

    invoke-direct/range {v9 .. v15}, Landroid/telephony/cdma/CdmaSmsCbProgramData;-><init>(IIIIILjava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    nop

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v14

    move/from16 v23, v15

    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "category name is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " bits in length, but there are only "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " bits available"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-eqz v2, :cond_2

    if-lez v7, :cond_4

    :cond_2
    const-string v1, "BearerData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SERVICE_CATEGORY_PROGRAM_DATA decode "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const-string/jumbo v8, "succeeded"

    goto :goto_1

    :cond_3
    const-string v8, "failed"

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (extra bits = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v0, v7}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    move-object/from16 v1, p0

    iput-object v4, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    return v2

    :cond_5
    move-object/from16 v1, p0

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bits available ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bits expected)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    move-object/from16 v1, p0

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bits available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeShiftJis([BII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    const-string v0, "Shift_JIS"

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v3, v3

    const-string v4, "US-ASCII"

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "invalid SMS address ASCII code"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDtmfSmsAddress([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static decodeUnknownSubParam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/4 v0, 0x1

    return v0
.end method

.method private static decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/2addr v1, v0

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x0

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    add-int/lit8 v2, v2, 0x8

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    add-int/2addr v2, v0

    sub-int v0, v1, v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    return v3
.end method

.method private static decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v0, v3

    new-array v3, v2, [B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v5, 0x1

    invoke-static {v4, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const v3, 0x11200b7

    if-eqz v2, :cond_6

    const/16 v4, 0x10

    if-eq v2, v4, :cond_4

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported user data encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SmsCml"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v4, 0xb84

    if-ne v2, v4, :cond_1

    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[pre_payload]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    sub-int/2addr v4, v0

    new-array v5, v4, [B

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {v3, v5, v1, v4}, Ljava/io/DataInputStream;->read([BII)I

    const-string v1, "BearerData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[post_payload]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "BearerData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_2
    const-string v4, "BearerData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeUserDataPayload: conversion from byte array to object failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v4, "BearerData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v6, "decodeUserDataPayload: conversion from byte array to object failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    nop

    :goto_2
    goto/16 :goto_8

    :goto_3
    nop

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeUserDataPayload: conversion from byte array to object failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BearerData"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_4
    throw v1

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[[ENCODING_GSM_DCS]] userData.msgType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_9

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_2

    goto :goto_6

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16_KDDI([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_6

    :pswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v3, v3, [B

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v5

    if-ge v4, v5, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_5

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v5, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_6

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_6

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    nop

    :goto_6
    goto/16 :goto_8

    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeShiftJis([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_8

    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_8

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsSupportKsc5601Usa"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeKSC5601([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_8

    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v3, v3, [B

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v5

    if-ge v4, v5, :cond_7

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_7

    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    :goto_7
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v5, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v2, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v1, v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    nop

    :cond_9
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCode:I

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_RESPONSE_CODE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    return v1
.end method

.method private static decodeUtf16([BII)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    rem-int/lit8 v0, p1, 0x2

    add-int v1, p1, v0

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr p2, v1

    invoke-static {}, Landroid/telephony/SmsMessage;->getCDMASmsReassembly()Z

    move-result v1

    if-nez v1, :cond_2

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p1

    sput v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    sget v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    sub-int/2addr v1, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-char v1, v1

    sput-char v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    sget-char v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    sget v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    or-int/2addr v1, v3

    int-to-char v1, v1

    sput-char v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    sget-char v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    const v3, 0xd83d

    const/4 v5, 0x0

    if-eq v1, v3, :cond_0

    sget-char v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    const v3, 0xd83c

    if-eq v1, v3, :cond_0

    sget-char v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    const v3, 0xd83e

    if-ne v1, v3, :cond_1

    :cond_0
    sget v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    const/16 v3, 0x8c

    if-ne v1, v3, :cond_1

    const-string v1, "BearerData"

    const-string v3, "emoji is broken in the end of segment"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v2, [B

    sput-object v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    sget-object v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    sget v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    sub-int/2addr v3, v2

    aget-byte v3, p0, v3

    aput-byte v3, v1, v5

    sget-object v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    sget v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    aput-byte v3, v1, v4

    sput p1, Lcom/android/internal/telephony/cdma/sms/BearerData;->mBodyOffset:I

    sput-boolean v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->mIsfourBytesUnicode:Z

    goto :goto_0

    :cond_1
    sput-boolean v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->mIsfourBytesUnicode:Z

    :cond_2
    :goto_0
    const-string/jumbo v1, "utf-16be"

    invoke-static {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static decodeUtf16_KDDI([BII)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    const-string/jumbo v2, "utf-16be"

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodeUtf8([BII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x30

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    const/16 v2, 0x30

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x30

    const/4 v1, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALIDITY_PERIOD_ABSOLUTE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1
.end method

.method private static decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/2addr v3, v2

    if-lt v3, v2, :cond_0

    add-int/lit8 v3, v3, -0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    :cond_0
    if-eqz v1, :cond_1

    if-lez v3, :cond_3

    :cond_1
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALIDITY_PERIOD_RELATIVE decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    const-string/jumbo v5, "succeeded"

    goto :goto_0

    :cond_2
    const-string v5, "failed"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    return v1
.end method

.method public static encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v1, :cond_2

    const/16 v1, 0xe

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v1, :cond_4

    :cond_3
    const/16 v1, 0xa

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v1, :cond_5

    const/16 v1, 0xb

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v1, :cond_8

    const/16 v1, 0xd

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_8
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v1, :cond_9

    const/16 v1, 0xf

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_9
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0, v3, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_b
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v1, :cond_c

    const/16 v1, 0x14

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    const/16 v1, 0x13

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsCdmaCopyToRuim"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgDeliveryTime:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "BearerData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BearerData encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "BearerData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BearerData encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    add-int v5, v3, v4

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    int-to-byte v6, v6

    const/4 v7, 0x0

    aput-byte v6, v5, v7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, p1

    invoke-static {p1, v7, v5, v2, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v0

    invoke-static {v0, v7, v2, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method private static encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v5, :cond_1

    if-eqz p1, :cond_0

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot ASCII encode ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {v0, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit ASCII encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_QmiCdmaGsm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v3, 0x8c

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x7

    array-length v6, p1

    add-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x8

    rem-int/lit8 v7, v6, 0x7

    if-eqz v7, :cond_0

    rsub-int/lit8 v7, v7, 0x7

    :cond_0
    add-int v8, v5, v6

    add-int/2addr v8, v7

    add-int/lit8 v9, v8, 0x7

    div-int/lit8 v9, v9, 0x8

    if-gt v9, v3, :cond_2

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    div-int/lit8 v1, v8, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v1, v9, 0x8

    sub-int/2addr v1, v8

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    new-array v1, v9, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :try_start_0
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-direct {v1, v9}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    if-eqz v7, :cond_1

    new-array v3, v4, [B

    invoke-virtual {v1, v7, v3}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    :cond_1
    invoke-virtual {v1, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    add-int/lit8 v11, v9, -0x1

    invoke-static {v3, v2, v10, v4, v11}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "7bit ASCII encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoded user data too large ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    array-length v6, p1

    add-int/2addr v6, v4

    array-length v7, v0

    add-int/2addr v7, v6

    if-gt v7, v3, :cond_4

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    add-int v1, v6, v5

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v1, v7, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, p1

    invoke-static {p1, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v0

    invoke-static {v0, v2, v1, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    return-void

    :cond_4
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoded user data too large ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encode7bitAsciiForAutoLogin(Ljava/lang/String;Z)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-direct {v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    const/4 v3, 0x4

    const/4 v4, 0x7

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v6, :cond_2

    if-eqz p1, :cond_1

    const/16 v5, 0x20

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot ASCII encode ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit ASCII encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x7

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v3

    const/16 v4, 0x9

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iget v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    invoke-static {p1, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method

.method private static encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    xor-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData$1;)V

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iget-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-static {v0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "7bit GSM encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    const/16 v1, 0x9

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v3, v5, :cond_0

    add-int/lit8 v1, v1, 0x7

    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v3, v6

    :goto_0
    goto :goto_1

    :cond_0
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/2addr v3, v4

    goto :goto_0

    :goto_1
    add-int/2addr v1, v3

    div-int/lit8 v2, v1, 0x8

    rem-int/lit8 v7, v1, 0x8

    const/4 v8, 0x0

    if-lez v7, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    move v7, v8

    :goto_2
    add-int/2addr v2, v7

    mul-int/lit8 v7, v2, 0x8

    sub-int/2addr v7, v1

    invoke-virtual {p1, v6, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v5, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v9, v5, :cond_2

    const/4 v5, 0x3

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v5, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_2
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v6, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    if-lez v7, :cond_3

    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_3
    return-void
.end method

.method private static encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    :goto_0
    return-void
.end method

.method private static encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    div-int/lit8 v2, v1, 0x8

    rem-int/lit8 v3, v1, 0x8

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v2, v3

    new-array v3, v2, [B

    nop

    :goto_1
    if-ge v4, v0, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x31

    if-lt v5, v7, :cond_1

    const/16 v7, 0x39

    if-gt v5, v7, :cond_1

    add-int/lit8 v6, v5, -0x30

    goto :goto_2

    :cond_1
    const/16 v7, 0x30

    if-ne v5, v7, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    :cond_2
    const/16 v7, 0x2a

    if-ne v5, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    :cond_3
    const/16 v7, 0x23

    if-ne v5, v7, :cond_4

    const/16 v6, 0xc

    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v3, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    return-object v7

    :cond_5
    return-object v3
.end method

.method private static encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {p0, v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported EMS user data encoding ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    :goto_0
    return-void
.end method

.method private static encodeKSC5601(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    :try_start_0
    const-string v0, "EUC_KR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EUC_KR encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    sget v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/4 v0, 0x3

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/2addr v2, v1

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    return-void
.end method

.method private static encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgDeliveryTime:Ljava/lang/String;

    const-string v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " delivery date "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x8

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xa

    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0xc

    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v11, "BearerData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "year "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " month "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " day ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "BearerData"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " hour ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " minute "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " second "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaIntToBcdByte(I)B

    move-result v11

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaIntToBcdByte(I)B

    move-result v12

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaIntToBcdByte(I)B

    move-result v13

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaIntToBcdByte(I)B

    move-result v14

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaIntToBcdByte(I)B

    move-result v15

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaIntToBcdByte(I)B

    move-result v6

    const-string v7, "BearerData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string/jumbo v2, "year "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " day ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BearerData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " hour ="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " minute "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " second "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v0, v1, v11}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    return-void
.end method

.method private static encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    return-void
.end method

.method private static encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/cdma/CdmaSmsCbProgramResults;

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategory()I

    move-result v5

    shr-int/lit8 v6, v5, 0x8

    invoke-virtual {p1, v3, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {p1, v3, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getLanguage()I

    move-result v6

    invoke-virtual {p1, v3, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategoryResult()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static encodeShiftJis(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shift-JIS encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    const/16 v3, 0x8c

    if-gt v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-ne v0, v3, :cond_1

    const-string v0, "BearerData"

    const-string v3, "calculate padding bits"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    mul-int/2addr v3, v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v5, v5, 0x7

    sub-int/2addr v3, v5

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    mul-int/2addr v0, v4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, 0xd

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v6, 0xa

    if-eq v5, v2, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v5, v6, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x8

    :cond_3
    div-int/lit8 v5, v3, 0x8

    rem-int/lit8 v7, v3, 0x8

    if-lez v7, :cond_4

    move v7, v2

    goto :goto_1

    :cond_4
    move v7, v1

    :goto_1
    add-int/2addr v5, v7

    mul-int/lit8 v7, v5, 0x8

    sub-int/2addr v7, v3

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v8, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v6, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v4, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v4, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    if-lez v7, :cond_7

    invoke-virtual {p1, v7, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_7
    return-void

    :cond_8
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoded user data too large ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v0, :cond_0

    const-string v0, "BearerData"

    const-string/jumbo v1, "user data with null payloadStr"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v0, v1, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v0, :cond_3

    const-string v0, "BearerData"

    const-string/jumbo v1, "user data with octet encoding but null payload"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "BearerData"

    const-string/jumbo v6, "non-octet user data with null payloadStr"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v6, 0x9

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v5, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeKSC5601(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_2

    :cond_a
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported user data encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v6, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v6, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeKSC5601(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    const-string v0, "BearerData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeKSC5601() payloadStr.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " payload length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->isAutoLogin:Z

    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAsciiForAutoLogin(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    :goto_0
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    :goto_2
    return-void
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    return-void
.end method

.method private static extractPagination(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v1

    if-nez v1, :cond_0

    const-string v0, "BearerData"

    const-string/jumbo v7, "there is no message body"

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move-object v7, v0

    :try_start_0
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v9

    const/16 v10, 0x29

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v1, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v9

    const/16 v10, 0x5d

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v1, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v9

    const/16 v10, 0x7d

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v1, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "BearerData"

    const-string/jumbo v10, "there is no pagination pattern maybe / or of "

    invoke-static {v0, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    nop

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eqz v7, :cond_5

    move-object v6, v1

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v0, v12

    if-ne v0, v8, :cond_4

    :try_start_1
    aget-object v0, v12, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    aget-object v0, v12, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v0

    const/4 v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v13, "BearerData"

    const-string/jumbo v14, "there is no pagination yet"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_4
    :goto_2
    goto/16 :goto_8

    :cond_5
    const-string v0, " of "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v0, v12

    if-lt v0, v8, :cond_6

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v0, v13

    if-lt v0, v10, :cond_6

    :try_start_2
    aget-object v0, v13, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    aget-object v0, v13, v8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    aget-object v0, v13, v11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v14, v13, v8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v0, v14

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v14, v0, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v14

    const/4 v5, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v14, "BearerData"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extractPagination : "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v10, "BearerData"

    const-string/jumbo v14, "there is no pagination yet"

    invoke-static {v10, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    nop

    :cond_6
    :goto_4
    if-nez v5, :cond_c

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v0, v10

    if-lt v0, v8, :cond_c

    const/4 v4, 0x0

    aget-object v0, v10, v9

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v13, v0

    :try_start_3
    aget-object v0, v10, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    move v0, v11

    :goto_5
    aget-char v14, v13, v0

    invoke-static {v14}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14

    if-eqz v14, :cond_b

    if-nez v0, :cond_7

    aget-char v14, v13, v0

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    move v4, v14

    goto :goto_6

    :cond_7
    if-ne v0, v9, :cond_8

    aget-char v14, v13, v11

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    aget-char v15, v13, v9

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    add-int v4, v14, v15

    goto :goto_6

    :cond_8
    if-ne v0, v8, :cond_9

    aget-char v14, v13, v11

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    aget-char v15, v13, v9

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v14, v15

    aget-char v15, v13, v8

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    add-int v4, v14, v15

    goto :goto_6

    :cond_9
    const/4 v14, 0x3

    if-ne v0, v14, :cond_a

    aget-char v14, v13, v11

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit16 v14, v14, 0x3e8

    aget-char v15, v13, v9

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    mul-int/lit8 v15, v15, 0x64

    add-int/2addr v14, v15

    aget-char v15, v13, v8

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v14, v15

    const/4 v15, 0x3

    aget-char v8, v13, v15

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v8

    add-int v4, v14, v8

    :cond_a
    :goto_6
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x2

    goto :goto_5

    :cond_b
    aget-object v8, v10, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    add-int/2addr v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v8

    const/4 v5, 0x1

    goto :goto_7

    :catch_3
    move-exception v0

    const-string v8, "BearerData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extractPagination : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    move-exception v0

    const-string v8, "BearerData"

    const-string/jumbo v14, "there is no pagination"

    invoke-static {v8, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    nop

    :cond_c
    :goto_8
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v8, v0

    sput v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    const-string v8, "BearerData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "spr segment length : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v12, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_f

    sget v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    if-le v8, v9, :cond_f

    sget v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    const/4 v10, 0x2

    sub-int/2addr v8, v10

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-char v8, v8

    sput-char v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    sget-char v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    sget v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    sub-int/2addr v10, v9

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    int-to-char v10, v10

    or-int/2addr v8, v10

    int-to-char v8, v8

    sput-char v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    sget-char v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    const v10, 0xd83d

    if-eq v8, v10, :cond_e

    sget-char v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    const v10, 0xd83c

    if-eq v8, v10, :cond_e

    sget-char v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->compChar:C

    const v10, 0xd83e

    if-ne v8, v10, :cond_d

    goto :goto_9

    :cond_d
    sput-boolean v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->mIsfourBytesUnicode:Z

    goto :goto_a

    :cond_e
    :goto_9
    const-string v8, "BearerData"

    const-string/jumbo v10, "spr emoji is broken in the end of segment"

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    new-array v10, v8, [B

    sput-object v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    sget-object v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    sget v12, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    sub-int/2addr v12, v8

    aget-byte v8, v0, v12

    aput-byte v8, v10, v11

    sget-object v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    sget v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->userLength:I

    sub-int/2addr v10, v9

    aget-byte v10, v0, v10

    aput-byte v10, v8, v9

    sput-boolean v9, Lcom/android/internal/telephony/cdma/sms/BearerData;->mIsfourBytesUnicode:Z

    sput v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->mBodyOffset:I

    :cond_f
    :goto_a
    if-nez v5, :cond_10

    const-string v8, "BearerData"

    const-string v9, "No pagination found"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const-string v8, "BearerData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "segmented number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "BearerData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "total number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x270f

    if-gez v3, :cond_11

    if-gt v3, v8, :cond_12

    :cond_11
    if-gez v4, :cond_13

    if-le v3, v8, :cond_13

    :cond_12
    const-string v8, "BearerData"

    const-string v9, "Its not segmented sms. "

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    if-eqz v3, :cond_14

    if-eqz v4, :cond_14

    if-gt v3, v4, :cond_14

    if-gt v4, v8, :cond_14

    const-string v8, "BearerData"

    const-string v9, "It\'s segmented sms"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    iput v3, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput v4, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    new-instance v9, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v9}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v9, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v8, v9, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_b

    :cond_14
    const-string v8, "BearerData"

    const-string v9, "It\'s not segmented sms."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :catch_5
    move-exception v0

    const-string v8, "BearerData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extractPagination : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getBitsForNumFields(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported message encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    mul-int/lit8 v0, p1, 0x10

    return v0

    :pswitch_1
    mul-int/lit8 v0, p1, 0x7

    return v0

    :cond_0
    :pswitch_2
    mul-int/lit8 v0, p1, 0x8

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getLanguageCodeForValue(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "he"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "zh"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "ko"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "ja"

    return-object v0

    :pswitch_4
    const-string v0, "es"

    return-object v0

    :pswitch_5
    const-string v0, "fr"

    return-object v0

    :pswitch_6
    const-string v0, "en"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isCmasAlertCategory(I)Z
    .locals 1

    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x10ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static serviceCategoryToCmasMessageClass(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x4

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_4
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguageCodeForValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BearerData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "unset"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privacy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "unset"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "unset"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", displayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_3
    const-string/jumbo v2, "unset"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :cond_4
    const-string/jumbo v2, "unset"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", errorClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_5
    const-string/jumbo v2, "unset"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_6

    :cond_6
    const-string/jumbo v2, "unset"

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgCenterTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    goto :goto_7

    :cond_7
    const-string/jumbo v2, "unset"

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    goto :goto_8

    :cond_8
    const-string/jumbo v2, "unset"

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :cond_9
    const-string/jumbo v2, "unset"

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    goto :goto_a

    :cond_a
    const-string/jumbo v2, "unset"

    :goto_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_b

    :cond_b
    const-string/jumbo v2, "unset"

    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deliveryAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", readAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", reportReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", callbackNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BearerData"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", depositIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasUserDataHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
