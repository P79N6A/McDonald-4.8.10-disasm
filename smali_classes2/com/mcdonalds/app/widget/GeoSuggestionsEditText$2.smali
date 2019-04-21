.class Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$2;
.super Ljava/lang/Object;
.source "GeoSuggestionsEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$2;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const-string v0, "onFocusChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$2;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-static {v0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->access$200(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$2;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-static {v0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->access$200(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 153
    :cond_0
    return-void
.end method
