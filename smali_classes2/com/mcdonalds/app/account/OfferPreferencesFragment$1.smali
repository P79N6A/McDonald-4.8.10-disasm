.class Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;
.super Ljava/lang/Object;
.source "OfferPreferencesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/OfferPreferencesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "onClick"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v3, v1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$002(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Z)Z

    .line 123
    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$100(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$200(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/account/OfferData;

    .line 126
    .local v0, "offerData":Lcom/mcdonalds/app/account/OfferData;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/account/OfferData;->setState(Ljava/lang/Boolean;)V

    .line 127
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$300(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 130
    .end local v0    # "offerData":Lcom/mcdonalds/app/account/OfferData;
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$200(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/account/OfferData;

    .line 131
    .restart local v0    # "offerData":Lcom/mcdonalds/app/account/OfferData;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/account/OfferData;->setState(Ljava/lang/Boolean;)V

    .line 132
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$300(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 136
    .end local v0    # "offerData":Lcom/mcdonalds/app/account/OfferData;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    const-string v4, "All"

    iget-object v5, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$100(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    invoke-static {v3, v4, v1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$400(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Ljava/lang/String;Z)V

    .line 138
    iget-object v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$500(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V

    .line 140
    iget-object v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .line 141
    invoke-static {v1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$100(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Enable Offers preference"

    .line 140
    :goto_3
    invoke-static {v2, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void

    :cond_2
    move v1, v2

    .line 136
    goto :goto_2

    .line 141
    :cond_3
    const-string v1, "Disable Offers preference"

    goto :goto_3
.end method
