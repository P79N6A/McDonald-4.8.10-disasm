.class public Lcom/aps/c;
.super Ljava/lang/Object;
.source "AmapLoc.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:D

.field private c:D

.field private d:F

.field private e:F

.field private f:F

.field private g:J

.field private h:Lcom/amap/api/location/core/AMapLocException;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->a:Ljava/lang/String;

    .line 19
    iput-wide v2, p0, Lcom/aps/c;->b:D

    .line 20
    iput-wide v2, p0, Lcom/aps/c;->c:D

    .line 21
    iput v1, p0, Lcom/aps/c;->d:F

    .line 22
    iput v1, p0, Lcom/aps/c;->e:F

    .line 23
    iput v1, p0, Lcom/aps/c;->f:F

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/c;->g:J

    .line 25
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    invoke-direct {v0}, Lcom/amap/api/location/core/AMapLocException;-><init>()V

    iput-object v0, p0, Lcom/aps/c;->h:Lcom/amap/api/location/core/AMapLocException;

    .line 50
    const-string v0, "new"

    iput-object v0, p0, Lcom/aps/c;->i:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->j:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->k:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->l:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->m:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->n:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->o:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->p:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->q:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->r:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->s:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->t:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->u:Ljava/lang/String;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/aps/c;->v:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->w:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->x:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/c;->y:Lorg/json/JSONObject;

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->a:Ljava/lang/String;

    .line 19
    iput-wide v4, p0, Lcom/aps/c;->b:D

    .line 20
    iput-wide v4, p0, Lcom/aps/c;->c:D

    .line 21
    iput v1, p0, Lcom/aps/c;->d:F

    .line 22
    iput v1, p0, Lcom/aps/c;->e:F

    .line 23
    iput v1, p0, Lcom/aps/c;->f:F

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aps/c;->g:J

    .line 25
    new-instance v0, Lcom/amap/api/location/core/AMapLocException;

    invoke-direct {v0}, Lcom/amap/api/location/core/AMapLocException;-><init>()V

    iput-object v0, p0, Lcom/aps/c;->h:Lcom/amap/api/location/core/AMapLocException;

    .line 50
    const-string v0, "new"

    iput-object v0, p0, Lcom/aps/c;->i:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->j:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->k:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->l:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->m:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->n:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->o:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->p:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->q:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->r:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->s:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->t:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->u:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/aps/c;->v:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->w:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/aps/c;->x:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/c;->y:Lorg/json/JSONObject;

    .line 131
    if-eqz p1, :cond_0

    .line 132
    :try_start_0
    const-string v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->a:Ljava/lang/String;

    .line 133
    const-string v0, "lon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/c;->b:D

    .line 134
    const-string v0, "lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/c;->c:D

    .line 135
    const-string v0, "accuracy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/aps/c;->d:F

    .line 136
    const-string v0, "speed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/aps/c;->e:F

    .line 137
    const-string v0, "bearing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/aps/c;->f:F

    .line 138
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aps/c;->g:J

    .line 139
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->i:Ljava/lang/String;

    .line 140
    const-string v0, "retype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->j:Ljava/lang/String;

    .line 141
    const-string v0, "citycode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->k:Ljava/lang/String;

    .line 142
    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->l:Ljava/lang/String;

    .line 143
    const-string v0, "adcode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->m:Ljava/lang/String;

    .line 144
    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->n:Ljava/lang/String;

    .line 145
    const-string v0, "province"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->o:Ljava/lang/String;

    .line 146
    const-string v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->p:Ljava/lang/String;

    .line 147
    const-string v0, "road"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->q:Ljava/lang/String;

    .line 148
    const-string v0, "street"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->r:Ljava/lang/String;

    .line 149
    const-string v0, "poiname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->s:Ljava/lang/String;

    .line 150
    const-string v0, "floor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->u:Ljava/lang/String;

    .line 151
    const-string v0, "poiid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->t:Ljava/lang/String;

    .line 152
    const-string v0, "coord"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/aps/c;->v:I

    .line 162
    :goto_0
    const-string v0, "mcell"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->w:Ljava/lang/String;

    .line 163
    const-string v0, "district"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/c;->x:Ljava/lang/String;

    .line 171
    :cond_0
    :goto_1
    return-void

    .line 155
    :cond_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/aps/c;->v:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 157
    :cond_2
    :try_start_1
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/aps/c;->v:I

    goto :goto_0

    .line 160
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/aps/c;->v:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/location/core/AMapLocException;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/aps/c;->h:Lcom/amap/api/location/core/AMapLocException;

    return-object v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/aps/c;->b:D

    .line 187
    return-void
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lcom/aps/c;->d:F

    .line 204
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/aps/c;->g:J

    .line 228
    return-void
.end method

.method public a(Lcom/amap/api/location/core/AMapLocException;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/aps/c;->h:Lcom/amap/api/location/core/AMapLocException;

    .line 32
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/aps/c;->t:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/aps/c;->y:Lorg/json/JSONObject;

    .line 324
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/aps/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method public b(D)V
    .locals 1

    .prologue
    .line 195
    iput-wide p1, p0, Lcom/aps/c;->c:D

    .line 196
    return-void
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 219
    iput p1, p0, Lcom/aps/c;->f:F

    .line 220
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/aps/c;->u:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/aps/c;->u:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/aps/c;->x:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/aps/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iput v2, p0, Lcom/aps/c;->v:I

    .line 109
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/aps/c;->a:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iput v3, p0, Lcom/aps/c;->v:I

    goto :goto_0

    .line 102
    :cond_1
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iput v3, p0, Lcom/aps/c;->v:I

    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/aps/c;->v:I

    goto :goto_0

    .line 107
    :cond_3
    iput v2, p0, Lcom/aps/c;->v:I

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/aps/c;->v:I

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/aps/c;->w:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/aps/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/aps/c;->a:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public g()D
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/aps/c;->b:D

    return-wide v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/aps/c;->i:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public h()D
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/aps/c;->c:D

    return-wide v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/aps/c;->j:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public i()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/aps/c;->d:F

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/aps/c;->k:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public j()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/aps/c;->g:J

    return-wide v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/aps/c;->l:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/aps/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/aps/c;->m:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/aps/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/aps/c;->n:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/aps/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/aps/c;->o:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/aps/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/aps/c;->p:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/aps/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/aps/c;->q:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/aps/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/aps/c;->r:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/aps/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/aps/c;->s:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/aps/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/aps/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/aps/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/aps/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method public v()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/aps/c;->y:Lorg/json/JSONObject;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 333
    .line 335
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 336
    const-string v2, "provider"

    iget-object v3, p0, Lcom/aps/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    const-string v2, "lon"

    iget-wide v4, p0, Lcom/aps/c;->b:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 338
    const-string v2, "lat"

    iget-wide v4, p0, Lcom/aps/c;->c:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 339
    const-string v2, "accuracy"

    iget v3, p0, Lcom/aps/c;->d:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 340
    const-string v2, "speed"

    iget v3, p0, Lcom/aps/c;->e:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 341
    const-string v2, "bearing"

    iget v3, p0, Lcom/aps/c;->f:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 342
    const-string v2, "time"

    iget-wide v4, p0, Lcom/aps/c;->g:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 343
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/aps/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v2, "retype"

    iget-object v3, p0, Lcom/aps/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v2, "citycode"

    iget-object v3, p0, Lcom/aps/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v2, "desc"

    iget-object v3, p0, Lcom/aps/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v2, "adcode"

    iget-object v3, p0, Lcom/aps/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v2, "country"

    iget-object v3, p0, Lcom/aps/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v2, "province"

    iget-object v3, p0, Lcom/aps/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v2, "city"

    iget-object v3, p0, Lcom/aps/c;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v2, "road"

    iget-object v3, p0, Lcom/aps/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    const-string v2, "street"

    iget-object v3, p0, Lcom/aps/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string v2, "poiname"

    iget-object v3, p0, Lcom/aps/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v2, "poiid"

    iget-object v3, p0, Lcom/aps/c;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    const-string v2, "floor"

    iget-object v3, p0, Lcom/aps/c;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    const-string v2, "coord"

    iget v3, p0, Lcom/aps/c;->v:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    const-string v2, "mcell"

    iget-object v3, p0, Lcom/aps/c;->w:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v2, "district"

    iget-object v3, p0, Lcom/aps/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    .line 359
    :catch_0
    move-exception v0

    .line 361
    invoke-static {v0}, Lcom/aps/v;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 363
    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
