.class Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$GeoSuggestionsFilter;
.super Landroid/widget/Filter;
.source "GeoSuggestionsEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeoSuggestionsFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$GeoSuggestionsFilter;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;
    .param p2, "x1"    # Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$GeoSuggestionsFilter;-><init>(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "performFiltering"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Lcom/mcdonalds/app/widget/GeoLocationTask;

    invoke-direct {v0}, Lcom/mcdonalds/app/widget/GeoLocationTask;-><init>()V

    iget-object v1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$GeoSuggestionsFilter;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .line 161
    invoke-static {v1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->access$300(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$GeoSuggestionsFilter;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-static {v2}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->access$400(Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/widget/GeoLocationTask;->setBounds(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)Lcom/mcdonalds/app/widget/GeoLocationTask;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$GeoSuggestionsFilter;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .line 162
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/GeoLocationTask;->setListener(Lcom/mcdonalds/app/widget/GeoLocationTask$GeolocationListener;)Lcom/mcdonalds/app/widget/GeoLocationTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText$GeoSuggestionsFilter;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .line 163
    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/widget/GeoLocationTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 166
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_1
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
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

    .line 172
    return-void
.end method
