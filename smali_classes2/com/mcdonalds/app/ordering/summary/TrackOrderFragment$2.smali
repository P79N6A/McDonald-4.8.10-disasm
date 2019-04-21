.class Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;
.super Ljava/lang/Object;
.source "TrackOrderFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;
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
        "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 11
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "onResponse"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object p2, v6, v9

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    if-nez p1, :cond_0

    .line 112
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$100(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 139
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    .line 117
    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->getTimestamp()Ljava/util/Date;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "estimatedDeliveryTime":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->getStatus()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    .line 120
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    invoke-virtual {v5, v8}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->setVisibility(I)V

    .line 121
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->setVisibility(I)V

    .line 122
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    invoke-virtual {v5, v9}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->setCancelled(Z)V

    .line 135
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->getStatus()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 136
    .local v3, "lastIndex":I
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    .line 137
    .local v4, "lastStatus":Lcom/mcdonalds/app/ui/DeliveryStatusView;
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$100(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 138
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5, v4}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$300(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;Landroid/view/View;)V

    goto :goto_0

    .line 124
    .end local v3    # "lastIndex":I
    .end local v4    # "lastStatus":Lcom/mcdonalds/app/ui/DeliveryStatusView;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;->getStatus()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 125
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    invoke-virtual {v5, v9}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->setCompleted(Z)V

    .line 126
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    invoke-virtual {v5, v8}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->setCancelled(Z)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 129
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x2

    .line 130
    .local v0, "deliveredIndex":I
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->isCompleted()Z

    move-result v5

    if-nez v5, :cond_1

    .line 131
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$200(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    invoke-virtual {v5, v1}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->setCompletionTime(Ljava/lang/String;)V

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

    .line 107
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
