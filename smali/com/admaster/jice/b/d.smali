.class public Lcom/admaster/jice/b/d;
.super Ljava/lang/Object;
.source "JicePushConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private appKey:Ljava/lang/String;

.field private endDate:J

.field private horizontal:Lcom/admaster/jice/b/e;

.field private pushId:I

.field private showTimes:I

.field private startDate:J

.field private targetUrl:Ljava/lang/String;

.field private vertical:Lcom/admaster/jice/b/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "jicesdk"

    iput-object v0, p0, Lcom/admaster/jice/b/d;->appKey:Ljava/lang/String;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/admaster/jice/b/d;->pushId:I

    .line 45
    iput-wide v2, p0, Lcom/admaster/jice/b/d;->startDate:J

    .line 47
    iput-wide v2, p0, Lcom/admaster/jice/b/d;->endDate:J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/admaster/jice/b/d;->showTimes:I

    .line 52
    iput-object v1, p0, Lcom/admaster/jice/b/d;->targetUrl:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/admaster/jice/b/d;->vertical:Lcom/admaster/jice/b/e;

    .line 61
    iput-object v1, p0, Lcom/admaster/jice/b/d;->horizontal:Lcom/admaster/jice/b/e;

    .line 67
    iput-object p1, p0, Lcom/admaster/jice/b/d;->appKey:Ljava/lang/String;

    .line 70
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/admaster/jice/b/d;->pushId:I

    .line 71
    const-string v0, "start"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admaster/jice/b/d;->startDate:J

    .line 72
    const-string v0, "end"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admaster/jice/b/d;->endDate:J

    .line 73
    const-string v0, "times"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/admaster/jice/b/d;->showTimes:I

    .line 76
    const-string v0, "target_url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/b/d;->targetUrl:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "vertical"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v0, "vertical"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    const-string v1, "material"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/admaster/jice/b/e;

    invoke-direct {v1, p0, v0}, Lcom/admaster/jice/b/e;-><init>(Lcom/admaster/jice/b/d;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/admaster/jice/b/d;->vertical:Lcom/admaster/jice/b/e;

    .line 91
    :cond_0
    const-string v0, "horizontal"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "horizontal"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    const-string v1, "material"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    new-instance v1, Lcom/admaster/jice/b/e;

    invoke-direct {v1, p0, v0}, Lcom/admaster/jice/b/e;-><init>(Lcom/admaster/jice/b/d;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/admaster/jice/b/d;->horizontal:Lcom/admaster/jice/b/e;

    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public getEndDate()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/admaster/jice/b/d;->endDate:J

    return-wide v0
.end method

.method public getHorizontal()Lcom/admaster/jice/b/e;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/admaster/jice/b/d;->horizontal:Lcom/admaster/jice/b/e;

    return-object v0
.end method

.method public getImageMatericalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    const-string v1, "Material"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/admaster/jice/b/d;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/admaster/jice/b/d;->pushId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    invoke-static {p1}, Lcom/admaster/jice/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method public getPushId()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/admaster/jice/b/d;->pushId:I

    return v0
.end method

.method public getShowTimes()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/admaster/jice/b/d;->showTimes:I

    return v0
.end method

.method public getStartDate()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/admaster/jice/b/d;->startDate:J

    return-wide v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/admaster/jice/b/d;->targetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVertical()Lcom/admaster/jice/b/e;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/admaster/jice/b/d;->vertical:Lcom/admaster/jice/b/e;

    return-object v0
.end method

.method public hasCacheImage(Lcom/admaster/jice/b/e;)Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/admaster/jice/b/e;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admaster/jice/b/d;->getImageMatericalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/admaster/jice/d/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasInSchedule()Z
    .locals 4

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 167
    iget-wide v2, p0, Lcom/admaster/jice/b/d;->startDate:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/admaster/jice/b/d;->endDate:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEndDate(J)V
    .locals 1

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/admaster/jice/b/d;->endDate:J

    .line 195
    return-void
.end method

.method public setHorizontal(Lcom/admaster/jice/b/e;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/admaster/jice/b/d;->horizontal:Lcom/admaster/jice/b/e;

    .line 227
    return-void
.end method

.method public setPushId(I)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/admaster/jice/b/d;->pushId:I

    .line 179
    return-void
.end method

.method public setShowTimes(I)V
    .locals 0

    .prologue
    .line 202
    iput p1, p0, Lcom/admaster/jice/b/d;->showTimes:I

    .line 203
    return-void
.end method

.method public setStartDate(J)V
    .locals 1

    .prologue
    .line 186
    iput-wide p1, p0, Lcom/admaster/jice/b/d;->startDate:J

    .line 187
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/admaster/jice/b/d;->targetUrl:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setVertical(Lcom/admaster/jice/b/e;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/admaster/jice/b/d;->vertical:Lcom/admaster/jice/b/e;

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JCPushConfig["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/admaster/jice/b/d;->pushId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/admaster/jice/b/d;->hasInSchedule()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/admaster/jice/b/d;->showTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
