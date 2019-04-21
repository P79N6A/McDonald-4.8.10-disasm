.class Lcom/mcdonalds/app/util/LoginManager$5;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/util/LoginManager;
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
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/util/LoginManager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/util/LoginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/util/LoginManager;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/mcdonalds/app/util/LoginManager$5;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
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

    .line 694
    if-eqz p3, :cond_0

    .line 695
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 698
    :cond_0
    if-eqz p1, :cond_1

    .line 699
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager$5;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/util/LoginManager;->access$102(Lcom/mcdonalds/app/util/LoginManager;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 700
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager$5;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    invoke-static {v0}, Lcom/mcdonalds/app/util/LoginManager;->access$1200(Lcom/mcdonalds/app/util/LoginManager;)V

    .line 701
    iget-object v0, p0, Lcom/mcdonalds/app/util/LoginManager$5;->this$0:Lcom/mcdonalds/app/util/LoginManager;

    const/16 v1, 0xbba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->notifyObservers(Ljava/lang/Object;)V

    .line 703
    :cond_1
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

    .line 690
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/util/LoginManager$5;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
