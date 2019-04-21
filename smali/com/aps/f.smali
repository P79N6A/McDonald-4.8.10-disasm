.class public Lcom/aps/f;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aps/f$a;
    }
.end annotation


# instance fields
.field a:Lcom/aps/f$a;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Lcom/aps/a;

.field private f:Landroid/content/ServiceConnection;

.field private g:Landroid/content/Intent;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/aps/f;->b:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/aps/f;->c:Landroid/content/Context;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/f;->d:Z

    .line 45
    iput-object v1, p0, Lcom/aps/f;->e:Lcom/aps/a;

    .line 50
    iput-object v1, p0, Lcom/aps/f;->f:Landroid/content/ServiceConnection;

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/aps/f;->g:Landroid/content/Intent;

    .line 53
    const-string v0, "com.autonavi.minimap"

    iput-object v0, p0, Lcom/aps/f;->h:Ljava/lang/String;

    .line 54
    const-string v0, "com.amap.api.service.AMapService"

    iput-object v0, p0, Lcom/aps/f;->i:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/aps/f;->a:Lcom/aps/f$a;

    .line 167
    const-string v0, "invaid type"

    iput-object v0, p0, Lcom/aps/f;->j:Ljava/lang/String;

    .line 168
    const-string v0, "empty appkey"

    iput-object v0, p0, Lcom/aps/f;->k:Ljava/lang/String;

    .line 169
    const-string v0, "refused"

    iput-object v0, p0, Lcom/aps/f;->l:Ljava/lang/String;

    .line 170
    const-string v0, "failed"

    iput-object v0, p0, Lcom/aps/f;->m:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/aps/f;->c:Landroid/content/Context;

    .line 61
    :try_start_0
    sget-object v0, Lcom/amap/api/location/core/c;->a:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v1}, Lcom/amap/api/location/core/e;->b([BLjava/lang/String;)[B

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/amap/api/location/core/b;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/f;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/aps/f;Lcom/aps/a;)Lcom/aps/a;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/aps/f;->e:Lcom/aps/a;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)Lcom/aps/c;
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 172
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-object v1

    .line 178
    :cond_1
    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/amap/api/location/core/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 182
    :try_start_0
    const-string v4, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v4}, Lcom/amap/api/location/core/e;->c([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_1
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-static {v4}, Lcom/amap/api/location/core/b;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 191
    :try_start_1
    invoke-static {v0, v4}, Lcom/amap/api/location/core/e;->a([B[B)[B

    move-result-object v0

    .line 192
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 194
    if-eqz v4, :cond_0

    .line 195
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 197
    const-string v0, "error"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    const-string v0, "error"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v2, p0, Lcom/aps/f;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aps/f;->d:Z

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/aps/f;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aps/f;->d:Z

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/aps/f;->l:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aps/f;->d:Z

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/aps/f;->m:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move-object v0, v1

    goto :goto_1

    .line 216
    :cond_6
    :try_start_2
    new-instance v0, Lcom/aps/c;

    invoke-direct {v0}, Lcom/aps/c;-><init>()V

    .line 217
    const-string v4, "time"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 218
    const-string v4, "time"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 219
    invoke-virtual {v0, v4, v5}, Lcom/aps/c;->a(J)V

    .line 221
    :cond_7
    const-string v4, "acc"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 222
    const-string v4, "acc"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 223
    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/aps/c;->a(F)V

    .line 225
    :cond_8
    const-string v4, "dir"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 226
    const-string v4, "dir"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/aps/c;->b(F)V

    .line 229
    :cond_9
    const-string v4, "lbs"

    invoke-virtual {v0, v4}, Lcom/aps/c;->f(Ljava/lang/String;)V

    .line 232
    const-string v4, "lat"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 233
    const-string v4, "lat"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-wide v6, v4

    .line 235
    :goto_2
    const-string v4, "lon"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 236
    const-string v2, "lon"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    move-wide v4, v2

    .line 239
    :goto_3
    const-string/jumbo v2, "type"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 240
    const-string/jumbo v2, "type"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 243
    :goto_4
    const-string v2, "poiname"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 244
    const-string v2, "poiname"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    :goto_5
    invoke-virtual {v0, v2}, Lcom/aps/c;->q(Ljava/lang/String;)V

    .line 248
    const-string v2, "desc"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 249
    const-string v2, "desc"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    :goto_6
    invoke-virtual {v0, v2}, Lcom/aps/c;->j(Ljava/lang/String;)V

    .line 253
    const-string v2, "street"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 254
    const-string v2, "street"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    :goto_7
    invoke-virtual {v0, v2}, Lcom/aps/c;->p(Ljava/lang/String;)V

    .line 258
    const-string v2, "pid"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 259
    const-string v2, "pid"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    :goto_8
    invoke-virtual {v0, v2}, Lcom/aps/c;->a(Ljava/lang/String;)V

    .line 263
    const-string v2, "flr"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 264
    const-string v2, "flr"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    :goto_9
    invoke-virtual {v0, v2}, Lcom/aps/c;->b(Ljava/lang/String;)V

    .line 268
    const-string v2, "road"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 269
    const-string v2, "road"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    :goto_a
    invoke-virtual {v0, v2}, Lcom/aps/c;->o(Ljava/lang/String;)V

    .line 273
    const-string v2, "city"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 274
    const-string v2, "city"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    :goto_b
    invoke-virtual {v0, v2}, Lcom/aps/c;->n(Ljava/lang/String;)V

    .line 278
    const-string v2, "country"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 279
    const-string v2, "country"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    :goto_c
    invoke-virtual {v0, v2}, Lcom/aps/c;->l(Ljava/lang/String;)V

    .line 283
    const-string v2, "citycode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 284
    const-string v2, "citycode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    :goto_d
    invoke-virtual {v0, v2}, Lcom/aps/c;->i(Ljava/lang/String;)V

    .line 288
    const-string v2, "province"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 289
    const-string v2, "province"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    :goto_e
    invoke-virtual {v0, v2}, Lcom/aps/c;->m(Ljava/lang/String;)V

    .line 293
    const-string v2, "adcode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 294
    const-string v2, "adcode"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    :goto_f
    invoke-virtual {v0, v2}, Lcom/aps/c;->k(Ljava/lang/String;)V

    .line 298
    const-string v2, "district"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 299
    const-string v2, "district"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    :goto_10
    invoke-virtual {v0, v2}, Lcom/aps/c;->c(Ljava/lang/String;)V

    .line 303
    const-string v2, "WGS84"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v6, v7, v4, v5}, Lcom/amap/api/location/core/c;->a(DD)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 304
    invoke-static {v4, v5, v6, v7}, Lcom/aps/w;->a(DD)[D

    move-result-object v2

    .line 306
    const/4 v3, 0x1

    aget-wide v4, v2, v3

    invoke-virtual {v0, v4, v5}, Lcom/aps/c;->b(D)V

    .line 307
    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Lcom/aps/c;->a(D)V

    :goto_11
    move-object v1, v0

    .line 312
    goto/16 :goto_0

    .line 309
    :cond_a
    invoke-virtual {v0, v6, v7}, Lcom/aps/c;->b(D)V

    .line 310
    invoke-virtual {v0, v4, v5}, Lcom/aps/c;->a(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_11

    .line 315
    :catch_1
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    move-object v2, v1

    goto :goto_10

    :cond_c
    move-object v2, v1

    goto :goto_f

    :cond_d
    move-object v2, v1

    goto :goto_e

    :cond_e
    move-object v2, v1

    goto :goto_d

    :cond_f
    move-object v2, v1

    goto :goto_c

    :cond_10
    move-object v2, v1

    goto/16 :goto_b

    :cond_11
    move-object v2, v1

    goto/16 :goto_a

    :cond_12
    move-object v2, v1

    goto/16 :goto_9

    :cond_13
    move-object v2, v1

    goto/16 :goto_8

    :cond_14
    move-object v2, v1

    goto/16 :goto_7

    :cond_15
    move-object v2, v1

    goto/16 :goto_6

    :cond_16
    move-object v2, v1

    goto/16 :goto_5

    :cond_17
    move-object v3, v1

    goto/16 :goto_4

    :cond_18
    move-wide v4, v2

    goto/16 :goto_3

    :cond_19
    move-wide v6, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/aps/f;->c()V

    .line 71
    iput-object v0, p0, Lcom/aps/f;->c:Landroid/content/Context;

    .line 72
    iput-object v0, p0, Lcom/aps/f;->e:Lcom/aps/a;

    .line 73
    iput-object v0, p0, Lcom/aps/f;->f:Landroid/content/ServiceConnection;

    .line 74
    iget-object v0, p0, Lcom/aps/f;->a:Lcom/aps/f$a;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/aps/f;->a:Lcom/aps/f$a;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/aps/f$a;->a(I)V

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aps/f;->d:Z

    .line 78
    return-void
.end method

.method public a(Lcom/aps/f$a;)V
    .locals 1

    .prologue
    .line 82
    :try_start_0
    iput-object p1, p0, Lcom/aps/f;->a:Lcom/aps/f$a;

    .line 83
    iget-object v0, p0, Lcom/aps/f;->f:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/aps/f$1;

    invoke-direct {v0, p0, p1}, Lcom/aps/f$1;-><init>(Lcom/aps/f;Lcom/aps/f$a;)V

    iput-object v0, p0, Lcom/aps/f;->f:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method b()Z
    .locals 4

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/aps/f;->g:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/aps/f;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/aps/f;->i:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/aps/f;->g:Landroid/content/Intent;

    const-string v1, "appkey"

    iget-object v2, p0, Lcom/aps/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/aps/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/aps/f;->g:Landroid/content/Intent;

    iget-object v2, p0, Lcom/aps/f;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/aps/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/aps/f;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/f;->e:Lcom/aps/a;

    .line 136
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 134
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method d()Lcom/aps/c;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 144
    :try_start_0
    iget-boolean v1, p0, Lcom/aps/f;->d:Z

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    const-string/jumbo v2, "type"

    const-string v3, "corse"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v2, "appkey"

    iget-object v3, p0, Lcom/aps/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/aps/f;->e:Lcom/aps/a;

    invoke-interface {v2, v1}, Lcom/aps/a;->a(Landroid/os/Bundle;)I

    .line 156
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 157
    invoke-direct {p0, v1}, Lcom/aps/f;->a(Landroid/os/Bundle;)Lcom/aps/c;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    goto :goto_0

    .line 160
    :catch_1
    move-exception v1

    goto :goto_0
.end method
