.class final Lorg/acra/CrashReportFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public final getCrashReportFiles()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 46
    iget-object v0, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-array v0, v5, [Ljava/lang/String;

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-array v0, v5, [Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_2
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Looking for error files in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Lorg/acra/CrashReportFinder$1;

    invoke-direct {v1, p0}, Lorg/acra/CrashReportFinder$1;-><init>(Lorg/acra/CrashReportFinder;)V

    .line 65
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    new-array v0, v5, [Ljava/lang/String;

    goto :goto_0
.end method
