.class public final Lcom/ensighten/A;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field a:Lcom/ensighten/E;


# direct methods
.method public constructor <init>(Lcom/ensighten/E;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ensighten/A;->a:Lcom/ensighten/E;

    .line 25
    return-void
.end method


# virtual methods
.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 29
    const-string v0, "opcode"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    :try_start_0
    new-instance v0, Lcom/ensighten/D;

    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ensighten/D;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/ensighten/A;->a:Lcom/ensighten/E;

    .line 1085
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ensighten/E;->a(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 44
    const/4 v0, 0x1

    .line 51
    :goto_1
    return v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    .line 37
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :catch_2
    move-exception v0

    .line 46
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->d(Ljava/lang/String;)V

    .line 51
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_1
.end method
