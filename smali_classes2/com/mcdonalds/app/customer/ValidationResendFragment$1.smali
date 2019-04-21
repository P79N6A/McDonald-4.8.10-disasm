.class Lcom/mcdonalds/app/customer/ValidationResendFragment$1;
.super Ljava/lang/Object;
.source "ValidationResendFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/ValidationResendFragment;
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
.field final synthetic this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/ValidationResendFragment;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$1;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

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

    .line 166
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/ValidationResendFragment$1;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$1;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->access$000(Lcom/mcdonalds/app/customer/ValidationResendFragment;)V

    .line 171
    if-nez p3, :cond_1

    .line 173
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$1;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 174
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/mcdonalds/app/customer/ValidationResendFragment$1;->this$0:Lcom/mcdonalds/app/customer/ValidationResendFragment;

    const-string v2, "mail_validation"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/customer/ValidationResendFragment;->showFragment(Ljava/lang/String;)V

    .line 181
    .end local v0    # "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
