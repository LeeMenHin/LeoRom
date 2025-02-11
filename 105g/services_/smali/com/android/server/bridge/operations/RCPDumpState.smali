.class public Lcom/android/server/bridge/operations/RCPDumpState;
.super Ljava/lang/Object;
.source "RCPDumpState.java"


# static fields
.field private static final CONTACT_ACCOUNT_TYPE_KNOX:Ljava/lang/String; = "vnd.sec.contact.phone_knox"

.field private static final CONTACT_ACCOUNT_TYPE_KNOX2:Ljava/lang/String; = "vnd.sec.contact.phone_knox2"

.field private static final CONTACT_ACCOUNT_TYPE_KNOX3:Ljava/lang/String; = "vnd.sec.contact.phone_knox3"

.field private static final CONTACT_ACCOUNT_TYPE_PERSONAL:Ljava/lang/String; = "vnd.sec.contact.phone_personal"

.field private static final CONTACT_ACCOUNT_TYPE_SECUREFOLDER:Ljava/lang/String; = "vnd.sec.contact.phone_knox_securefolder"

.field private static final EVENT_ACCOUNT_NAME:Ljava/lang/String; = "calendar_personal"

.field private static final PROVIDER_CALENDNAR:Ljava/lang/String; = "Calendar"

.field private static final PROVIDER_CONTACT:Ljava/lang/String; = "Contact"

.field private static final TABLE_EVENT:Ljava/lang/String; = "Event"

.field private static final TABLE_GROUPS:Ljava/lang/String; = "Group"

.field private static final TABLE_RAW_CONTACT:Ljava/lang/String; = "Raw_Contact"

.field private static final TABLE_TASK:Ljava/lang/String; = "Task"

.field private static final TASK_ACCOUNT_NAME:Ljava/lang/String; = "task_personal_"

.field private static mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;


# instance fields
.field private final TAG:Ljava/lang/String;

.field mContainerUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mOwnerUri:Landroid/net/Uri;

.field mQueryUri:Landroid/net/Uri;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private dumpStateEvents(Ljava/io/PrintWriter;II)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateEvents , mSourceId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DestinationId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v6, "original_id ASC, _id ASC"

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACCOUNT_NAME NOT LIKE ? AND DELETED=? "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->get_exCalendarId(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "calendar_personal%"

    const-string v5, "0"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v13

    if-nez v3, :cond_1

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_1
    iget-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v14, v6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateEvents ,No of Original Events from Source "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Source Events ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v5, v12

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v12, v5

    goto/16 :goto_b

    :catch_1
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v12, v5

    :cond_4
    :goto_3
    :try_start_3
    const-string v15, "ACCOUNT_NAME = ? AND DELETED=? "
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calendar_personal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v5

    const/4 v5, 0x1

    const-string v8, "0"

    aput-object v8, v0, v5

    move-object/from16 v16, v0

    if-nez v4, :cond_5

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_4

    :cond_5
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_4
    iget-object v12, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v14, v11

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateEvents ,No of Synced Events to Destination"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Destination Events ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v12, v15

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v12, v15

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v15, v12

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_6
    :try_start_6
    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "Calendar"

    const-string v5, "Event"

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateEvents ,No of Events records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_9
    if-eqz v7, :cond_a

    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v7, :cond_a

    goto :goto_7

    :cond_a
    :goto_8
    return-void

    :goto_9
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :goto_a
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :goto_b
    if-eqz v7, :cond_d

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
.end method

.method private dumpStateGroups(Ljava/io/PrintWriter;II)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateGroups , mSourceId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DestinationId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v12

    const-string v7, "_id ASC"

    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_0
    :try_start_0
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?,?)  AND deleted=?"

    move-object v5, v9

    const-string/jumbo v13, "vnd.sec.contact.phone_personal"

    const-string/jumbo v14, "vnd.sec.contact.phone_knox%"

    const-string v15, "1"

    const-string v16, "2"

    const-string v17, "3"

    const-string v18, "4"

    const-string v19, "0"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    goto :goto_1

    :cond_1
    const-string v9, "account_type<>? AND account_type NOT LIKE ? AND _id NOT IN (?,?,?)  AND deleted=?"

    move-object v5, v9

    const-string/jumbo v13, "vnd.sec.contact.phone_personal"

    const-string/jumbo v14, "vnd.sec.contact.phone_knox%"

    const-string v15, "1"

    const-string v16, "2"

    const-string v17, "3"

    const-string v18, "0"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    :goto_1
    if-nez v3, :cond_2

    iget-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_2

    :cond_2
    iget-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_2
    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v8, v9

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dumpStateGroups ,No of Original Groups from Source "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "  is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "Source Group ID\'s : "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v8, :cond_4

    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    :try_start_2
    const-string v16, "account_type= ?  AND deleted=?"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v0, 0x2

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->getContactAccountType(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v5

    const/4 v5, 0x1

    const-string v9, "0"

    aput-object v9, v0, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v17, v0

    if-nez v4, :cond_5

    :try_start_4
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_7

    :cond_5
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_5
    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v14, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v15, v12

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateGroups ,No of Synced Groups to Destination "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Destination Group ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v5, v16

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v16, v5

    :goto_6
    move-object/from16 v17, v6

    goto :goto_c

    :catch_3
    move-exception v0

    :goto_7
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :cond_8
    :goto_8
    :try_start_6
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "Contact"

    const-string v6, "Group"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateGroups ,No of Group records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_9
    if-eqz v8, :cond_a

    :goto_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_4
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v8, :cond_a

    goto :goto_9

    :cond_a
    :goto_a
    return-void

    :goto_b
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :goto_c
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :goto_d
    if-eqz v8, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
.end method

.method private dumpStateRawContacts(Ljava/io/PrintWriter;II)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateRawContacts , mSourceId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DestinationId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v12

    const-string v7, "_id ASC"

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_0
    :try_start_0
    const-string v13, "account_type<>? AND account_type NOT LIKE ? AND deleted=?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string/jumbo v0, "vnd.sec.contact.phone_personal"

    const-string/jumbo v5, "vnd.sec.contact.phone_knox%"

    const-string v9, "0"

    filled-new-array {v0, v5, v9}, [Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    :try_start_2
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object v5, v13

    move-object v6, v14

    goto :goto_3

    :cond_1
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_1
    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v15, v7

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateRawContacts ,No of Original Raw_Contacts from Source "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Source Raw_Contacts ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v5, v13

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v13, v5

    :goto_2
    move-object v14, v6

    goto/16 :goto_d

    :catch_2
    move-exception v0

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v13, v5

    move-object v14, v6

    :cond_4
    :goto_4
    :try_start_4
    const-string v16, "account_type= ? AND deleted=?"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/4 v0, 0x2

    :try_start_5
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->getContactAccountType(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v0, v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v17, v0

    if-nez v4, :cond_5

    :try_start_6
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_5

    :catchall_3
    move-exception v0

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    goto :goto_7

    :cond_5
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_5
    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v14, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v15, v12

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateRawContacts ,No of Synced Raw_Contacts to Destination "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Destination Raw_Contacts ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_6
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object/from16 v13, v16

    move-object/from16 v14, v17

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v13, v16

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v16, v13

    :goto_6
    move-object/from16 v17, v14

    goto :goto_c

    :catch_5
    move-exception v0

    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_8
    :try_start_8
    iget-object v15, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "Contact"

    const-string v5, "Raw_Contact"

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateRawContacts ,No of Raw_Contacts records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v8}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :cond_9
    if-eqz v8, :cond_a

    :goto_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_6
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v8, :cond_a

    goto :goto_9

    :cond_a
    :goto_a
    return-void

    :goto_b
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :goto_c
    if-eqz v8, :cond_c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :goto_d
    if-eqz v8, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
.end method

.method private dumpStateTasks(Ljava/io/PrintWriter;II)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateTasks , mSourceId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", DestinationId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    const-string v6, "_id ASC"

    const-string v0, "content://com.android.calendar/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v3}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v4}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    :goto_0
    :try_start_0
    const-string v12, "_sync_account NOT LIKE ? AND DELETED=?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v0, "task_personal_%"

    const-string v5, "0"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v13

    if-nez v3, :cond_1

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_1
    iget-object v9, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v10, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v14, v6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateTasks ,No of Original Tasks from Source "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Source Tasks ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v5, v12

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v12, v5

    goto/16 :goto_b

    :catch_1
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v12, v5

    :cond_4
    :goto_3
    :try_start_3
    const-string v15, "_sync_account = ? AND DELETED=?"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "task_personal_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v5

    const/4 v5, 0x1

    const-string v8, "0"

    aput-object v8, v0, v5

    move-object/from16 v16, v0

    if-nez v4, :cond_5

    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mOwnerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_4

    :cond_5
    iget-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContainerUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_4
    iget-object v12, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    move-object v14, v11

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateTasks ,No of Synced Tasks to Destination "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  is : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Destination Tasks ID\'s : "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v12, v15

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v12, v15

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v15, v12

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_6
    :try_start_6
    iget-object v13, v1, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "Calendar"

    const-string v5, "Task"

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/bridge/operations/RCPDumpState;->getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dumpStateTasks ,No of tasks records in RCP local db  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "RCP local db (SourceId:DestinationId) :  "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/android/server/bridge/operations/RCPDumpState;->printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_9
    if-eqz v7, :cond_a

    :goto_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v7, :cond_a

    goto :goto_7

    :cond_a
    :goto_8
    return-void

    :goto_9
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :goto_a
    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :goto_b
    if-eqz v7, :cond_d

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
.end method

.method private getContactAccountType(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "vnd.sec.contact.phone_personal"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "vnd.sec.contact.phone_knox"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "vnd.sec.contact.phone_knox2"

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, "vnd.sec.contact.phone_knox3"

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "vnd.sec.contact.phone_knox_securefolder"

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/io/PrintWriter;)Lcom/android/server/bridge/operations/RCPDumpState;
    .locals 1

    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/RCPDumpState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    :cond_0
    sget-object v0, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    return-object v0
.end method

.method private getRCPDumpStateProviderUri(IILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, p2

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "com.samsung.knox.securefolder.rcpcomponents.sync.rcpdumpstateprovider"

    goto :goto_1

    :cond_1
    const-string v1, "com.samsung.android.knox.containeragent.rcpcomponents.sync.rcpdumpstateprovider"

    :goto_1
    const-string v4, "Contact"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Group"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p2, :cond_2

    const-string/jumbo v2, "ownergroup"

    goto :goto_2

    :cond_2
    const-string v2, "containergroup"

    goto :goto_2

    :cond_3
    const-string v4, "Raw_Contact"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez p2, :cond_4

    const-string/jumbo v2, "ownerrawcontact"

    goto :goto_2

    :cond_4
    const-string v2, "containerrawcontact"

    goto :goto_2

    :cond_5
    const-string v4, "Calendar"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "Event"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p2, :cond_6

    const-string/jumbo v2, "ownerevent"

    goto :goto_2

    :cond_6
    const-string v2, "containerevent"

    goto :goto_2

    :cond_7
    const-string v4, "Task"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez p2, :cond_8

    const-string/jumbo v2, "ownertask"

    goto :goto_2

    :cond_8
    const-string v2, "containertask"

    :cond_9
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private get_exCalendarId(I)Ljava/lang/String;
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2, p1}, Lcom/android/server/bridge/operations/RCPDumpState;->insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    :goto_0
    :try_start_0
    const-string/jumbo v6, "name IS NULL OR name NOT IN(select name from Calendars where account_type is \'LOCAL\' AND account_name is \'local.samsungholiday\')"

    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mQueryUri:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AND calendar_id IN ("

    move-object v0, v2

    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " id count fetched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :cond_3
    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " final calendar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method private insertUserInfoToUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private printIDs(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .locals 1

    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printRCPLoaclDB(Ljava/io/PrintWriter;Landroid/database/Cursor;)V
    .locals 2

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "  %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "operation"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "%25s"

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "start_time"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "%25s"

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "finish_time"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v2, "  %s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "result"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method


# virtual methods
.method public dumpBackupAndRestoreHistory(Ljava/io/PrintWriter;I)V
    .locals 8

    const-string v0, "com.samsung.knox.securefolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dumpBackupAndRestoreHistory , userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bnr_logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "timeStamp: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "timestamp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "text: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "text"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public dumpStateCalendar(Ljava/io/PrintWriter;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateEvents(Ljava/io/PrintWriter;II)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateTasks(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public dumpStateContact(Ljava/io/PrintWriter;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateGroups(Ljava/io/PrintWriter;II)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateRawContacts(Ljava/io/PrintWriter;II)V

    return-void
.end method

.method public dumpStateContainerSyncHistory(Ljava/io/PrintWriter;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.samsung.knox.securefolder.rcpcomponents.sync.rcpdumpstateprovider"

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.knox.containeragent.rcpcomponents.sync.rcpdumpstateprovider"

    :goto_0
    const-string v1, "Contact import history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "/container_contact_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "Contact export history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "/owner_contact_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "Calendar import history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "/container_calendar_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "Calendar export history:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "/owner_calendar_sync_history/"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->printSyncHistory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public dumpStateFileOpsTable(Ljava/io/PrintWriter;I)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.samsung.knox.securefolder.rcpcomponents.move.provider.knoxcontentmgrdbprovider"

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.knox.containeragent.rcpcomponents.move.provider.knoxcontentmgrdbprovider"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string/jumbo v3, "timeStamp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "operation"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " ret:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "resultCode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " srcUri:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "srcUri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " destUri:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "destUri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " src:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "source"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " dest:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "destination"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method
