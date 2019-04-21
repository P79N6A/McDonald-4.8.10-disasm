.class Lcom/mcdonalds/app/navigation/DrawerListAdapter$1;
.super Landroid/widget/Filter;
.source "DrawerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/navigation/DrawerListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/navigation/DrawerListAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/navigation/DrawerListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter$1;->this$0:Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const-string v4, "performFiltering"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 158
    .local v3, "results":Landroid/widget/Filter$FilterResults;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "filteredItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/app/ui/models/DrawerItem;>;"
    const/4 v2, 0x0

    .line 161
    .local v2, "loggedIn":Z
    const-string v4, "logged_in_state"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    const/4 v2, 0x1

    .line 167
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter$1;->this$0:Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    invoke-static {v4}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->access$000(Lcom/mcdonalds/app/navigation/DrawerListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/models/DrawerItem;

    .line 168
    .local v1, "item":Lcom/mcdonalds/app/ui/models/DrawerItem;
    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->isRequiresLoginState()Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->isRequiresLogoutState()Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_3

    .line 169
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    .end local v1    # "item":Lcom/mcdonalds/app/ui/models/DrawerItem;
    :cond_2
    const-string v4, "logged_out_state"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const/4 v2, 0x0

    goto :goto_0

    .line 171
    .restart local v1    # "item":Lcom/mcdonalds/app/ui/models/DrawerItem;
    :cond_3
    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->isRequiresLoginState()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    :cond_4
    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->isRequiresLogoutState()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->isRequiresLogoutState()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v2, :cond_5

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_5
    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/models/DrawerItem;->isRequiresLoginState()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    .end local v1    # "item":Lcom/mcdonalds/app/ui/models/DrawerItem;
    :cond_6
    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 181
    return-object v3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const-string v0, "publishResults"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v1, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter$1;->this$0:Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->access$102(Lcom/mcdonalds/app/navigation/DrawerListAdapter;Ljava/util/List;)Ljava/util/List;

    .line 187
    iget-object v0, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter$1;->this$0:Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->clear()V

    .line 188
    iget-object v0, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter$1;->this$0:Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter$1;->this$0:Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    invoke-static {v1}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->access$100(Lcom/mcdonalds/app/navigation/DrawerListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->addAll(Ljava/util/Collection;)V

    .line 189
    iget-object v0, p0, Lcom/mcdonalds/app/navigation/DrawerListAdapter$1;->this$0:Lcom/mcdonalds/app/navigation/DrawerListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/navigation/DrawerListAdapter;->notifyDataSetChanged()V

    .line 190
    return-void
.end method
