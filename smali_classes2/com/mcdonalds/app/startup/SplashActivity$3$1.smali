.class Lcom/mcdonalds/app/startup/SplashActivity$3$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/startup/SplashActivity$3;->onRequestPermissionsResult(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/startup/SplashActivity$3;

.field final synthetic val$permission:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/startup/SplashActivity$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/startup/SplashActivity$3;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/mcdonalds/app/startup/SplashActivity$3$1;->this$1:Lcom/mcdonalds/app/startup/SplashActivity$3;

    iput-object p2, p0, Lcom/mcdonalds/app/startup/SplashActivity$3$1;->val$permission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x1

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 411
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/startup/SplashActivity$3$1;->val$permission:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Z)V

    .line 412
    iget-object v0, p0, Lcom/mcdonalds/app/startup/SplashActivity$3$1;->this$1:Lcom/mcdonalds/app/startup/SplashActivity$3;

    iget-object v0, v0, Lcom/mcdonalds/app/startup/SplashActivity$3;->this$0:Lcom/mcdonalds/app/startup/SplashActivity;

    iget-object v1, p0, Lcom/mcdonalds/app/startup/SplashActivity$3$1;->this$1:Lcom/mcdonalds/app/startup/SplashActivity$3;

    iget-object v1, v1, Lcom/mcdonalds/app/startup/SplashActivity$3;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/startup/SplashActivity;->performLogin(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    .line 413
    return-void
.end method
