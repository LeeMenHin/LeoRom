.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldAp_temp:I

.field oldBat_temp:I

.field oldChargeMAh:I

.field oldChg_temp:I

.field oldCurrent:I

.field oldHealth:I

.field oldLevel:I

.field oldPa_temp:I

.field oldPlug:I

.field oldPst_temp:I

.field oldSecCurrentEvent:I

.field oldSecEvent:I

.field oldSecOnline:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldTemp:I

.field oldTx_share:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTx_share:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    return-void
.end method

.method private printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x9

    const/16 v10, 0x2c

    if-nez p4, :cond_0

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    const/16 v5, 0x13

    invoke-static {v3, v4, v2, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v3, v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    :goto_1
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    if-eqz p4, :cond_2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "START\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    goto/16 :goto_2a

    :cond_3
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x5

    const/4 v6, 0x7

    if-eq v3, v5, :cond_56

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v6, :cond_4

    goto/16 :goto_29

    :cond_4
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v5, 0x8

    if-ne v3, v5, :cond_6

    if-eqz p4, :cond_5

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "SHUTDOWN\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2a

    :cond_6
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x6

    if-ne v3, v5, :cond_8

    if-eqz p4, :cond_7

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v3, "*OVERFLOW*\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2a

    :cond_8
    if-nez p4, :cond_13

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v5, 0xa

    if-ge v3, v5, :cond_9

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v5, 0x64

    if-ge v3, v5, :cond_a

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_2
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_14

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez v3, :cond_b

    goto :goto_3

    :cond_b
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v5, 0x10

    if-ge v3, v5, :cond_c

    const-string v3, "0000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v5, 0x100

    if-ge v3, v5, :cond_d

    const-string v3, "000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v5, 0x1000

    if-ge v3, v5, :cond_e

    const-string v3, "00000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x10000

    if-ge v3, v5, :cond_f

    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_f
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x100000

    if-ge v3, v5, :cond_10

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_10
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x1000000

    if-ge v3, v5, :cond_11

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_11
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x10000000

    if-ge v3, v5, :cond_12

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_3
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_13
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v3, v5, :cond_14

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    const-string v3, ",Bl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_14
    :goto_4
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v3, v5, :cond_1b

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eqz p4, :cond_15

    const-string v3, ",Bs="

    goto :goto_5

    :cond_15
    const-string v3, " status="

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v3, :pswitch_data_0

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_0
    if-eqz p4, :cond_16

    const-string v3, "f"

    goto :goto_6

    :cond_16
    const-string v3, "full"

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_1
    if-eqz p4, :cond_17

    const-string/jumbo v3, "n"

    goto :goto_7

    :cond_17
    const-string/jumbo v3, "not-charging"

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_2
    if-eqz p4, :cond_18

    const-string v3, "d"

    goto :goto_8

    :cond_18
    const-string v3, "discharging"

    :goto_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_3
    if-eqz p4, :cond_19

    const-string v3, "c"

    goto :goto_9

    :cond_19
    const-string v3, "charging"

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_4
    if-eqz p4, :cond_1a

    const-string v3, "?"

    goto :goto_a

    :cond_1a
    const-string/jumbo v3, "unknown"

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_1b
    :goto_b
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v3, v5, :cond_26

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    if-eqz p4, :cond_1c

    const-string v3, ",Bh="

    goto :goto_c

    :cond_1c
    const-string v3, " health="

    :goto_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v3, :pswitch_data_1

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    :pswitch_5
    if-eqz p4, :cond_1d

    const-string/jumbo v3, "u"

    goto :goto_d

    :cond_1d
    const-string/jumbo v3, "under-voltage"

    :goto_d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    :pswitch_6
    if-eqz p4, :cond_1e

    const-string/jumbo v3, "l"

    goto :goto_e

    :cond_1e
    const-string/jumbo v3, "over-limit"

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_7
    if-eqz p4, :cond_1f

    const-string v3, "c"

    goto :goto_f

    :cond_1f
    const-string v3, "cold"

    :goto_f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_8
    if-eqz p4, :cond_20

    const-string v3, "f"

    goto :goto_10

    :cond_20
    const-string v3, "failure"

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_9
    if-eqz p4, :cond_21

    const-string/jumbo v3, "v"

    goto :goto_11

    :cond_21
    const-string/jumbo v3, "over-voltage"

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_a
    if-eqz p4, :cond_22

    const-string v3, "d"

    goto :goto_12

    :cond_22
    const-string v3, "dead"

    :goto_12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_b
    if-eqz p4, :cond_23

    const-string/jumbo v3, "h"

    goto :goto_13

    :cond_23
    const-string/jumbo v3, "overheat"

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_c
    if-eqz p4, :cond_24

    const-string v3, "g"

    goto :goto_14

    :cond_24
    const-string/jumbo v3, "good"

    :goto_14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :pswitch_d
    if-eqz p4, :cond_25

    const-string v3, "?"

    goto :goto_15

    :cond_25
    const-string/jumbo v3, "unknown"

    :goto_15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_26
    :goto_16
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v3, v5, :cond_2d

    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz p4, :cond_27

    const-string v3, ",Bp="

    goto :goto_17

    :cond_27
    const-string v3, " plug="

    :goto_17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eq v3, v4, :cond_2b

    packed-switch v3, :pswitch_data_2

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1c

    :pswitch_e
    if-eqz p4, :cond_28

    const-string/jumbo v3, "u"

    goto :goto_18

    :cond_28
    const-string/jumbo v3, "usb"

    :goto_18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :pswitch_f
    if-eqz p4, :cond_29

    const-string v3, "a"

    goto :goto_19

    :cond_29
    const-string v3, "ac"

    :goto_19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :pswitch_10
    if-eqz p4, :cond_2a

    const-string/jumbo v3, "n"

    goto :goto_1a

    :cond_2a
    const-string/jumbo v3, "none"

    :goto_1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_2b
    if-eqz p4, :cond_2c

    const-string/jumbo v3, "w"

    goto :goto_1b

    :cond_2c
    const-string/jumbo v3, "wireless"

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_2d
    :goto_1c
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v3, v4, :cond_2f

    iget-short v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    if-eqz p4, :cond_2e

    const-string v3, ",Bt="

    goto :goto_1d

    :cond_2e
    const-string v3, " temp="

    :goto_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2f
    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v4, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v3, v4, :cond_31

    iget-char v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    if-eqz p4, :cond_30

    const-string v3, ",Bv="

    goto :goto_1e

    :cond_30
    const-string v3, " volt="

    :goto_1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_31
    if-nez p4, :cond_38

    const/4 v3, 0x0

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iget-short v5, v1, Landroid/os/BatteryStats$HistoryItem;->current:S

    if-eq v4, v5, :cond_32

    iget-short v4, v1, Landroid/os/BatteryStats$HistoryItem;->current:S

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    const/4 v3, 0x1

    :cond_32
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    if-eq v4, v5, :cond_33

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->ap_temp:B

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    const/4 v3, 0x1

    :cond_33
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    if-eq v4, v5, :cond_34

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->pst_temp:B

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    const/4 v3, 0x1

    :cond_34
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    if-eq v4, v5, :cond_35

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->bat_temp:B

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    const/4 v3, 0x1

    :cond_35
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    if-eq v4, v5, :cond_36

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->chg_temp:B

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    const/4 v3, 0x1

    :cond_36
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    if-eq v4, v5, :cond_37

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->pa_temp:B

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    const/4 v3, 0x1

    :cond_37
    if-eqz v3, :cond_38

    const-string v4, " current="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ap_temp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pst_temp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bat_temp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " chg_temp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pa_temp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_38
    const/4 v11, 0x1

    if-nez p4, :cond_3b

    const/4 v3, 0x0

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTx_share:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->tx_share:B

    if-eq v4, v5, :cond_39

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->tx_share:B

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTx_share:I

    const/4 v3, 0x1

    :cond_39
    if-eqz v3, :cond_3b

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldTx_share:I

    if-ne v4, v11, :cond_3a

    const-string v4, " +"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_3a
    const-string v4, " -"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1f
    const-string/jumbo v4, "tx_share"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    if-nez p4, :cond_3f

    const/4 v3, 0x0

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    if-eq v4, v5, :cond_3c

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    const/4 v3, 0x1

    :cond_3c
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iget-byte v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    if-eq v4, v5, :cond_3d

    iget-byte v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecOnline:B

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    const/4 v3, 0x1

    :cond_3d
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    if-eq v4, v5, :cond_3e

    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->batterySecCurrentEvent:I

    iput v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    const/4 v3, 0x1

    :cond_3e
    if-eqz v3, :cond_3f

    const-string v4, " misc_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " online="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " current_event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3f
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    div-int/lit16 v8, v3, 0x3e8

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v3, v8, :cond_41

    iput v8, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eqz p4, :cond_40

    const-string v3, ",Bcc="

    goto :goto_20

    :cond_40
    const-string v3, " charge="

    :goto_20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_41
    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v12, p4, 0x1

    move-object v3, v2

    move v13, v8

    move v8, v12

    invoke-static/range {v3 .. v8}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    iget v4, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v5, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v6, 0x0

    sget-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v8, p4, 0x1

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v3, :cond_43

    if-eqz p4, :cond_42

    const-string v3, ",wr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_42
    const-string v3, " wake_reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    :goto_21
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v3, :cond_4b

    if-eqz p4, :cond_44

    const-string v3, ","

    goto :goto_22

    :cond_44
    const-string v3, " "

    :goto_22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_45

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_45
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_46

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    :goto_23
    if-eqz p4, :cond_47

    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    goto :goto_24

    :cond_47
    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    :goto_24
    iget v4, v1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v5, -0xc001

    and-int/2addr v4, v5

    if-ltz v4, :cond_48

    array-length v5, v3

    if-ge v4, v5, :cond_48

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_48
    if-eqz p4, :cond_49

    const-string v5, "Ev"

    goto :goto_25

    :cond_49
    const-string v5, "event"

    :goto_25
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_26
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4a

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v5, v5, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_4a
    sget-object v5, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v5, v5, v4

    iget-object v6, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v6, v6, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v5, v6}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    :goto_27
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v3, :cond_55

    if-nez p4, :cond_50

    const-string v3, "                 Details: cpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "u+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_4e

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_4c

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    :cond_4c
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_4d

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    :cond_4d
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4e
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "                          /proc/stat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " usr, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sys, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " io, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " irq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sirq, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " idle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int/2addr v3, v4

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int/2addr v4, v3

    if-lez v4, :cond_4f

    const-string v5, " ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    const-string v6, "%.1f%%"

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    mul-int/lit8 v7, v4, 0xa

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    const-string v5, ", PlatformIdleStat "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", SubsystemPowerState "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_28

    :cond_50
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",0,Dcpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v3, :cond_52

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v3, :cond_51

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    :cond_51
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v3, :cond_52

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v4, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v4, v4, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v5, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v5, v5, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    :cond_52
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",0,Dpst="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    if-eqz v3, :cond_53

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v3, :cond_53

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_53
    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v3, :cond_54

    iget-object v3, v1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    :goto_28
    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v3, v1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v3, v0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    goto :goto_2a

    :cond_56
    :goto_29
    if-eqz p4, :cond_57

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    iget-byte v3, v1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v6, :cond_58

    const-string v3, "RESET:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    :cond_58
    const-string v3, "TIME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_59

    iget-wide v3, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_59
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v4, v1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method private printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V
    .locals 1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V
    .locals 1

    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-wide v5, 0x20900000006L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldCurrent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldAp_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPst_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldBat_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChg_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPa_temp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTx_share:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecOnline:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldSecCurrentEvent:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    return-void
.end method
