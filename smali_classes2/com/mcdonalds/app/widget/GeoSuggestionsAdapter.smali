.class public Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "GeoSuggestionsAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private filter:Landroid/widget/Filter;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->context:Landroid/content/Context;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->addresses:Ljava/util/List;

    .line 36
    return-void
.end method

.method private setPinImage(Landroid/view/View;Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;)V
    .locals 5
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "holder"    # Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;

    .prologue
    const-string v2, "setPinImage"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.storelocator.predictiveGeocoderResultIcon"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "pinId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 98
    iget-object v2, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "imgRes":I
    if-eqz v0, :cond_0

    .line 100
    const v2, 0x7f110066

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;->pin:Landroid/widget/ImageView;

    .line 101
    iget-object v2, p2, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;->pin:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    .end local v0    # "imgRes":I
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

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    const-string v0, "getFilter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->addresses:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 46
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
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

    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 62
    if-nez p2, :cond_3

    .line 64
    iget-object v3, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040136

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance v1, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;

    invoke-direct {v1, p0, v6}, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$1;)V

    .line 67
    .local v1, "holder":Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;
    const v3, 0x7f110067

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 68
    const v3, 0x7f110437

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 70
    invoke-direct {p0, p2, v1}, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->setPinImage(Landroid/view/View;Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;)V

    .line 72
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :goto_0
    const-class v3, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;

    invoke-static {p2, v3, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 78
    iget-object v3, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->addresses:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 79
    .local v0, "address":Landroid/location/Address;
    iget-object v3, v1, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v2, "subtitleBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 86
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_1
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_2
    iget-object v3, v1, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v3, "getView"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-static {v6, v3}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 74
    .end local v0    # "address":Landroid/location/Address;
    .end local v1    # "holder":Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;
    .end local v2    # "subtitleBuilder":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setAddresses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const-string v0, "setAddresses"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->notifyDataSetChanged()V

    .line 119
    return-void
.end method

.method public setFilter(Landroid/widget/Filter;)V
    .locals 3
    .param p1, "filter"    # Landroid/widget/Filter;

    .prologue
    const-string v0, "setFilter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iput-object p1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;->filter:Landroid/widget/Filter;

    .line 113
    return-void
.end method
