.class Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$2;
.super Ljava/lang/Object;
.source "CybersourceConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->saveCard(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ILjava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/modules/models/CreditCard;Lcom/mcdonalds/sdk/AsyncListener;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;

.field final synthetic val$registerReturnListener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$registerReturnUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$2;->this$0:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$2;->val$registerReturnUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$2;->val$registerReturnListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 164
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$2;->onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$2;->this$0:Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$2;->val$registerReturnUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$2;->val$registerReturnListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v0, p1, v1, v2}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->access$000(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 168
    return-void
.end method
