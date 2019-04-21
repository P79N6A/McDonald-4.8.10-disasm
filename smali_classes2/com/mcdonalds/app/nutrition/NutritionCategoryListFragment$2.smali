.class Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$2;
.super Ljava/lang/Object;
.source "NutritionCategoryListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$2;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const-string v3, "onItemClick"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p4, p5}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$2;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$2;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->access$000(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, p3, v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 195
    .local v2, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 196
    .local v1, "bundle":Landroid/os/Bundle;
    sget-object v3, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 198
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$2;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    const-class v4, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridActivity;

    sget-object v5, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 202
    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$2;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    .line 203
    invoke-virtual {v4}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    const-string v4, "On click"

    .line 204
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    const/16 v4, 0x1c

    .line 205
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->addCustom(ILjava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    const-string v4, "Nutrition category"

    .line 206
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 209
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v3, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 210
    return-void
.end method
