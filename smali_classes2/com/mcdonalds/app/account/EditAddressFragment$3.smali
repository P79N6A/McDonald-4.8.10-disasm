.class Lcom/mcdonalds/app/account/EditAddressFragment$3;
.super Ljava/lang/Object;
.source "EditAddressFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/EditAddressFragment;->refreshAvailableElements()V
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
        "Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/EditAddressFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/EditAddressFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$3;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;
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

    .line 285
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$3;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/EditAddressFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 286
    if-nez p3, :cond_2

    .line 287
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$3;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v1, p1}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$302(Lcom/mcdonalds/app/account/EditAddressFragment;Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;)Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;

    .line 288
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$3;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$402(Lcom/mcdonalds/app/account/EditAddressFragment;Ljava/util/Map;)Ljava/util/Map;

    .line 289
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->getAddressElementValidationRules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;

    .line 290
    .local v0, "rule":Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;
    iget-object v2, p0, Lcom/mcdonalds/app/account/EditAddressFragment$3;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$400(Lcom/mcdonalds/app/account/EditAddressFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    .end local v0    # "rule":Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$3;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$500(Lcom/mcdonalds/app/account/EditAddressFragment;)V

    .line 297
    :cond_1
    :goto_1
    return-void

    .line 294
    :cond_2
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1
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

    .line 282
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/EditAddressFragment$3;->onResponse(Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
