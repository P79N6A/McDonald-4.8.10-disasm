.class public final Lcom/ensighten/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/acra/collector/CrashReportData;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 46
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v0

    .line 47
    array-length v1, v0

    if-nez v1, :cond_3

    .line 48
    sget-object v0, Lorg/acra/ACRAConstants;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    move-object v1, v0

    .line 51
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 53
    array-length v4, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v1, v2

    .line 55
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/acra/collector/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_2
    invoke-virtual {v5}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    :cond_0
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 56
    :cond_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/ensighten/i;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_3

    .line 63
    :cond_2
    return-object v3

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "crashReportData"    # Lorg/acra/collector/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 35
    :try_start_0
    invoke-static {p2}, Lcom/ensighten/n;->a(Lorg/acra/collector/CrashReportData;)Lorg/json/JSONObject;

    move-result-object v2

    .line 36
    invoke-static {v2}, Lcom/ensighten/Ensighten;->callJSErrorHandler(Lorg/json/JSONObject;)V

    .line 37
    const-string v5, "ensightenError"

    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v5, v1}, Lcom/ensighten/Ensighten;->saveStringToSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/ensighten/Ensighten;->getExceptionManager()Lcom/ensighten/exception/ExceptionManager;

    move-result-object v5

    invoke-static {v2}, Lcom/ensighten/Utils;->convertJSONObjectToJavascriptCompatibleString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 1077
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v1, v6, :cond_2

    move v1, v3

    .line 1078
    :goto_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v3

    const-string v4, "onCrash"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v5, v4, v6, v1}, Lcom/ensighten/l;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Z)V

    .line 43
    :cond_0
    :goto_2
    return-void

    .line 37
    :cond_1
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :cond_2
    move v1, v4

    .line 1077
    goto :goto_1

    .line 39
    :catch_0
    move-exception v1

    .line 40
    invoke-static {}, Lcom/ensighten/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {v1}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_2
.end method
