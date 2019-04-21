.class Lcom/mcdonalds/app/startup/SplashActivity$6;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/startup/SplashActivity;->checkIfForceUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/startup/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/startup/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/mcdonalds/app/startup/SplashActivity$6;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 9
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v8, 0x1

    const-string v5, "onResponse"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    aput-object p2, v6, v8

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    if-nez p3, :cond_3

    if-eqz p1, :cond_3

    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;->versionInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;

    if-eqz v5, :cond_3

    .line 552
    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;->versionInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;

    iget-object v2, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->minVersion:Ljava/lang/String;

    .line 553
    .local v2, "minimumVersion":Ljava/lang/String;
    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;->versionInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;

    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWVersionInfo;->currentVersion:Ljava/lang/String;

    .line 557
    .local v0, "currentVersion":Ljava/lang/String;
    const-string v3, "0.0.0"

    .line 558
    .local v3, "versionNow":Ljava/lang/String;
    const-string v5, "^.*?([0-9]+(\\.[0-9]+)*).*$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 559
    .local v4, "versionPattern":Ljava/util/regex/Pattern;
    iget-object v5, p0, Lcom/mcdonalds/app/startup/SplashActivity$6;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v5}, Lcom/mcdonalds/app/startup/SplashActivity;->access$700(Lcom/mcdonalds/app/startup/SplashActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 560
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 565
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/startup/SplashActivity$6;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v5, v3, v0}, Lcom/mcdonalds/app/startup/SplashActivity;->access$800(Lcom/mcdonalds/app/startup/SplashActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 566
    const-string v5, "app version is current"

    invoke-static {v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->info(Ljava/lang/String;)V

    .line 567
    iget-object v5, p0, Lcom/mcdonalds/app/startup/SplashActivity$6;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v5}, Lcom/mcdonalds/app/startup/SplashActivity;->access$400(Lcom/mcdonalds/app/startup/SplashActivity;)V

    .line 604
    .end local v0    # "currentVersion":Ljava/lang/String;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "minimumVersion":Ljava/lang/String;
    .end local v3    # "versionNow":Ljava/lang/String;
    .end local v4    # "versionPattern":Ljava/util/regex/Pattern;
    :goto_0
    return-void

    .line 569
    .restart local v0    # "currentVersion":Ljava/lang/String;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v2    # "minimumVersion":Ljava/lang/String;
    .restart local v3    # "versionNow":Ljava/lang/String;
    .restart local v4    # "versionPattern":Ljava/util/regex/Pattern;
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/startup/SplashActivity$6;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v5, v3, v2}, Lcom/mcdonalds/app/startup/SplashActivity;->access$800(Lcom/mcdonalds/app/startup/SplashActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 572
    iget-object v5, p0, Lcom/mcdonalds/app/startup/SplashActivity$6;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/startup/SplashActivity$6;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    const v7, 0x7f090367

    .line 573
    invoke-virtual {v6, v7}, Lcom/mcdonalds/app/startup/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f090826

    new-instance v7, Lcom/mcdonalds/app/startup/SplashActivity$6$2;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/startup/SplashActivity$6$2;-><init>(Lcom/mcdonalds/app/startup/SplashActivity$6;)V

    .line 574
    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    const v6, 0x7f09057f

    new-instance v7, Lcom/mcdonalds/app/startup/SplashActivity$6$1;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/startup/SplashActivity$6$1;-><init>(Lcom/mcdonalds/app/startup/SplashActivity$6;)V

    .line 581
    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v5

    .line 588
    invoke-virtual {v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    .line 589
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 591
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v5

    const-string v6, "Recommend upgrade"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .line 594
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/startup/SplashActivity$6;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v5, v8}, Lcom/mcdonalds/app/startup/SplashActivity;->access$302(Lcom/mcdonalds/app/startup/SplashActivity;Z)Z

    .line 597
    iget-object v5, p0, Lcom/mcdonalds/app/startup/SplashActivity$6;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v5}, Lcom/mcdonalds/app/startup/SplashActivity;->access$600(Lcom/mcdonalds/app/startup/SplashActivity;)V

    goto :goto_0

    .line 602
    .end local v0    # "currentVersion":Ljava/lang/String;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "minimumVersion":Ljava/lang/String;
    .end local v3    # "versionNow":Ljava/lang/String;
    .end local v4    # "versionPattern":Ljava/util/regex/Pattern;
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/app/startup/SplashActivity$6;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v5}, Lcom/mcdonalds/app/startup/SplashActivity;->access$400(Lcom/mcdonalds/app/startup/SplashActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/startup/SplashActivity$6;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWForceUpdateResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
