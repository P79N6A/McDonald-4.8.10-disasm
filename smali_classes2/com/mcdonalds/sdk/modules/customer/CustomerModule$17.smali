.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->trackNotification(ILjava/lang/String;I)Lcom/mcdonalds/sdk/AsyncToken;
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
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$deliveryId:Ljava/lang/String;

.field final synthetic val$hexMessageId:Ljava/lang/String;

.field final synthetic val$tagId:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;->val$hexMessageId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;->val$deliveryId:Ljava/lang/String;

    iput p4, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;->val$tagId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 802
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 805
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;->val$hexMessageId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;->val$deliveryId:Ljava/lang/String;

    iget v3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$17;->val$tagId:I

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$500(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Ljava/lang/String;Ljava/lang/String;I)V

    .line 806
    return-void
.end method
