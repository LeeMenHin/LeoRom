.class Landroid/content/pm/AMSLogger$AMSHandler;
.super Ljava/util/logging/Handler;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AMSLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AMSHandler"
.end annotation


# instance fields
.field fileOutputStream:Ljava/io/FileOutputStream;

.field maxSize:J

.field newLogFile:Ljava/lang/String;

.field oldLogFile:Ljava/lang/String;

.field printWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Landroid/content/pm/AMSLogger;


# direct methods
.method public constructor <init>(Landroid/content/pm/AMSLogger;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->this$0:Landroid/content/pm/AMSLogger;

    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    const/4 p1, 0x0

    iput-object p2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    iput-wide p4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->maxSize:J

    invoke-direct {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    return-void
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_4

    :catch_0
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    goto :goto_3

    :goto_2
    nop

    invoke-static {}, Landroid/content/pm/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Couldn\'t close FileInputStream"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_2
    :goto_3
    nop

    :goto_4
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_6

    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v1, 0x0

    goto :goto_7

    :goto_6
    nop

    invoke-static {}, Landroid/content/pm/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Couldn\'t close FileInputStream"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_4
    :goto_7
    nop

    :goto_8
    return-void
.end method

.method private getPrintWriter()Ljava/io/PrintWriter;
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/content/pm/AMSLogger$AMSHandler;->maxSize:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/PrintWriter;

    iget-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Landroid/content/pm/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPrintWriter Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/content/pm/AMSLogger$AMSHandler;->copy(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->oldLogFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v3, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    iput-object v4, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-static {}, Landroid/content/pm/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPrintWriter1 Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_4

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->newLogFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {}, Landroid/content/pm/AMSLogger;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrintWriter2 Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    iget-object v1, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/pm/AMSLogger$AMSHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->getPrintWriter()Ljava/io/PrintWriter;

    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/AMSLogger$AMSHandler;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/AMSLogger$AMSHandler;->flush()V

    :cond_1
    return-void
.end method
