.class public Lcom/admaster/square/utils/Order;
.super Lorg/json/JSONObject;
.source "Order.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final od_corderCurrencyType:Ljava/lang/String; = "orderCurrencyType"

.field public static final od_orderAcount:Ljava/lang/String; = "orderAmount"

.field public static final od_orderid:Ljava/lang/String; = "orderId"

.field public static final od_payType:Ljava/lang/String; = "orderType"

.field public static final orderItems:Ljava/lang/String; = "orderItems"


# instance fields
.field a:Lorg/json/JSONArray;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FLjava/lang/String;)V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    .line 28
    :try_start_0
    const-string v0, "orderId"

    invoke-static {p1}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admaster/square/utils/Order;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v0, "0"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :try_start_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 32
    float-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 36
    :goto_0
    :try_start_2
    const-string v1, "orderAmount"

    invoke-virtual {p0, v1, v0}, Lcom/admaster/square/utils/Order;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v0, "orderCurrencyType"

    invoke-static {p3}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admaster/square/utils/Order;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :goto_1
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string v0, "0"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    .line 44
    :try_start_0
    const-string v0, "orderId"

    invoke-static {p1}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admaster/square/utils/Order;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v0, "0"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 48
    float-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 52
    :goto_0
    :try_start_2
    const-string v1, "orderAmount"

    invoke-virtual {p0, v1, v0}, Lcom/admaster/square/utils/Order;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v0, "orderCurrencyType"

    invoke-static {p3}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admaster/square/utils/Order;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v0, "orderType"

    invoke-static {p4}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/admaster/square/utils/Order;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :goto_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v0, "0"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static createOrder()Lcom/admaster/square/utils/Order;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/admaster/square/utils/Order;

    invoke-direct {v0}, Lcom/admaster/square/utils/Order;-><init>()V

    return-object v0
.end method

.method public static createOrder(Ljava/lang/String;FLjava/lang/String;)Lcom/admaster/square/utils/Order;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/admaster/square/utils/Order;

    invoke-direct {v0, p0, p1, p2}, Lcom/admaster/square/utils/Order;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    return-object v0
.end method

.method public static createOrder(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)Lcom/admaster/square/utils/Order;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/admaster/square/utils/Order;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/admaster/square/utils/Order;-><init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createOrderList(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/admaster/square/utils/Order;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/admaster/square/utils/Order;

    invoke-direct {v0}, Lcom/admaster/square/utils/Order;-><init>()V

    invoke-virtual {v0, p0}, Lcom/admaster/square/utils/Order;->createOrderListArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static createPaySuccOrderList(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/admaster/square/utils/Order;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/admaster/square/utils/Order;

    invoke-direct {v0}, Lcom/admaster/square/utils/Order;-><init>()V

    invoke-virtual {v0, p0}, Lcom/admaster/square/utils/Order;->createPaySuccOrderListArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/admaster/square/utils/Order;
    .locals 4

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    .line 130
    const-string v0, "orderItems"

    iget-object v1, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    invoke-virtual {p0, v0, v1}, Lcom/admaster/square/utils/Order;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 133
    const-string v1, "itemCategory"

    invoke-static {p1}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v1, "itemId"

    invoke-static {p2}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v1, "itemName"

    invoke-static {p3}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :try_start_1
    invoke-static {p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 139
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "##0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 142
    const-string v2, "itemUnitPrice"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :goto_0
    :try_start_2
    const-string v1, "itemCount"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    iget-object v1, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :goto_1
    monitor-exit p0

    return-object p0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    :try_start_3
    const-string v1, "itemUnitPrice"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPaySuccItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    const-string v1, "orderId"

    invoke-static {p1}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "orderAmount"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    const-string v1, "orderCurrencyType"

    invoke-static {p3}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "orderType"

    invoke-static {p4}, Lcom/admaster/square/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    iget-object v1, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createOrderListArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/admaster/square/utils/Order;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    .line 87
    const-string v0, "orderMessages"

    iget-object v1, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    invoke-virtual {p0, v0, v1}, Lcom/admaster/square/utils/Order;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :goto_1
    iget-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    return-object v0

    .line 88
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admaster/square/utils/Order;

    .line 89
    iget-object v2, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public createPaySuccOrderListArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/admaster/square/utils/Order;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    .line 113
    const-string v0, "orderMessages"

    iget-object v1, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    invoke-virtual {p0, v0, v1}, Lcom/admaster/square/utils/Order;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    return-object v0

    .line 114
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admaster/square/utils/Order;

    .line 115
    iget-object v2, p0, Lcom/admaster/square/utils/Order;->a:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
