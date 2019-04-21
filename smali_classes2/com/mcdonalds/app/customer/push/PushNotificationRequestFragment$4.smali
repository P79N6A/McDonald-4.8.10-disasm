.class Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$4;
.super Ljava/lang/Object;
.source "PushNotificationRequestFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;
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
        "Lcom/mcdonalds/app/model/PromoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$4;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/app/model/PromoResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/app/model/PromoResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$4;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/app/model/PromoResponse;->getPromos()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 297
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$4;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/app/model/PromoResponse;->getPromos()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$502(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Ljava/util/List;)Ljava/util/List;

    .line 302
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$4;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$500(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 304
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$4;->this$0:Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->access$600(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)V

    .line 306
    :cond_0
    return-void

    .end local v0    # "success":Z
    :cond_1
    move v0, v1

    .line 296
    goto :goto_0
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

    .line 292
    check-cast p1, Lcom/mcdonalds/app/model/PromoResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$4;->onResponse(Lcom/mcdonalds/app/model/PromoResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
