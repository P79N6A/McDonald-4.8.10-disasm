.class Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$1;
.super Ljava/lang/Object;
.source "GeoSuggestionsEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->init(Landroid/content/Context;)V
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
    .line 91
    iput-object p1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$1;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 94
    iget-object v0, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$1;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-static {v0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->access$100(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method
