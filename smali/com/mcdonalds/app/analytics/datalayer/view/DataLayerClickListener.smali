.class public Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;
.super Ljava/lang/Object;
.source "DataLayerClickListener.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private innerItemViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private innerViewListener:Landroid/view/View$OnClickListener;

.field private tag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "innerViewListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->innerViewListener:Landroid/view/View$OnClickListener;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "innerItemViewListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->innerItemViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "innerItemViewListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->tag:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->innerItemViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 44
    return-void
.end method

.method private getButtonTag(Landroid/view/View;)Ljava/lang/String;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v4, "getButtonTag"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const v4, 0x7f110009

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .local v2, "realTag":Ljava/lang/String;
    const v4, 0x7f110008

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, "rawTag":Ljava/lang/String;
    const v4, 0x7f110006

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "pageTag":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 124
    move-object v3, v2

    .line 136
    .local v3, "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 126
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 127
    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerButtonMapping;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 129
    move-object v3, v1

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v3    # "result":Ljava/lang/String;
    :cond_2
    const-string v3, "Unknown"

    .line 132
    .restart local v3    # "result":Ljava/lang/String;
    const-string v4, "There is no tag set for this button click."

    invoke-static {v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->reportWarning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getItemTag(Landroid/view/View;)Ljava/lang/String;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v3, "getItemTag"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const v3, 0x7f110009

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    .local v1, "realTag":Ljava/lang/String;
    const v3, 0x7f110008

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, "rawTag":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 146
    move-object v2, v1

    .line 158
    .local v2, "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 148
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerItemMapping;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 149
    invoke-static {v0}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerItemMapping;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 151
    move-object v2, v0

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 153
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    const-string v2, "Unknown"

    .line 154
    .restart local v2    # "result":Ljava/lang/String;
    const-string v3, "There is no tag set for this list item click."

    invoke-static {v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->reportWarning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPositionTag(Landroid/view/View;)I
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f110007

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.analytics.datalayer.view.DataLayerClickListener"

    const-string v2, "getPositionTag"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-virtual {p0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 208
    :goto_0
    return v0

    .line 209
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private reportClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v2, "reportClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->getPositionTag(Landroid/view/View;)I

    move-result v1

    .line 107
    .local v1, "position":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->getButtonTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "itemTag":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logButtonClick(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 111
    .end local v0    # "itemTag":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->getItemTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "itemTag":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logItemClick(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static setDataLayerTag(Landroid/support/design/widget/TabLayout$Tab;Ljava/lang/String;)V
    .locals 5
    .param p0, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.analytics.datalayer.view.DataLayerClickListener"

    const-string v2, "setDataLayerTag"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    if-eqz p0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    .line 171
    :cond_0
    return-void
.end method

.method public static setDataLayerTag(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p0, "v"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.analytics.datalayer.view.DataLayerClickListener"

    const-string v7, "setDataLayerTag"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v10

    aput-object p1, v8, v11

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    new-array v5, v11, [I

    const v6, 0x101014f

    aput v6, v5, v10

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, -0x1

    invoke-virtual {v0, v10, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 179
    .local v4, "resId":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    .local v1, "asString":Ljava/lang/String;
    :goto_0
    const v5, 0x7f110008

    invoke-virtual {p0, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 185
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    instance-of v5, p1, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    if-eqz v5, :cond_0

    .line 188
    check-cast p1, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getVisibleDataLayerPage()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "pageTag":Ljava/lang/String;
    const v5, 0x7f110006

    invoke-virtual {p0, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 191
    .end local v3    # "pageTag":Ljava/lang/String;
    :cond_0
    return-void

    .line 180
    .end local v1    # "asString":Ljava/lang/String;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 181
    .local v2, "exception":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "Unknown"

    .restart local v1    # "asString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewHolderClass"    # Ljava/lang/Class;
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.analytics.datalayer.view.DataLayerClickListener"

    const-string v2, "setDataLayerTag"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    if-eqz p0, :cond_0

    .line 202
    const v0, 0x7f110008

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 203
    const v0, 0x7f110007

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 205
    :cond_0
    return-void
.end method

.method public static setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.analytics.datalayer.view.DataLayerClickListener"

    const-string v2, "setDataLayerTag"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    if-eqz p0, :cond_0

    .line 163
    const v0, 0x7f110009

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static setDataLayerTag(Landroid/view/View;Ljava/lang/String;I)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "itemTag"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.analytics.datalayer.view.DataLayerClickListener"

    const-string v2, "setDataLayerTag"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    if-eqz p0, :cond_0

    .line 195
    const v0, 0x7f110009

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 196
    const v0, 0x7f110007

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->isEnabled(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->reportClick(Landroid/view/View;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->innerViewListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->innerViewListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 55
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "onItemClick"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->isEnabled(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->tag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 62
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logItemClick(Ljava/lang/String;I)V

    .line 68
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->innerItemViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->innerItemViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 71
    :cond_1
    return-void

    .line 64
    :cond_2
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->reportClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const-string v0, "onTabReselected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 6
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const-string v3, "onTabSelected"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->isEnabled(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "tabTitle":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, "tabTag":Ljava/lang/String;
    invoke-static {v1}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerTabMapping;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 81
    invoke-static {v1}, Lcom/mcdonalds/app/analytics/datalayer/mapping/DataLayerTabMapping;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .end local v1    # "tabTag":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v2, :cond_3

    .line 88
    const-string v3, "There is no text for this tab click"

    invoke-static {v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->reportWarning(Ljava/lang/String;)V

    .line 96
    .end local v2    # "tabTitle":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 83
    .restart local v1    # "tabTag":Ljava/lang/String;
    .restart local v2    # "tabTitle":Ljava/lang/String;
    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 92
    .end local v1    # "tabTag":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 94
    .local v0, "tabPosition":I
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logItemClick(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const-string v0, "onTabUnselected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method
