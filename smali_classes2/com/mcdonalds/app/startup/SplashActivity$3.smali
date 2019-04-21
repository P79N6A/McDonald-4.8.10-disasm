.class Lcom/mcdonalds/app/startup/SplashActivity$3;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/startup/SplashActivity;->requestPermission(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/startup/SplashActivity;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/startup/SplashActivity;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/startup/SplashActivity;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/mcdonalds/app/startup/SplashActivity$3;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    iput-object p2, p0, Lcom/mcdonalds/app/startup/SplashActivity$3;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(ILjava/lang/String;I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantResult"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "onRequestPermissionsResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity$3;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09037a

    .line 398
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090379

    .line 399
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090826

    new-instance v2, Lcom/mcdonalds/app/startup/SplashActivity$3$2;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/app/startup/SplashActivity$3$2;-><init>(Lcom/mcdonalds/app/startup/SplashActivity$3;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09057f

    new-instance v2, Lcom/mcdonalds/app/startup/SplashActivity$3$1;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/app/startup/SplashActivity$3$1;-><init>(Lcom/mcdonalds/app/startup/SplashActivity$3;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 421
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 419
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity$3;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    iget-object v1, p0, Lcom/mcdonalds/app/startup/SplashActivity$3;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/startup/SplashActivity;->performLogin(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    goto :goto_0
.end method
