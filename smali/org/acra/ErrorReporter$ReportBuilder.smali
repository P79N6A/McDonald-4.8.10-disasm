.class public final Lorg/acra/ErrorReporter$ReportBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReportBuilder"
.end annotation


# instance fields
.field private mCustomData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEndsApplication:Z

.field private mException:Ljava/lang/Throwable;

.field private mForceSilent:Z

.field private mMessage:Ljava/lang/String;

.field private mUncaughtExceptionThread:Ljava/lang/Thread;

.field final synthetic this$0:Lorg/acra/ErrorReporter;


# direct methods
.method public constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1031
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->this$0:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mForceSilent:Z

    .line 1039
    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mEndsApplication:Z

    return-void
.end method

.method static synthetic access$100(Lorg/acra/ErrorReporter$ReportBuilder;Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1031
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->uncaughtExceptionThread(Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/acra/ErrorReporter$ReportBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1031
    iget-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mForceSilent:Z

    return v0
.end method

.method static synthetic access$500(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1031
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1031
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mException:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$700(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1031
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1031
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mUncaughtExceptionThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1031
    iget-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mEndsApplication:Z

    return v0
.end method

.method private uncaughtExceptionThread(Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 1059
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mUncaughtExceptionThread:Ljava/lang/Thread;

    .line 1060
    return-object p0
.end method


# virtual methods
.method public final endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mEndsApplication:Z

    .line 1125
    return-object p0
.end method

.method public final exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1070
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mException:Ljava/lang/Throwable;

    .line 1071
    return-object p0
.end method

.method public final forceSilent()Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mForceSilent:Z

    .line 1115
    return-object p0
.end method

.method public final send()V
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1133
    const-string v0, "Report requested by developer"

    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    .line 1135
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->this$0:Lorg/acra/ErrorReporter;

    invoke-static {v0, p0}, Lorg/acra/ErrorReporter;->access$1400(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$ReportBuilder;)V

    .line 1136
    return-void
.end method
