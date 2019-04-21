.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->checkAutoLoginFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

.field final synthetic val$prefSavedLogin:Ljava/lang/String;

.field final synthetic val$prefSavedLoginPass:Ljava/lang/String;

.field final synthetic val$prefSavedSocialID:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iput p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;->val$prefSavedSocialID:I

    iput-object p3, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;->val$prefSavedLogin:Ljava/lang/String;

    iput-object p4, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;->val$prefSavedLoginPass:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-static {}, Lcom/mcdonalds/app/util/ConfigurationUtils;->isGmaLiteFlow()Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v0, "extras":Landroid/os/Bundle;
    iget v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;->val$prefSavedSocialID:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 342
    const-string v1, "EXTRA_AUTO_LOGIN_USERNAME"

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;->val$prefSavedLogin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v1, "EXTRA_AUTO_LOGIN_PASSWORD"

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;->val$prefSavedLoginPass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v2, Lcom/mcdonalds/app/customer/SignInActivity;

    const-string v3, "signin"

    invoke-virtual {v1, v2, v3, v0}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 353
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 345
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string v1, "EXTRA_AUTO_LOGIN_USERNAME"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "EXTRA_AUTO_LOGIN_PASSWORD"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$2;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    const-class v2, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_1
.end method
