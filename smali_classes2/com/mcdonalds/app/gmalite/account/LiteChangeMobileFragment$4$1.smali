.class Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4$1;
.super Ljava/lang/Object;
.source "LiteChangeMobileFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4$1;->this$1:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4$1;->this$1:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;

    iget-object v1, v1, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "shouldGoToPreviousView"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4$1;->this$1:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;

    iget-object v1, v1, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
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

    .line 224
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4$1;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
