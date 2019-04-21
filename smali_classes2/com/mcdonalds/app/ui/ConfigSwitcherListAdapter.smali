.class public Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConfigSwitcherListAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;,
        Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final SECTION_MAX_VALUES:[I

.field private static final SECTION_TITLES:[Ljava/lang/String;


# instance fields
.field private configList:[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private sectionIndices:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 23
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Master"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Core GMA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DAP"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RDI/eCP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Temporary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->SECTION_TITLES:[Ljava/lang/String;

    .line 24
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->SECTION_MAX_VALUES:[I

    return-void

    :array_0
    .array-data 4
        0x9
        0x1f3
        0x383
        0x3e6
        0x3e7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "configList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->context:Landroid/content/Context;

    .line 32
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->configList:[Ljava/lang/String;

    .line 33
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->getSectionIndices(Ljava/util/List;)[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->sectionIndices:[Ljava/lang/Integer;

    .line 34
    return-void
.end method

.method private getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const-string v3, "getDisplayName"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    const-string v0, "config"

    .line 151
    .local v0, "cutoff":Ljava/lang/String;
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "split":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    aget-object v3, v1, v6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const/4 v3, 0x2

    array-length v4, v1

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 155
    .local v2, "subSplit":[Ljava/lang/String;
    const-string v3, " "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .end local v2    # "subSplit":[Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const-string v3, " "

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getSectionIndices(Ljava/util/List;)[Ljava/lang/Integer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .local p1, "configList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const-string v6, "getSectionIndices"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v4, 0x0

    .line 41
    .local v4, "sectionIndexIndex":I
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 42
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    .local v0, "configName":Ljava/lang/String;
    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "splitName":[Ljava/lang/String;
    const/4 v1, -0x1

    .line 47
    .local v1, "configNum":I
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    :goto_1
    sget-object v6, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->SECTION_MAX_VALUES:[I

    aget v6, v6, v4

    if-le v1, v6, :cond_0

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "configName":Ljava/lang/String;
    .end local v1    # "configNum":I
    .end local v5    # "splitName":[Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Integer;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    return-object v6

    .line 48
    .restart local v0    # "configName":Ljava/lang/String;
    .restart local v1    # "configNum":I
    .restart local v5    # "splitName":[Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private getSectionTitle(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-string v1, "getSectionTitle"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->sectionIndices:[Ljava/lang/Integer;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ii":I
    :goto_0
    if-ltz v0, :cond_1

    .line 163
    iget-object v1, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->sectionIndices:[Ljava/lang/Integer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 164
    sget-object v1, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->SECTION_TITLES:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 168
    :goto_1
    return-object v1

    .line 162
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 168
    :cond_1
    const-string v1, "Unknown"

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->configList:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getHeaderId(I)J
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, 0x0

    const-string v5, "getHeaderId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v8

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    const-wide/16 v2, 0x0

    .line 118
    .local v2, "result":J
    iget-object v5, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->configList:[Ljava/lang/String;

    aget-object v0, v5, p1

    .line 119
    .local v0, "configName":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "splitName":[Ljava/lang/String;
    const/4 v1, -0x1

    .line 123
    .local v1, "configNum":I
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    sget-object v5, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->SECTION_MAX_VALUES:[I

    array-length v5, v5

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    sget-object v5, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->SECTION_MAX_VALUES:[I

    long-to-int v6, v2

    aget v5, v5, v6

    if-le v1, v5, :cond_0

    .line 128
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_0

    .line 131
    :cond_0
    return-wide v2

    .line 124
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const-string v1, "getHeaderView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    if-nez p2, :cond_0

    .line 100
    new-instance v0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;-><init>(Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;)V

    .line 101
    .local v0, "holder":Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;
    iget-object v1, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040189

    .line 102
    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 103
    const v1, 0x7f1100bf

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;->text:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    :goto_0
    iget-object v1, v0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;->text:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->getSectionTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-object p2

    .line 106
    .end local v0    # "holder":Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;

    .restart local v0    # "holder":Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$HeaderViewHolder;
    goto :goto_0
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

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->configList:[Ljava/lang/String;

    aget-object v0, v0, p1

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

    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 79
    if-nez p2, :cond_0

    .line 80
    new-instance v0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;)V

    .line 81
    .local v0, "holder":Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090016

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 83
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    const-class v1, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$ViewHolder;

    invoke-static {p2, v1, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 90
    iget-object v1, v0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->configList:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v1, "getView"

    invoke-static {p0, v1}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 86
    .end local v0    # "holder":Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter$ViewHolder;
    goto :goto_0
.end method
