.class Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$3;
.super Ljava/lang/Object;
.source "NutritionCategoryGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 144
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
