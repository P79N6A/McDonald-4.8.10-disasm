.class Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;
.super Ljava/lang/Object;
.source "UserValidationFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/UserValidationFragment$4;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/mcdonalds/app/customer/UserValidationFragment$4;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/UserValidationFragment$4;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/customer/UserValidationFragment$4;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;->this$1:Lcom/mcdonalds/app/customer/UserValidationFragment$4;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

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

    .line 254
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

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

    .line 260
    if-nez p3, :cond_0

    .line 262
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;->this$1:Lcom/mcdonalds/app/customer/UserValidationFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->doSignIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    .line 285
    :goto_0
    return-void

    .line 264
    :cond_0
    instance-of v0, p3, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    if-eqz v0, :cond_4

    .line 265
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x83f

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x3f3

    if-ne v0, v1, :cond_2

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;->this$1:Lcom/mcdonalds/app/customer/UserValidationFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;->this$1:Lcom/mcdonalds/app/customer/UserValidationFragment$4;

    iget-object v2, v2, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    const v3, 0x7f09006b

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$800(Lcom/mcdonalds/app/customer/UserValidationFragment;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x89b

    if-ne v0, v1, :cond_3

    .line 277
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;->this$1:Lcom/mcdonalds/app/customer/UserValidationFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/customer/UserValidationFragment$4;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$4$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->doSignIn(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V

    goto :goto_0

    .line 279
    :cond_3
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 282
    :cond_4
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
