.class Lcom/admaster/jice/a/v;
.super Ljava/lang/Thread;
.source "JiceTestPushManager.java"


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/t;

.field private b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/admaster/jice/a/t;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iput-object p1, p0, Lcom/admaster/jice/a/v;->a:Lcom/admaster/jice/a/t;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/admaster/jice/a/v;->b:Lorg/json/JSONObject;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/admaster/jice/a/v;->c:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/admaster/jice/a/v;->d:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/admaster/jice/d/e;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/a/v;->b:Lorg/json/JSONObject;

    .line 99
    iput-object p3, p0, Lcom/admaster/jice/a/v;->c:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/admaster/jice/a/v;->d:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 106
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/v;->a:Lcom/admaster/jice/a/t;

    invoke-static {v0}, Lcom/admaster/jice/a/t;->b(Lcom/admaster/jice/a/t;)Lcom/admaster/jice/d/b;

    move-result-object v0

    iget-object v2, p0, Lcom/admaster/jice/a/v;->a:Lcom/admaster/jice/a/t;

    invoke-static {v2}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/admaster/jice/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/admaster/jice/a/v;->a:Lcom/admaster/jice/a/t;

    const-string v2, "network is disable!"

    invoke-static {v0, v2}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    iget-object v2, p0, Lcom/admaster/jice/a/v;->b:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 118
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/admaster/jice/a/v;->b:Lorg/json/JSONObject;

    .line 121
    :cond_1
    const-string v2, "system"

    iget-object v3, p0, Lcom/admaster/jice/a/v;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object v2, p0, Lcom/admaster/jice/a/v;->a:Lcom/admaster/jice/a/t;

    invoke-static {v2}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/a/x;->a(Landroid/content/Context;)Lcom/admaster/jice/a/x;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/admaster/jice/a/x;->b()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 130
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 135
    :goto_1
    const-string v3, "profile"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/admaster/jice/b/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?testId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/admaster/jice/a/v;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    iget-object v3, p0, Lcom/admaster/jice/a/v;->a:Lcom/admaster/jice/a/t;

    invoke-static {v3}, Lcom/admaster/jice/a/t;->b(Lcom/admaster/jice/a/t;)Lcom/admaster/jice/d/b;

    move-result-object v3

    .line 142
    instance-of v4, v0, Lorg/json/JSONObject;

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v4, 0x0

    .line 141
    invoke-virtual {v3, v2, v0, v4}, Lcom/admaster/jice/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)[B

    move-result-object v2

    .line 145
    if-eqz v2, :cond_2

    .line 146
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 154
    :cond_2
    :goto_3
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/admaster/jice/a/v;->a:Lcom/admaster/jice/a/t;

    iget-object v2, p0, Lcom/admaster/jice/a/v;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 158
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 159
    new-instance v2, Lcom/admaster/jice/b/d;

    iget-object v3, p0, Lcom/admaster/jice/a/v;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/admaster/jice/b/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 160
    iget-object v0, p0, Lcom/admaster/jice/a/v;->a:Lcom/admaster/jice/a/t;

    invoke-static {v0, v2}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;Lcom/admaster/jice/b/d;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/admaster/jice/a/v;->a:Lcom/admaster/jice/a/t;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestTestPushConfig:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/admaster/jice/a/t;->a(Lcom/admaster/jice/a/t;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_4
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 142
    :cond_5
    :try_start_3
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_2

    .line 162
    :catch_1
    move-exception v0

    .line 163
    const-string v2, "JiceSDK.JiceTestPushManager"

    const-string v3, "Constructor JiceTestConfig failed!"

    invoke-static {v2, v3, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method
