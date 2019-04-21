.class public Lcom/mcdonalds/app/util/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;,
        Lcom/mcdonalds/app/util/UIUtils$MCDFullScreenAlertDialogBuilder;,
        Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_DIALOG_CLICK_LISTENER:Landroid/content/DialogInterface$OnClickListener;

.field private static final ISO8601_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SHORT_DATE_FORMAT:Ljava/text/DateFormat;

.field public static final TAG:Ljava/lang/String;

.field private static orderingDisclaimerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sDayPartsListener:Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;

.field private static sDayPartsResponse:Lcom/mcdonalds/app/ui/models/DayPartsResponse;

.field private static sEmailPattern:Ljava/lang/String;

.field private static sLoadingDayParts:Z

.field private static sNumberPattern:Ljava/lang/String;

.field private static sProgressDialog:Landroid/app/ProgressDialog;

.field private static sProgressDisplayed:Z

.field private static sProgressKey:Ljava/lang/String;

.field private static sPwdPattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/util/UIUtils;->orderingDisclaimerItems:Ljava/util/ArrayList;

    .line 86
    const-class v0, Lcom/mcdonalds/app/util/UIUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/UIUtils;->TAG:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/mcdonalds/app/util/UIUtils$1;

    invoke-direct {v0}, Lcom/mcdonalds/app/util/UIUtils$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/util/UIUtils;->DEFAULT_DIALOG_CLICK_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/app/util/UIUtils;->ISO8601_FORMAT:Ljava/text/SimpleDateFormat;

    .line 96
    const/4 v0, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/UIUtils;->SHORT_DATE_FORMAT:Ljava/text/DateFormat;

    .line 107
    const-class v0, Lcom/mcdonalds/app/util/UIUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/UIUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(ILcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {p0, p1}, Lcom/mcdonalds/app/util/UIUtils;->sendDayPartsResponse(ILcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/ui/models/DayPartsResponse;)Lcom/mcdonalds/app/ui/models/DayPartsResponse;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/models/DayPartsResponse;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "access$202"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sput-object p0, Lcom/mcdonalds/app/util/UIUtils;->sDayPartsResponse:Lcom/mcdonalds/app/ui/models/DayPartsResponse;

    return-object p0
.end method

.method static synthetic access$302(Z)Z
    .locals 6
    .param p0, "x0"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "access$302"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sput-boolean p0, Lcom/mcdonalds/app/util/UIUtils;->sLoadingDayParts:Z

    return p0
.end method

.method public static addDisclaimerTextView(Landroid/view/ViewGroup;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentView"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.UIUtils"

    const-string v4, "addDisclaimerTextView"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1180
    invoke-static {p1}, Lcom/mcdonalds/app/util/UIUtils;->getOrderingDisclaimerItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1181
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;

    .line 1182
    .local v0, "item":Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;
    const-string v3, "basketView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->hasBasketView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1183
    invoke-static {p0, p1, v0}, Lcom/mcdonalds/app/util/UIUtils;->addView(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;)V

    goto :goto_0

    .line 1184
    :cond_1
    const-string v3, "productView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->hasProductView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1185
    invoke-static {p0, p1, v0}, Lcom/mcdonalds/app/util/UIUtils;->addView(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;)V

    goto :goto_0

    .line 1186
    :cond_2
    const-string v3, "menuGridView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->hasMenuGridView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1187
    invoke-static {p0, p1, v0}, Lcom/mcdonalds/app/util/UIUtils;->addView(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;)V

    goto :goto_0

    .line 1188
    :cond_3
    const-string v3, "orderSummaryView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->hasOrderSummaryView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1189
    invoke-static {p0, p1, v0}, Lcom/mcdonalds/app/util/UIUtils;->addView(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;)V

    goto :goto_0

    .line 1192
    .end local v0    # "item":Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;
    :cond_4
    return-void
.end method

.method public static addPagerIndicatorDot(ILandroid/content/Context;Landroid/widget/RadioGroup;)V
    .locals 12
    .param p0, "i"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/widget/RadioGroup;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v6, "com.mcdonalds.app.util.UIUtils"

    const-string v7, "addPagerIndicatorDot"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v11, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    const/4 v6, 0x7

    invoke-static {p1, v6}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v5

    .line 672
    .local v5, "size":I
    const/4 v6, 0x4

    invoke-static {p1, v6}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v3

    .line 673
    .local v3, "margin":I
    const/16 v6, 0x8

    invoke-static {p1, v6}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v4

    .line 675
    .local v4, "padding":I
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 676
    .local v2, "lp":Landroid/widget/RadioGroup$LayoutParams;
    invoke-virtual {v2, v3, v10, v3, v10}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 678
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 679
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040174

    invoke-virtual {v1, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 680
    .local v0, "indicator":Landroid/widget/RadioButton;
    invoke-virtual {v0, v4, v10, v4, v10}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 681
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setId(I)V

    .line 684
    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 685
    return-void
.end method

.method private static addView(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;)V
    .locals 9
    .param p0, "rootView"    # Landroid/view/ViewGroup;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.UIUtils"

    const-string v3, "addView"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    aput-object p1, v4, v8

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    if-nez p1, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1199
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040071

    .line 1200
    invoke-virtual {v1, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1201
    .local v0, "textView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    invoke-virtual {p2}, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    invoke-virtual {p2}, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->useThemeColor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1205
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1208
    :cond_1
    invoke-virtual {p2}, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;->useBoldText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1209
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1212
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static disableInteraction(Landroid/widget/TextView;)V
    .locals 5
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "disableInteraction"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 811
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 812
    new-instance v0, Lcom/mcdonalds/app/util/UIUtils$4;

    invoke-direct {v0}, Lcom/mcdonalds/app/util/UIUtils$4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 833
    return-void
.end method

.method public static dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.UIUtils"

    const-string v3, "dismissKeyboard"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 544
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 545
    return-void
.end method

.method public static distanceFromLocation(Landroid/content/Context;Landroid/location/Location;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.UIUtils"

    const-string v3, "distanceFromLocation"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-static {p2, p1}, Lcom/mcdonalds/app/util/UIUtils;->metersFromLocation(Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/location/Location;)Ljava/lang/Float;

    move-result-object v0

    .line 235
    .local v0, "distance":Ljava/lang/Float;
    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromMeters(Landroid/content/Context;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static distanceFromMeters(Landroid/content/Context;Ljava/lang/Double;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "meters"    # Ljava/lang/Double;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "distanceFromMeters"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromMeters(Landroid/content/Context;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static distanceFromMeters(Landroid/content/Context;Ljava/lang/Float;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "distance"    # Ljava/lang/Float;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.UIUtils"

    const-string v3, "distanceFromMeters"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    if-eqz p1, :cond_2

    .line 213
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.storelocator.metricSystem"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 214
    .local v0, "useMetric":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 216
    invoke-static {p0, p1}, Lcom/mcdonalds/app/util/UIUtils;->metersToKilometers(Landroid/content/Context;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .end local v0    # "useMetric":Ljava/lang/Boolean;
    :goto_0
    return-object v1

    .line 218
    .restart local v0    # "useMetric":Ljava/lang/Boolean;
    :cond_0
    const v1, 0x7f09036c

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {p0, p1}, Lcom/mcdonalds/app/util/UIUtils;->metersToMiles(Landroid/content/Context;Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 223
    .end local v0    # "useMetric":Ljava/lang/Boolean;
    :cond_2
    const v1, 0x7f09042c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static distanceFromStore(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.UIUtils"

    const-string v3, "distanceFromStore"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :try_start_0
    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->getUserLocation()Landroid/location/Location;

    move-result-object v0

    .line 243
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 244
    invoke-static {p0, v0, p1}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromLocation(Landroid/content/Context;Landroid/location/Location;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 248
    .end local v0    # "location":Landroid/location/Location;
    :goto_0
    return-object v1

    .line 246
    :catch_0
    move-exception v1

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDistance()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mcdonalds/app/util/UIUtils;->distanceFromMeters(Landroid/content/Context;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static dpAsPixels(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.UIUtils"

    const-string v4, "dpAsPixels"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    if-nez p0, :cond_0

    .line 130
    :goto_0
    return v1

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 130
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public static formatDateMonthDayYear(Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "formatDateMonthDayYear"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->SHORT_DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderDate"    # Ljava/util/Date;
    .param p2, "edt"    # Ljava/util/Date;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "formatDeliveryTime"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-static {p0, p1, p2, v5}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orderDate"    # Ljava/util/Date;
    .param p2, "edt"    # Ljava/util/Date;
    .param p3, "ignoreNone"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v5, "com.mcdonalds.app.util.UIUtils"

    const-string v6, "formatDeliveryTime"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v1

    aput-object p1, v7, v3

    aput-object p2, v7, v4

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v9, v7, v8

    invoke-static {v2, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 343
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v5, "interface.edtFormat"

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    .local v0, "edtFormat":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 346
    const-string v0, "fixed"

    .line 349
    :cond_1
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 351
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_2
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 359
    const-string v1, ""

    .line 362
    :goto_1
    return-object v1

    .line 351
    :sswitch_0
    const-string v3, "fixed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :sswitch_1
    const-string v1, "range"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "minutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_0

    .line 353
    :pswitch_0
    invoke-static {p0, p2}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 355
    :pswitch_1
    invoke-static {p0, p2}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTimeRange(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 357
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTimeInMinutes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 362
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x5cee774 -> :sswitch_0
        0x674393d -> :sswitch_1
        0x3f791cdf -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static formatDeliveryTimeInMinutes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentDate"    # Ljava/util/Date;
    .param p2, "edt"    # Ljava/util/Date;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string v5, "com.mcdonalds.app.util.UIUtils"

    const-string v6, "formatDeliveryTimeInMinutes"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v9

    aput-object p1, v7, v10

    const/4 v8, 0x2

    aput-object p2, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 253
    .local v0, "difference":J
    const-wide/16 v4, 0x3c

    div-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 254
    .local v2, "differenceInMinutes":J
    const v4, 0x7f0902ed

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatDeliveryTimeRange(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edt"    # Ljava/util/Date;

    .prologue
    const/4 v10, 0x0

    const-string v11, "com.mcdonalds.app.util.UIUtils"

    const-string v12, "formatDeliveryTimeRange"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-static {v10, v11, v12, v13}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    const-string v10, "EDTRange"

    invoke-static {v10}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "edtRangeString":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 278
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    mul-int/lit16 v1, v10, 0x3e8

    .line 280
    .local v1, "edtRange":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    int-to-long v12, v1

    sub-long v2, v10, v12

    .line 281
    .local v2, "edtFromTime":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 283
    .local v0, "edtFrom":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    int-to-long v12, v1

    add-long v6, v10, v12

    .line 284
    .local v6, "edtToTime":J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 286
    .local v5, "edtTo":Ljava/util/Date;
    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, "formattedFromDate":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "formattedToDate":Ljava/lang/String;
    const-string v10, "%s - %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 290
    .end local v0    # "edtFrom":Ljava/util/Date;
    .end local v1    # "edtRange":I
    .end local v2    # "edtFromTime":J
    .end local v5    # "edtTo":Ljava/util/Date;
    .end local v6    # "edtToTime":J
    .end local v8    # "formattedFromDate":Ljava/lang/String;
    .end local v9    # "formattedToDate":Ljava/lang/String;
    :goto_0
    return-object v10

    :cond_0
    const-string v10, ""

    goto :goto_0
.end method

.method public static formatScheduledDeliveryTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 12
    .param p0, "deliveryDate"    # Ljava/util/Date;

    .prologue
    const/16 v11, 0x9

    const/4 v6, 0x0

    const-string v7, "com.mcdonalds.app.util.UIUtils"

    const-string v8, "formatScheduledDeliveryTime"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "hh:mm"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 368
    .local v4, "deliveryTimeFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yy"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 369
    .local v2, "deliveryDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy/MM/dd"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 371
    .local v3, "deliveryDateFormatCN":Ljava/text/SimpleDateFormat;
    const-string v0, " "

    .line 373
    .local v0, "dateString":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 374
    .local v1, "deliveryCal":Ljava/util/Calendar;
    if-eqz p0, :cond_0

    .line 375
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 377
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "lang":Ljava/lang/String;
    const-string/jumbo v6, "zh-CHS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "\u4e0a\u5348"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 380
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .end local v5    # "lang":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 379
    .restart local v5    # "lang":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "\u4e0b\u5348"

    goto :goto_0

    .line 382
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 383
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 384
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "am"

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v6, "pm"

    goto :goto_2
.end method

.method public static formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "formatTime"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/mcdonalds/app/util/UIUtils;->formatTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.UIUtils"

    const-string v4, "formatTime"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v7

    aput-object p1, v5, v9

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    if-eqz p1, :cond_1

    .line 316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 317
    .local v1, "tomorrowStartCalendar":Ljava/util/Calendar;
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 318
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 319
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 320
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v9}, Ljava/util/Calendar;->add(II)V

    .line 323
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v8, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 328
    .local v0, "formatter":Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 329
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .end local v0    # "formatter":Ljava/text/DateFormat;
    .end local v1    # "tomorrowStartCalendar":Ljava/util/Calendar;
    :goto_1
    return-object v2

    .line 326
    .restart local v1    # "tomorrowStartCalendar":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v8, v8, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "formatter":Ljava/text/DateFormat;
    goto :goto_0

    .line 332
    .end local v0    # "formatter":Ljava/text/DateFormat;
    .end local v1    # "tomorrowStartCalendar":Ljava/util/Calendar;
    :cond_1
    const-string v2, "Delivery Time"

    const-string v3, "delivery time not set"

    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09080a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static formatTimeInMinutes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentDate"    # Ljava/util/Date;
    .param p2, "edt"    # Ljava/util/Date;
    .param p3, "roundToFiveMins"    # Z

    .prologue
    const/4 v6, 0x0

    const-string v7, "com.mcdonalds.app.util.UIUtils"

    const-string v8, "formatTimeInMinutes"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    aput-object p2, v9, v10

    const/4 v10, 0x3

    new-instance v11, Ljava/lang/Boolean;

    invoke-direct {v11, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 261
    .local v0, "difference":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    div-long v2, v0, v6

    .line 262
    .local v2, "differenceInMinutes":J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    const-wide/16 v8, 0x5

    mul-long v4, v6, v8

    .line 264
    .local v4, "fiveMinInSeconds":J
    if-eqz p3, :cond_0

    const-wide/16 v6, 0x5

    rem-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 265
    const-wide/16 v6, 0x5

    div-long v6, v0, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x5

    mul-long v2, v6, v8

    .line 266
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    div-long v6, v0, v6

    rem-long/2addr v6, v4

    const-wide/16 v8, 0x2

    div-long v8, v4, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 269
    const-wide/16 v6, 0x5

    add-long/2addr v2, v6

    .line 272
    :cond_0
    const v6, 0x7f0902ed

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static formatTimeInSummary(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.UIUtils"

    const-string v4, "formatTimeInSummary"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    if-eqz p1, :cond_1

    .line 295
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "h:mm a"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    const-string v2, "ah:mm"

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v1    # "language":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09080a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCurrentTimestampUsingFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "dateFormat"    # Ljava/lang/String;
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.mcdonalds.app.util.UIUtils"

    const-string v1, "getCurrentTimestampUsingFormat"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v4, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    invoke-static {p0, p1, v4, v4}, Lcom/mcdonalds/app/util/UIUtils;->getTimestampUsingFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDailyStoreHoursString(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.util.UIUtils"

    const-string v5, "getDailyStoreHoursString"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 394
    .local v0, "c":Ljava/util/Calendar;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 396
    .local v1, "dayOfWeek":I
    const/4 v2, 0x0

    .line 397
    .local v2, "storeHoursString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreHours()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreHours()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-le v3, v4, :cond_0

    .line 398
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreHours()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "storeHoursString":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 401
    .restart local v2    # "storeHoursString":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 402
    const v3, 0x7f090176

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    :cond_1
    return-object v2
.end method

.method public static getDailyStoreHoursStringByLocationId(Landroid/content/Context;Lcom/mcdonalds/sdk/modules/storelocator/Store;I)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "locationId"    # I

    .prologue
    const/4 v7, 0x0

    const-string v8, "com.mcdonalds.app.util.UIUtils"

    const-string v9, "getDailyStoreHoursStringByLocationId"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    const/4 v11, 0x2

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 410
    .local v0, "c":Ljava/util/Calendar;
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 412
    .local v1, "dayOfWeek":I
    const/4 v6, 0x0

    .line 413
    .local v6, "openingHours":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLocations()Ljava/util/List;

    move-result-object v4

    .line 414
    .local v4, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;>;"
    const/4 v3, 0x0

    .line 415
    .local v3, "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    if-nez v4, :cond_0

    .line 416
    const/4 v7, 0x0

    .line 438
    :goto_0
    return-object v7

    .line 418
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 419
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->getLocationID()I

    move-result v7

    if-ne v7, p2, :cond_3

    .line 420
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;

    .line 425
    .restart local v3    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    :cond_1
    if-eqz v3, :cond_2

    .line 426
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->getStoreAreaOpeningHours()Ljava/util/List;

    move-result-object v6

    .line 429
    :cond_2
    if-eqz v6, :cond_5

    .line 430
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v1, :cond_4

    .line 431
    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;

    .line 432
    .local v5, "openingHour":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    const v7, 0x7f090736

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->fromTime:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toTime:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 418
    .end local v5    # "openingHour":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 434
    :cond_4
    const v7, 0x7f090736

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "0"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "0"

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 438
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "iso8601FormattedString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "getDateFromISO8601"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFromISO8601(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 6
    .param p0, "iso8601FormattedString"    # Ljava/lang/String;
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.UIUtils"

    const-string v3, "getDateFromISO8601"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    :try_start_0
    sget-object v2, Lcom/mcdonalds/app/util/UIUtils;->ISO8601_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 639
    sget-object v2, Lcom/mcdonalds/app/util/UIUtils;->ISO8601_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 641
    :goto_0
    return-object v1

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "e":Ljava/text/ParseException;
    goto :goto_0
.end method

.method public static getDayOfMonthSuffix(I)Ljava/lang/String;
    .locals 6
    .param p0, "n"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "getDayOfMonthSuffix"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 616
    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    const/16 v0, 0xd

    if-gt p0, v0, :cond_0

    .line 617
    const-string v0, "th"

    .line 628
    :goto_0
    return-object v0

    .line 620
    :cond_0
    rem-int/lit8 v0, p0, 0xa

    packed-switch v0, :pswitch_data_0

    .line 628
    const-string v0, "th"

    goto :goto_0

    .line 622
    :pswitch_0
    const-string v0, "st"

    goto :goto_0

    .line 624
    :pswitch_1
    const-string v0, "nd"

    goto :goto_0

    .line 626
    :pswitch_2
    const-string v0, "rd"

    goto :goto_0

    .line 620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDayPartImageUrl(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;ILcom/mcdonalds/sdk/AsyncListener;)V
    .locals 7
    .param p0, "serviceConnection"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;",
            "I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "getDayPartImageUrl"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v6, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sDayPartsResponse:Lcom/mcdonalds/app/ui/models/DayPartsResponse;

    if-eqz v1, :cond_1

    .line 777
    invoke-static {p1, p2}, Lcom/mcdonalds/app/util/UIUtils;->sendDayPartsResponse(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sDayPartsListener:Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;

    if-nez v1, :cond_2

    .line 782
    new-instance v1, Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;

    invoke-direct {v1, v6}, Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;-><init>(Lcom/mcdonalds/app/util/UIUtils$1;)V

    sput-object v1, Lcom/mcdonalds/app/util/UIUtils;->sDayPartsListener:Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;

    .line 784
    :cond_2
    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sDayPartsListener:Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;

    new-instance v2, Lcom/mcdonalds/app/util/UIUtils$3;

    invoke-direct {v2, p1, p2}, Lcom/mcdonalds/app/util/UIUtils$3;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;->addObserver(Ljava/util/Observer;)V

    .line 792
    sget-boolean v1, Lcom/mcdonalds/app/util/UIUtils;->sLoadingDayParts:Z

    if-nez v1, :cond_0

    .line 793
    sput-boolean v5, Lcom/mcdonalds/app/util/UIUtils;->sLoadingDayParts:Z

    .line 794
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.dayparts.topImagesJson"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 795
    .local v0, "jsonUrl":Ljava/lang/String;
    new-instance v1, Lcom/mcdonalds/app/util/SimpleJsonRequest;

    const-class v2, Lcom/mcdonalds/app/ui/models/DayPartsResponse;

    invoke-direct {v1, v0, v2}, Lcom/mcdonalds/app/util/SimpleJsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v2, Lcom/mcdonalds/app/util/UIUtils;->sDayPartsListener:Lcom/mcdonalds/app/util/UIUtils$DayPartsListener;

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public static getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pDrawableName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "getDrawableIdByName"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLocalizedCurrencyFormatter()Ljava/text/NumberFormat;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.UIUtils"

    const-string v1, "getLocalizedCurrencyFormatter"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getOrderingDisclaimerItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "getOrderingDisclaimerItems"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->orderingDisclaimerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1217
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->orderingDisclaimerItems:Ljava/util/ArrayList;

    .line 1241
    :goto_0
    return-object v0

    .line 1219
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.orderingDisclaimerInfo"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1220
    .local v10, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v10, :cond_4

    .line 1221
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 1222
    .local v9, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.hideProductCustomizationButton"

    .line 1223
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v8

    .line 1224
    .local v8, "hideCustomizationButton":Z
    if-nez v8, :cond_2

    invoke-static {}, Lcom/mcdonalds/app/util/AppUtils;->hideNutritionOnOrderingPages()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "warningText"

    .line 1225
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "energy_warning_label_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1228
    :cond_3
    sget-object v12, Lcom/mcdonalds/app/util/UIUtils;->orderingDisclaimerItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;

    const-string/jumbo v1, "warningText"

    .line 1230
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "useBoldText"

    .line 1231
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "useThemeColor"

    .line 1232
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "productView"

    .line 1233
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "basketView"

    .line 1234
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v6, "menuGridView"

    .line 1235
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "orderSummaryView"

    .line 1236
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/mcdonalds/app/ordering/OrderingDisclaimerItem;-><init>(Ljava/lang/String;ZZZZZZ)V

    .line 1228
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1241
    .end local v8    # "hideCustomizationButton":Z
    .end local v9    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->orderingDisclaimerItems:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public static getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.UIUtils"

    const-string v4, "getStringByName"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    if-eqz p1, :cond_0

    .line 159
    const-string v3, "analytics_raw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    const-string v2, ""

    .line 181
    :cond_0
    :goto_0
    return-object v2

    .line 163
    :cond_1
    const-string v3, "raw:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "resourceId":I
    if-lez v1, :cond_3

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "returnedString":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v2    # "returnedString":Ljava/lang/String;
    :cond_3
    move-object v2, p1

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    move-object v2, p1

    .restart local v2    # "returnedString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getText(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Landroid/widget/EditText;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "getText"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {p0, v4}, Lcom/mcdonalds/app/util/UIUtils;->getText(Landroid/widget/EditText;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getText(Landroid/widget/EditText;Z)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Landroid/widget/EditText;
    .param p1, "notNull"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "getText"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public static getTimestampUsingFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p0, "dateFormat"    # Ljava/lang/String;
    .param p1, "timezoneId"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Calendar;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.UIUtils"

    const-string v4, "getTimestampUsingFormat"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 756
    if-nez p1, :cond_2

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 758
    .local v1, "timeZone":Ljava/util/TimeZone;
    :goto_0
    if-nez p2, :cond_0

    .line 759
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    .line 760
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 764
    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 766
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 769
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 771
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 756
    .end local v0    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "timeZone":Ljava/util/TimeZone;
    :cond_2
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "init"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const v0, 0x7f090a5e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/UIUtils;->sEmailPattern:Ljava/lang/String;

    .line 120
    const v0, 0x7f090a61

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/UIUtils;->sPwdPattern:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public static isEmailValid(Ljava/lang/String;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "isEmailValid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->sEmailPattern:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNumberValid(Ljava/lang/String;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "isNumberValid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->sNumberPattern:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPasswordValid(Ljava/lang/String;)Z
    .locals 6
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.UIUtils"

    const-string v3, "isPasswordValid"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "textValidation.passwordRegex"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "pwdRegex":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 648
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 650
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sPwdPattern:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isPhoneValid(Ljava/lang/String;)Z
    .locals 7
    .param p0, "phone"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.UIUtils"

    const-string v4, "isPhoneValid"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "textValidation.phoneRegex"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "phoneRegex":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 656
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 659
    :cond_0
    return v1
.end method

.method public static metersFromLocation(Lcom/mcdonalds/sdk/modules/storelocator/Store;Landroid/location/Location;)Ljava/lang/Float;
    .locals 5
    .param p0, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "metersFromLocation"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->toLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 190
    :cond_0
    return-object v0
.end method

.method public static metersToKilometers(Landroid/content/Context;Ljava/lang/Float;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "meters"    # Ljava/lang/Float;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.UIUtils"

    const-string v4, "metersToKilometers"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    aput-object p1, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "format":Ljava/text/DecimalFormat;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "distanceInKilometers":Ljava/lang/String;
    const v2, 0x7f09036b

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static metersToMiles(Landroid/content/Context;Ljava/lang/Float;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "meters"    # Ljava/lang/Float;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.UIUtils"

    const-string v4, "metersToMiles"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    aput-object p1, v5, v7

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "format":Ljava/text/DecimalFormat;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f445c700fd4d6a9L    # 6.21371E-4

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "distanceInMiles":Ljava/lang/String;
    const v2, 0x7f09036d

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static sendDayPartsResponse(ILcom/mcdonalds/sdk/AsyncListener;)V
    .locals 7
    .param p0, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "sendDayPartsResponse"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v6, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sDayPartsResponse:Lcom/mcdonalds/app/ui/models/DayPartsResponse;

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/ui/models/DayPartsResponse;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "url":Ljava/lang/String;
    invoke-interface {p1, v0, v6, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 803
    return-void
.end method

.method public static setDefaultRefreshColors(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 5
    .param p0, "refreshLayout"    # Landroid/support/v4/widget/SwipeRefreshLayout;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "setDefaultRefreshColors"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 540
    return-void

    .line 534
    :array_0
    .array-data 4
        0x7f0e005e
        0x7f0e0063
        0x7f0e005e
        0x7f0e0063
    .end array-data
.end method

.method public static showCheckinFlowAlert(Landroid/content/Context;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldAllowOrdering"    # Z
    .param p2, "okClick"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "continueClick"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const v8, 0x7f0905d4

    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string v3, "com.mcdonalds.app.util.UIUtils"

    const-string v4, "showCheckinFlowAlert"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f0b00b1

    invoke-direct {v2, p0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f090940

    .line 582
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 583
    invoke-virtual {v2, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0201be

    .line 584
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 587
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 588
    const v2, 0x7f090941

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 589
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090182

    .line 590
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 591
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 592
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 603
    :goto_0
    return-object v1

    .line 596
    .end local v1    # "dialog":Landroid/support/v7/app/AlertDialog;
    :cond_0
    const v2, 0x7f09093f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 597
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 598
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 599
    .restart local v1    # "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "onClick"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.util.UIUtils"

    const-string v3, "showGlobalAlertDialog"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f0b00b1

    invoke-direct {v1, p0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 564
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 565
    invoke-virtual {v1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 566
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0201be

    .line 567
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0905d4

    .line 568
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 569
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 571
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 573
    return-object v0
.end method

.method public static showInvalidCurrentDayPart(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "showInvalidCurrentDayPart"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09081e

    .line 700
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 701
    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    .line 702
    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 706
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Invalid day part"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public static showInvalidDayPartsError(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.mcdonalds.app.util.UIUtils"

    const-string v1, "showInvalidDayPartsError"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v4, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f09081e

    .line 689
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0901b8

    .line 690
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    .line 691
    invoke-virtual {v0, v1, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 695
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Invalid day part"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public static showKeyboard(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "editText"    # Landroid/view/View;
    .param p2, "shouldForce"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.util.UIUtils"

    const-string v5, "showKeyboard"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    aput-object p1, v6, v2

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v6, v1

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    if-eqz p0, :cond_0

    .line 551
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 552
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 556
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void

    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    move v1, v2

    .line 552
    goto :goto_0
.end method

.method public static showNoNetworkAlert(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const-string v0, "com.mcdonalds.app.util.UIUtils"

    const-string v1, "showNoNetworkAlert"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v4, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0907f3

    .line 664
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    .line 665
    invoke-virtual {v0, v1, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 668
    return-void
.end method

.method public static showTimeRestrictionAlert(Landroid/widget/TextView;Ljava/util/List;)V
    .locals 12
    .param p0, "view"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TimeRestriction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "timeRestrictions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/TimeRestriction;>;"
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.util.UIUtils"

    const-string v7, "showTimeRestrictionAlert"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object p0, v8, v9

    aput-object p1, v8, v10

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 711
    const-string v0, ""

    .line 712
    .local v0, "fromTime":Ljava/lang/String;
    const-string v3, ""

    .line 713
    .local v3, "toTime":Ljava/lang/String;
    const-string v1, ""

    .line 714
    .local v1, "fromTime2":Ljava/lang/String;
    const-string v4, ""

    .line 715
    .local v4, "toTime2":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;

    .line 716
    .local v2, "timeRestriction":Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 717
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;->getFromTime()Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;->getToTime()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;->getFromTime()Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/TimeRestriction;->getToTime()Ljava/lang/String;

    move-result-object v4

    .line 725
    .end local v2    # "timeRestriction":Lcom/mcdonalds/sdk/modules/models/TimeRestriction;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v10, :cond_2

    .line 726
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090102

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v9

    aput-object v3, v6, v10

    aput-object v1, v6, v11

    const/4 v7, 0x3

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    :goto_1
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 732
    .end local v0    # "fromTime":Ljava/lang/String;
    .end local v1    # "fromTime2":Ljava/lang/String;
    .end local v3    # "toTime":Ljava/lang/String;
    .end local v4    # "toTime2":Ljava/lang/String;
    :goto_2
    return-void

    .line 728
    .restart local v0    # "fromTime":Ljava/lang/String;
    .restart local v1    # "fromTime2":Ljava/lang/String;
    .restart local v3    # "toTime":Ljava/lang/String;
    .restart local v4    # "toTime2":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090101

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v9

    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 731
    .end local v0    # "fromTime":Ljava/lang/String;
    .end local v1    # "fromTime2":Ljava/lang/String;
    .end local v3    # "toTime":Ljava/lang/String;
    .end local v4    # "toTime2":Ljava/lang/String;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static startActivityIndicator(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "startActivityIndicator"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    if-eqz p0, :cond_0

    .line 448
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 450
    :cond_0
    return-void
.end method

.method public static startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "com.mcdonalds.app.util.UIUtils"

    const-string v1, "startActivityIndicator"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v5, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    invoke-static {p0, v5, p1, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 461
    return-void
.end method

.method public static startActivityIndicator(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "msgResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "startActivityIndicator"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p1, v3, v6

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    if-eqz p0, :cond_0

    .line 455
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v6}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 457
    :cond_0
    return-void
.end method

.method public static startActivityIndicator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cancellable"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "startActivityIndicator"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v7

    aput-object p1, v3, v6

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/mcdonalds/app/util/UIUtils;->sProgressDisplayed:Z

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Landroid/app/ProgressDialog;

    const v1, 0x7f0b00b1

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 476
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 477
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 478
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 479
    if-eqz p3, :cond_2

    .line 480
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/mcdonalds/app/util/UIUtils$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/util/UIUtils$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 489
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 494
    :goto_1
    sput-object p1, Lcom/mcdonalds/app/util/UIUtils;->sProgressKey:Ljava/lang/String;

    .line 495
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 496
    sput-boolean v6, Lcom/mcdonalds/app/util/UIUtils;->sProgressDisplayed:Z

    goto :goto_0

    .line 491
    :cond_2
    sget-object v0, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_1
.end method

.method public static stopActivityIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.util.UIUtils"

    const-string v1, "stopActivityIndicator"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public static stopActivityIndicator(Ljava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v1, "com.mcdonalds.app.util.UIUtils"

    const-string v2, "stopActivityIndicator"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v5, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sProgressKey:Ljava/lang/String;

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sProgressKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sProgressKey:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    :cond_2
    sget-boolean v1, Lcom/mcdonalds/app/util/UIUtils;->sProgressDisplayed:Z

    if-eqz v1, :cond_0

    .line 516
    sput-boolean v4, Lcom/mcdonalds/app/util/UIUtils;->sProgressDisplayed:Z

    .line 518
    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    :try_start_0
    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 521
    const/4 v1, 0x0

    sput-object v1, Lcom/mcdonalds/app/util/UIUtils;->sProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/mcdonalds/app/util/UIUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error dimissing dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
