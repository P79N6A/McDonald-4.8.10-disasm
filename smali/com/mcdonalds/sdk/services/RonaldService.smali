.class public Lcom/mcdonalds/sdk/services/RonaldService;
.super Landroid/app/Service;
.source "RonaldService.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;,
        Lcom/mcdonalds/sdk/services/RonaldService$ServiceBinder;
    }
.end annotation


# static fields
.field private static final EXTRA_CONFIG_RELOAD_INTENT:Ljava/lang/String; = "EXTRA_CONFIG_RELOAD_INTENT"

.field public static final GLOBAL_DIALOG_SHOW_INTERVAL:I = 0x1388

.field private static mCurrentActivity:Landroid/app/Activity;


# instance fields
.field private mAPIKeyInvalidNotificationListener:Landroid/content/BroadcastReceiver;

.field private mAlertNotificationListener:Landroid/content/BroadcastReceiver;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectorManager:Lcom/mcdonalds/sdk/connectors/ConnectorManager;

.field private mLastMessage:Ljava/lang/String;

.field private mLastNotification:J

.field private mModuleManager:Lcom/mcdonalds/sdk/modules/ModuleManager;

.field private mNotificationListener:Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;

.field private final mOnClickGlobalDialog:Landroid/content/DialogInterface$OnClickListener;

.field private mReloadIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mNotificationListener:Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;

    .line 45
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mAlertNotificationListener:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mAPIKeyInvalidNotificationListener:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mModuleManager:Lcom/mcdonalds/sdk/modules/ModuleManager;

    .line 48
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mConnectorManager:Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    .line 49
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mReloadIntent:Landroid/content/Intent;

    .line 50
    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v0, Lcom/mcdonalds/sdk/services/RonaldService$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/RonaldService$4;-><init>(Lcom/mcdonalds/sdk/services/RonaldService;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mOnClickGlobalDialog:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/services/RonaldService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/RonaldService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/services/RonaldService;->showGlobalAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/services/RonaldService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/RonaldService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/RonaldService;->showInvalidAPIKeyAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/services/RonaldService;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/RonaldService;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mReloadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/services/RonaldService;)Lcom/mcdonalds/sdk/connectors/ConnectorManager;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/RonaldService;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mConnectorManager:Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/sdk/services/RonaldService;)Lcom/mcdonalds/sdk/modules/ModuleManager;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/services/RonaldService;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mModuleManager:Lcom/mcdonalds/sdk/modules/ModuleManager;

    return-object v0
.end method

.method public static getServiceConnection(Landroid/content/Context;Landroid/content/Intent;)Lcom/mcdonalds/sdk/services/RonaldServiceConnection;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reloadIntent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/McDonalds;->initialize(Landroid/content/Context;)V

    .line 69
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .line 70
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .line 71
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    .line 72
    invoke-static {}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->getSharedInstance()Lcom/mcdonalds/sdk/services/analytics/Analytics;

    .line 74
    new-instance v0, Lcom/mcdonalds/sdk/services/RonaldServiceConnection;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/services/RonaldServiceConnection;-><init>()V

    .line 77
    .local v0, "connection":Lcom/mcdonalds/sdk/services/RonaldServiceConnection;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/mcdonalds/sdk/services/RonaldService;->getServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    return-object v0
.end method

.method private static getServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/sdk/services/RonaldService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "serviceIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 84
    const-string v1, "EXTRA_CONFIG_RELOAD_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    :cond_0
    return-object v0
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 274
    sput-object p0, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    .line 275
    return-void
.end method

.method private shouldShowDialog(Ljava/lang/String;)Z
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mLastMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mLastNotification:J

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showGlobalAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x11

    .line 208
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/RonaldService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/mcdonalds/sdk/R$string;->error_generic:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 212
    :cond_0
    sget-object v3, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/services/RonaldService;->shouldShowDialog(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    const v5, 0x1030073

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 216
    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 217
    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 218
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/mcdonalds/sdk/R$string;->okay:I

    .line 219
    invoke-virtual {p0, v4}, Lcom/mcdonalds/sdk/services/RonaldService;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mOnClickGlobalDialog:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 222
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 227
    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 228
    .local v1, "messageView":Landroid/widget/TextView;
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 230
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/RonaldService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "alertTitle"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 231
    .local v2, "titleView":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 235
    :cond_1
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mLastMessage:Ljava/lang/String;

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mLastNotification:J

    .line 238
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "messageView":Landroid/widget/TextView;
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method private showInvalidAPIKeyAlertDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/RonaldService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mcdonalds/sdk/R$string;->error_generic:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 245
    :cond_0
    sget-object v1, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/services/RonaldService;->shouldShowDialog(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    const v3, 0x1030073

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 248
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 249
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 252
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 256
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mLastMessage:Ljava/lang/String;

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mLastNotification:J

    .line 259
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_1
    return-void
.end method


# virtual methods
.method public getConnector(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "connectorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {p1}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    invoke-static {p1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 279
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 310
    sget-object v0, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    .line 313
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 294
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 289
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 306
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 283
    sput-object p1, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    .line 284
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 298
    sget-object v0, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/sdk/services/RonaldService;->mCurrentActivity:Landroid/app/Activity;

    .line 301
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 176
    new-instance v0, Lcom/mcdonalds/sdk/services/RonaldService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/services/RonaldService$ServiceBinder;-><init>(Landroid/app/Service;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/RonaldService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 96
    invoke-static {}, Lcom/mcdonalds/sdk/McDonalds;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/RonaldService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/McDonalds;->initialize(Landroid/content/Context;)V

    .line 101
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;-><init>(Lcom/mcdonalds/sdk/services/RonaldService;)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mNotificationListener:Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;

    .line 102
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v1

    const-string v2, "MCD_NOTIFICATION_CONFIGURATION_CHANGED"

    iget-object v3, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mNotificationListener:Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->addObserver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 106
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "notifyForUIAlertRendering"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 107
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v1

    const-string v2, "NOTIFICATION_ASYNC_ERROR"

    new-instance v3, Lcom/mcdonalds/sdk/services/RonaldService$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/sdk/services/RonaldService$1;-><init>(Lcom/mcdonalds/sdk/services/RonaldService;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->addObserver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mAlertNotificationListener:Landroid/content/BroadcastReceiver;

    .line 116
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v1

    const-string v2, "NOTIFICATION_API_INVALID_ERROR"

    new-instance v3, Lcom/mcdonalds/sdk/services/RonaldService$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/sdk/services/RonaldService$2;-><init>(Lcom/mcdonalds/sdk/services/RonaldService;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->addObserver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mAPIKeyInvalidNotificationListener:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v1, Lcom/mcdonalds/sdk/services/RonaldService$3;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/services/RonaldService$3;-><init>(Lcom/mcdonalds/sdk/services/RonaldService;)V

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "connectivityFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mcdonalds/sdk/services/RonaldService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getSharedInstance()Lcom/mcdonalds/sdk/modules/ModuleManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mModuleManager:Lcom/mcdonalds/sdk/modules/ModuleManager;

    .line 136
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getSharedInstance()Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mConnectorManager:Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    .line 137
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mNotificationListener:Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mNotificationListener:Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->removeObserver(Landroid/content/BroadcastReceiver;)V

    .line 152
    iput-object v2, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mNotificationListener:Lcom/mcdonalds/sdk/services/RonaldService$NotificationListener;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mAlertNotificationListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mAlertNotificationListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->removeObserver(Landroid/content/BroadcastReceiver;)V

    .line 157
    iput-object v2, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mAlertNotificationListener:Landroid/content/BroadcastReceiver;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mAPIKeyInvalidNotificationListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 161
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mAPIKeyInvalidNotificationListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->removeObserver(Landroid/content/BroadcastReceiver;)V

    .line 162
    iput-object v2, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mAPIKeyInvalidNotificationListener:Landroid/content/BroadcastReceiver;

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/services/RonaldService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    iput-object v2, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mModuleManager:Lcom/mcdonalds/sdk/modules/ModuleManager;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->clearModules()V

    .line 171
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mConnectorManager:Lcom/mcdonalds/sdk/connectors/ConnectorManager;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->clearConnectors()V

    .line 172
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 141
    if-eqz p1, :cond_0

    const-string v0, "EXTRA_CONFIG_RELOAD_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "EXTRA_CONFIG_RELOAD_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/mcdonalds/sdk/services/RonaldService;->mReloadIntent:Landroid/content/Intent;

    .line 144
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/services/RonaldService;->stopSelf()V

    .line 183
    return-void
.end method
