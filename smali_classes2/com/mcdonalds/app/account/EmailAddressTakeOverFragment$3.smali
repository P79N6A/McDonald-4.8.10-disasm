.class Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment$3;
.super Ljava/lang/Object;
.source "EmailAddressTakeOverFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment$3;->this$0:Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 112
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment$3;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/Void;
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

    .line 116
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 117
    if-eqz p3, :cond_1

    .line 119
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment$3;->this$0:Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "validation_method"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    iget-object v1, p0, Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment$3;->this$0:Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;

    const-class v2, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    const-string v3, "mail_validation"

    invoke-virtual {v1, v2, v3, v0}, Lcom/mcdonalds/app/account/EmailAddressTakeOverFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
