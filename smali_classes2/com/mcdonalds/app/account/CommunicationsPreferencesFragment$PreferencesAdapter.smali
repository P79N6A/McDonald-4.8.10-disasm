.class public Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommunicationsPreferencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreferencesAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPreferencesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Ljava/util/TreeMap;)V
    .locals 4
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;>;"
    iput-object p1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 236
    invoke-virtual {p1}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;->mPreferencesList:Ljava/util/List;

    .line 239
    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;->mPreferencesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;->mPreferencesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItemId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 262
    if-nez p2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04018f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 265
    new-instance v1, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-direct {v1, v2, p2}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;-><init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Landroid/view/View;)V

    .line 266
    .local v1, "holder":Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 272
    :goto_0
    const-class v2, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    invoke-static {p2, v2, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 274
    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;->mPreferencesList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    .line 275
    .local v0, "entry":Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;->bind(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;)V

    .line 277
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v2, "getView"

    invoke-static {p0, v2}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 270
    .end local v0    # "entry":Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;
    .end local v1    # "holder":Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;

    .restart local v1    # "holder":Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;
    goto :goto_0
.end method
