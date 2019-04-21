.class public Lcom/ensighten/utils/BatteryInfoManager;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    iput v1, p0, Lcom/ensighten/utils/BatteryInfoManager;->b:I

    .line 18
    iput v1, p0, Lcom/ensighten/utils/BatteryInfoManager;->a:I

    .line 19
    iput v1, p0, Lcom/ensighten/utils/BatteryInfoManager;->c:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->d:Z

    .line 21
    iput v1, p0, Lcom/ensighten/utils/BatteryInfoManager;->e:I

    .line 22
    iput v1, p0, Lcom/ensighten/utils/BatteryInfoManager;->f:I

    .line 23
    const-string v0, "na"

    iput-object v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->g:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/ensighten/utils/BatteryInfoManager;->h:I

    .line 25
    iput v1, p0, Lcom/ensighten/utils/BatteryInfoManager;->i:I

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    :try_start_0
    const-string v0, "health"

    iget v2, p0, Lcom/ensighten/utils/BatteryInfoManager;->b:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    const-string v0, "level"

    iget v2, p0, Lcom/ensighten/utils/BatteryInfoManager;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v0, "plugged"

    iget v2, p0, Lcom/ensighten/utils/BatteryInfoManager;->c:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string v0, "present"

    iget-boolean v2, p0, Lcom/ensighten/utils/BatteryInfoManager;->d:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 55
    const-string v0, "scale"

    iget v2, p0, Lcom/ensighten/utils/BatteryInfoManager;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v0, "status"

    iget v2, p0, Lcom/ensighten/utils/BatteryInfoManager;->f:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string v0, "technology"

    iget-object v2, p0, Lcom/ensighten/utils/BatteryInfoManager;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v0, "temperature"

    iget v2, p0, Lcom/ensighten/utils/BatteryInfoManager;->h:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v0, "voltage"

    iget v2, p0, Lcom/ensighten/utils/BatteryInfoManager;->i:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 29
    if-nez p2, :cond_0

    .line 42
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "health"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->b:I

    .line 33
    const-string v0, "level"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->a:I

    .line 34
    const-string v0, "plugged"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->c:I

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "present"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->d:Z

    .line 36
    const-string v0, "scale"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->e:I

    .line 37
    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->f:I

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "technology"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->g:Ljava/lang/String;

    .line 39
    const-string v0, "temperature"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->h:I

    .line 40
    const-string/jumbo v0, "voltage"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ensighten/utils/BatteryInfoManager;->i:I

    .line 41
    invoke-static {}, Lcom/ensighten/Ensighten;->processBatteryLevel()V

    goto :goto_0
.end method
