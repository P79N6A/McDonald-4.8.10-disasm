.class Lcom/aps/o$a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aps/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/aps/c;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 71
    new-instance v0, Lcom/aps/c;

    invoke-direct {v0}, Lcom/aps/c;-><init>()V

    iput-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/aps/o$1;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/aps/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 88
    const-string v0, "retype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->h(Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->v()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/aps/c;->a(Lorg/json/JSONObject;)V

    .line 207
    :cond_1
    :try_start_0
    const-string v0, "eab"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 208
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->v()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    .line 226
    :cond_2
    :goto_1
    return-void

    .line 90
    :cond_3
    const-string v0, "adcode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_4
    const-string v0, "citycode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_5
    const-string v0, "radius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aps/c;->a(F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    const v1, 0x45733000    # 3891.0f

    invoke-virtual {v0, v1}, Lcom/aps/c;->a(F)V

    goto :goto_0

    .line 104
    :cond_6
    const-string v0, "cenx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    :try_start_2
    iget-object v0, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "#.000000"

    invoke-static {v0, v1}, Lcom/aps/s;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aps/c;->a(D)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-virtual {v0, v4, v5}, Lcom/aps/c;->a(D)V

    goto/16 :goto_0

    .line 115
    :cond_7
    const-string v0, "ceny"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 117
    :try_start_3
    iget-object v0, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "#.000000"

    invoke-static {v0, v1}, Lcom/aps/s;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aps/c;->b(D)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 119
    :catch_2
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-virtual {v0, v4, v5}, Lcom/aps/c;->b(D)V

    goto/16 :goto_0

    .line 126
    :cond_8
    const-string v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_9
    const-string v0, "country"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 129
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_a
    const-string v0, "province"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_b
    const-string v0, "city"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 133
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_c
    const-string v0, "road"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 136
    :cond_d
    const-string v0, "street"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 137
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_e
    const-string v0, "poiname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 139
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->q(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :cond_f
    const-string v0, "BIZ"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 141
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->v()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_10

    .line 142
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/aps/c;->a(Lorg/json/JSONObject;)V

    .line 145
    :cond_10
    :try_start_4
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->v()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "BIZ"

    iget-object v2, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 146
    :catch_3
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 155
    :cond_11
    const-string v0, "flr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 156
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_12
    const-string v0, "pid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 158
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_13
    const-string v0, "apiTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 161
    :try_start_5
    const-string v0, ""

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 163
    iget-object v2, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-virtual {v2, v0, v1}, Lcom/aps/c;->a(J)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 165
    :catch_4
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-static {}, Lcom/aps/v;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aps/c;->a(J)V

    goto/16 :goto_0

    .line 172
    :cond_14
    const-string v0, "coord"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 174
    :try_start_6
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 175
    :catch_5
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 181
    :cond_15
    const-string v0, "mcell"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 183
    :try_start_7
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->e(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 184
    :catch_6
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 190
    :cond_16
    const-string v0, "district"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    :try_start_8
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aps/c;->c(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 193
    :catch_7
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 209
    :cond_17
    :try_start_9
    const-string v0, "ctl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 210
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->v()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_1

    .line 216
    :catch_8
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 211
    :cond_18
    :try_start_a
    const-string v0, "suc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 212
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->v()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 213
    :cond_19
    const-string v0, "spa"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/aps/o$a;->a:Lcom/aps/c;

    invoke-virtual {v0}, Lcom/aps/c;->v()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .prologue
    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/o$a;->b:Ljava/lang/String;

    .line 83
    return-void
.end method