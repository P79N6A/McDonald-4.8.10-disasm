.class public Lcom/mcdonalds/sdk/services/analytics/conversionmaster/InitializationAction;
.super Ljava/lang/Object;
.source "InitializationAction.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/analytics/conversionmaster/Action;


# static fields
.field private static final APP_ID:Ljava/lang/String; = "analytics.ConversionMaster.appId"

.field private static final CHANNEL_ID:Ljava/lang/String; = "analytics.ConversionMaster.channelID"

.field private static final CHANNEL_ID_VALUES:Ljava/lang/String; = "analytics.ConversionMaster.channelIDValues."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 18
    .local v0, "cfg":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v4, "analytics.ConversionMaster.appId"

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, "m2id":Ljava/lang/String;
    const-string v4, "analytics.ConversionMaster.channelID"

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "choice":Ljava/lang/String;
    const/4 v1, 0x0

    .line 24
    .local v1, "chId":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "analytics.ConversionMaster.channelIDValues."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 29
    invoke-static {p1, v3, v1}, Lcom/admaster/square/api/ConvMobiSDK;->initial(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static {p1, v3}, Lcom/admaster/square/api/ConvMobiSDK;->initial(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
