.class Lcom/baidu/android/pushservice/g/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/android/pushservice/g/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/g/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/android/pushservice/g/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/g/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/android/pushservice/g/d;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/g/d;Lcom/baidu/android/pushservice/g/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/g/d$4;->c:Lcom/baidu/android/pushservice/g/d;

    iput-object p2, p0, Lcom/baidu/android/pushservice/g/d$4;->a:Lcom/baidu/android/pushservice/g/a;

    iput-object p3, p0, Lcom/baidu/android/pushservice/g/d$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/baidu/android/pushservice/g/d$4;->a:Lcom/baidu/android/pushservice/g/a;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    const-string v4, "subscribe_service"

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "api_key"

    iget-object v4, p0, Lcom/baidu/android/pushservice/g/d$4;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_4

    const-string v1, "error_msg"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v3, "error_msg"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v1

    :goto_1
    :try_start_2
    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/baidu/android/pushservice/g/d$4;->a:Lcom/baidu/android/pushservice/g/a;

    invoke-interface {v2, p1, v1}, Lcom/baidu/android/pushservice/g/a;->e(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    :try_start_3
    const-string v1, "details"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    :try_start_4
    const-string v3, "tag"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v1

    goto :goto_1

    :cond_2
    :try_start_5
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v1, v3

    :goto_4
    iget-object v2, p0, Lcom/baidu/android/pushservice/g/d$4;->a:Lcom/baidu/android/pushservice/g/a;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/baidu/android/pushservice/g/a;->e(ILjava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v1, v3

    goto :goto_4

    :cond_3
    move-object v1, v3

    goto :goto_3

    :cond_4
    move-object v1, v3

    goto :goto_0
.end method
