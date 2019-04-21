.class public Lcom/alipay/sdk/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/data/a$a;
    }
.end annotation


# static fields
.field private static q:Lcom/alipay/sdk/data/a;


# instance fields
.field public l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0xdac

    iput v0, p0, Lcom/alipay/sdk/data/a;->m:I

    .line 50
    const-string v0, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    iput-object v0, p0, Lcom/alipay/sdk/data/a;->n:Ljava/lang/String;

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/sdk/data/a;->o:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/data/a;->l:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/data/a;->p:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/data/a;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/sdk/data/a;->g()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/data/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/sdk/data/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 121
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    const-string v1, "timeout"

    const/16 v2, 0xdac

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/sdk/data/a;->m:I

    .line 123
    const-string v1, "tbreturl"

    const-string v2, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/data/a;->n:Ljava/lang/String;

    .line 124
    const-string v1, "configQueryInterval"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/sdk/data/a;->o:I

    .line 125
    const-string v1, "launchAppSwitch"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/data/a$a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/data/a;->p:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 154
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 155
    const-string v1, "st_sdk_config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_1

    .line 157
    const-string v1, "timeout"

    const/16 v2, 0xdac

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/sdk/data/a;->m:I

    .line 158
    const-string v1, "tbreturl"

    const-string v2, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/data/a;->n:Ljava/lang/String;

    .line 159
    const-string v1, "configQueryInterval"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/sdk/data/a;->o:I

    .line 160
    const-string v1, "launchAppSwitch"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/data/a$a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/data/a;->p:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 162
    :cond_1
    :try_start_1
    const-string v0, "msp"

    const-string v1, "config is null"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static e()Lcom/alipay/sdk/data/a;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/alipay/sdk/data/a;->q:Lcom/alipay/sdk/data/a;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/alipay/sdk/data/a;

    invoke-direct {v0}, Lcom/alipay/sdk/data/a;-><init>()V

    sput-object v0, Lcom/alipay/sdk/data/a;->q:Lcom/alipay/sdk/data/a;

    .line 104
    sget-object v0, Lcom/alipay/sdk/data/a;->q:Lcom/alipay/sdk/data/a;

    invoke-direct {v0}, Lcom/alipay/sdk/data/a;->f()V

    .line 106
    :cond_0
    sget-object v0, Lcom/alipay/sdk/data/a;->q:Lcom/alipay/sdk/data/a;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 111
    const-string v1, "alipay_cashier_dynamic_config"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/util/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lcom/alipay/sdk/data/a;->a(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 134
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    const-string v1, "timeout"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v1, "tbreturl"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v1, "configQueryInterval"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    const-string v1, "launchAppSwitch"

    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/sdk/data/a$a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    .line 142
    const-string v2, "alipay_cashier_dynamic_config"

    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_1
    return-void

    .line 142
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 69
    iget v0, p0, Lcom/alipay/sdk/data/a;->m:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/sdk/data/a;->m:I

    const/16 v1, 0x4e20

    if-le v0, v1, :cond_1

    .line 70
    :cond_0
    const-string v0, ""

    const-string v1, "DynamicConfig::getJumpTimeout(default) >3500"

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/16 v0, 0xdac

    .line 74
    :goto_0
    return v0

    .line 73
    :cond_1
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicConfig::getJumpTimeout >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/sdk/data/a;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/alipay/sdk/data/a;->m:I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/sdk/data/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/sdk/data/b;-><init>(Lcom/alipay/sdk/data/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/sdk/data/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/alipay/sdk/data/a;->o:I

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/sdk/data/a;->p:Ljava/util/List;

    return-object v0
.end method
