.class public Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;
.super Landroid/app/IntentService;
.source "NotificationIntentService.java"


# static fields
.field public static final ACTION_REGISTER:I = 0x0

.field public static final ACTION_UNREGISTER:I = 0x1

.field public static final PARAM_ACTION:Ljava/lang/String; = "param_action"


# instance fields
.field mLocalDataManager:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

.field mNotificationConnector:Lcom/mcdonalds/sdk/connectors/NotificationConnector;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    const-string v1, "NotificationIntent"

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.notification.connector"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    .local v0, "connectorImplementation":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/NotificationConnector;

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;->mNotificationConnector:Lcom/mcdonalds/sdk/connectors/NotificationConnector;

    .line 39
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;->mLocalDataManager:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .line 40
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;->setIntentRedelivery(Z)V

    .line 41
    return-void
.end method

.method private register()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/mcdonalds/sdk/AsyncException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;->mNotificationConnector:Lcom/mcdonalds/sdk/connectors/NotificationConnector;

    invoke-interface {v4}, Lcom/mcdonalds/sdk/connectors/NotificationConnector;->register()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "token":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 70
    iget-object v4, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;->mLocalDataManager:Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setNotificationRegId(Ljava/lang/String;)V

    .line 71
    const-string v4, "customer"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 72
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    .line 73
    .local v2, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz v2, :cond_0

    .line 74
    new-instance v1, Lcom/mcdonalds/sdk/BlockingListener;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/BlockingListener;-><init>()V

    .line 75
    .local v1, "preferenceListener":Lcom/mcdonalds/sdk/BlockingListener;, "Lcom/mcdonalds/sdk/BlockingListener<Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;>;"
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 76
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/BlockingListener;->getResponse()Ljava/lang/Object;

    .line 79
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v1    # "preferenceListener":Lcom/mcdonalds/sdk/BlockingListener;, "Lcom/mcdonalds/sdk/BlockingListener<Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;>;"
    .end local v2    # "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_0
    return-void
.end method

.method private unregister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;->mNotificationConnector:Lcom/mcdonalds/sdk/connectors/NotificationConnector;

    invoke-interface {v0}, Lcom/mcdonalds/sdk/connectors/NotificationConnector;->unregister()V

    .line 65
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "param_action"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 61
    .end local v0    # "action":I
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0    # "action":I
    :pswitch_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;->register()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/mcdonalds/sdk/AsyncException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 57
    .end local v0    # "action":I
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":I
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/notifications/NotificationIntentService;->unregister()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/mcdonalds/sdk/AsyncException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 57
    .end local v0    # "action":I
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
