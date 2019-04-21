.class Lcom/mcdonalds/app/ui/listview/AdapterViewUtil;
.super Ljava/lang/Object;
.source "AdapterViewUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPositionForView(Landroid/widget/AdapterView;Landroid/view/View;)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.ui.listview.AdapterViewUtil"

    const-string v3, "getPositionForView"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 25
    .local v0, "position":I
    instance-of v1, p0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 26
    check-cast p0, Landroid/widget/ListView;

    .end local p0    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 29
    :cond_0
    return v0
.end method
