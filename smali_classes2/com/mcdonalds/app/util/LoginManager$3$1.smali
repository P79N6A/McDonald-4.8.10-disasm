.class Lcom/mcdonalds/app/util/LoginManager$3$1;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/util/LoginManager$3;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/util/LoginManager$3;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/LoginManager$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/util/LoginManager$3;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/mcdonalds/app/util/LoginManager$3$1;->this$1:Lcom/mcdonalds/app/util/LoginManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager$3$1;->this$1:Lcom/mcdonalds/app/util/LoginManager$3;

    iget-object v0, v0, Lcom/mcdonalds/app/util/LoginManager$3;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    iget-object v1, p0, Lcom/mcdonalds/app/util/LoginManager$3$1;->this$1:Lcom/mcdonalds/app/util/LoginManager$3;

    iget-object v1, v1, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->access$300(Lcom/mcdonalds/app/util/LoginManager;Landroid/content/Context;)V

    .line 251
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager$3$1;->this$1:Lcom/mcdonalds/app/util/LoginManager$3;

    iget-object v0, v0, Lcom/mcdonalds/app/util/LoginManager$3;->val$activity:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 252
    return-void
.end method
