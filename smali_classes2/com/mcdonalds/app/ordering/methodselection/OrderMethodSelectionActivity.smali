.class public Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OrderMethodSelectionActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;
.implements Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$OnItemClickListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$NotifyingDatePickerDialog;
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

.field private mContinueButton:Landroid/widget/Button;

.field private mCustomerAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

.field private mDatePickerDialog:Landroid/app/DatePickerDialog;

.field private mDeliveryButton:Landroid/widget/RadioButton;

.field private mDeliverySaveButton:Landroid/widget/Button;

.field private mDeliveryView:Landroid/view/View;

.field private mEdtStr:Ljava/lang/String;

.field private mOrderWhereButton:Landroid/widget/Button;

.field private mPickupButton:Landroid/widget/RadioButton;

.field private mPickupView:Landroid/view/View;

.field private mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

.field private final mRegisterOnClickListener:Landroid/view/View$OnClickListener;

.field private mReturnFromModifyAddr:Z

.field private mScheduledSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

.field private mScheduledText:Landroid/widget/TextView;

.field private final mSignInOnClickListener:Landroid/view/View$OnClickListener;

.field private mStoreClosedText:Landroid/widget/TextView;

.field private mStorePagerAdapter:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;

.field private mTimePickerDialog:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

.field private mTitle:Landroid/widget/TextView;

.field private methodSelector:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    .line 787
    new-instance v0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$17;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$17;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mSignInOnClickListener:Landroid/view/View$OnClickListener;

    .line 795
    new-instance v0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$18;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$18;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mRegisterOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findAnotherStore()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Ljava/util/Calendar;II)Ljava/lang/String;
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;
    .param p1, "x1"    # Ljava/util/Calendar;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$1000"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getDeliveryTimeMessage(Ljava/util/Calendar;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliverySaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->choseAddress()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->showDeliveryDatePicker()V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mCustomerAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Landroid/widget/RadioGroup;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->methodSelector:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Landroid/app/DatePickerDialog;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Landroid/app/DatePickerDialog;)Landroid/app/DatePickerDialog;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;
    .param p1, "x1"    # Landroid/app/DatePickerDialog;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;III)Ljava/lang/String;
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$700"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getDeliveryDatePickerMessage(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Ljava/util/Calendar;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$800"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->showDeliveryTimePicker(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mTimePickerDialog:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;
    .param p1, "x1"    # Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionActivity"

    const-string v2, "access$902"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mTimePickerDialog:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    return-object p1
.end method

.method private checkIfStoreIsClosed()V
    .locals 4

    .prologue
    const-string v1, "checkIfStoreIsClosed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->selectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 273
    .local v0, "mStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isStoreClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mStoreClosedText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mStoreClosedText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090427

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mStoreClosedText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private choseAddress()V
    .locals 5

    .prologue
    const-string v2, "choseAddress"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v3, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v4, "/checkout/delivery"

    .line 399
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    const-string v4, "On click"

    .line 400
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    const-string v4, "Delivery Address"

    .line 401
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v3

    .line 402
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v3

    .line 398
    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "update_default"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    const-string v2, "update_default_from_menu"

    .line 407
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.address.updateDefaultFromMenu"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    .line 406
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 408
    const-string v2, "full_address"

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mOrderWhereButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/account/ModifyAddressesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "ADDRESS_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 411
    const/16 v2, 0x1882

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 412
    return-void
.end method

.method private findAnotherStore()V
    .locals 4

    .prologue
    const-string v2, "findAnotherStore"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "dismiss_on_place_order"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/ordering/start/FindStoreActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 394
    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 395
    return-void
.end method

.method private getDefaultTime()Ljava/util/Calendar;
    .locals 9

    .prologue
    const-string v7, "getDefaultTime"

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 590
    .local v0, "currentTime":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 591
    .local v6, "minTime":Ljava/util/Calendar;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getMinimumDeliveryDateInMillis()J

    move-result-wide v4

    .line 592
    .local v4, "minDateMillis":J
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 593
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 602
    .end local v6    # "minTime":Ljava/util/Calendar;
    :goto_0
    return-object v6

    .line 596
    .restart local v6    # "minTime":Ljava/util/Calendar;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 597
    .local v1, "maxTime":Ljava/util/Calendar;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getMaximumDeliveryDateInMillis()J

    move-result-wide v2

    .line 598
    .local v2, "maxDateMillis":J
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 599
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v6, v1

    .line 600
    goto :goto_0

    :cond_1
    move-object v6, v0

    .line 602
    goto :goto_0
.end method

.method private getDeliveryDatePickerMessage(III)Ljava/lang/String;
    .locals 18
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const-string v12, "getDeliveryDatePickerMessage"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/Integer;

    move/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-instance v15, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v15, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    const-string v7, ""

    .line 610
    .local v7, "message":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 611
    .local v11, "selectedDay":Ljava/util/Calendar;
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 614
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 615
    .local v10, "minTime":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getMinimumDeliveryDateInMillis()J

    move-result-wide v8

    .line 616
    .local v8, "minDateMillis":J
    invoke-virtual {v10, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 620
    const/16 v12, 0xb

    const/16 v13, 0x17

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 621
    const/16 v12, 0xc

    const/16 v13, 0x3b

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 623
    invoke-virtual {v11, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 625
    const v12, 0x7f0901dd

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v8, v16

    .line 627
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatRange(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 625
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 653
    :cond_0
    :goto_0
    return-object v7

    .line 633
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 634
    .local v6, "maxTime":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v12}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getMaximumDeliveryDateInMillis()J

    move-result-wide v4

    .line 635
    .local v4, "maxDateMillis":J
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 639
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 640
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 643
    invoke-virtual {v11, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 644
    const v12, 0x7f0901dc

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v4, v16

    .line 646
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatRange(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 644
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private getDeliveryTimeMessage(Ljava/util/Calendar;II)Ljava/lang/String;
    .locals 12
    .param p1, "selectedDay"    # Ljava/util/Calendar;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const-string v7, "getDeliveryTimeMessage"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    const-string v3, ""

    .line 663
    .local v3, "message":Ljava/lang/String;
    const/16 v7, 0xb

    invoke-virtual {p1, v7, p2}, Ljava/util/Calendar;->set(II)V

    .line 664
    const/16 v7, 0xc

    invoke-virtual {p1, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 666
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 667
    .local v6, "minTime":Ljava/util/Calendar;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getMinimumDeliveryDateInMillis()J

    move-result-wide v4

    .line 668
    .local v4, "minDateMillis":J
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 669
    const/16 v7, 0xd

    const/16 v8, 0xd

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 670
    const/16 v7, 0xe

    const/16 v8, 0xe

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 671
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 673
    const v7, 0x7f0901dd

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v4, v10

    .line 675
    invoke-static {p0, v10, v11}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatRange(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 673
    invoke-virtual {p0, v7, v8}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 696
    :cond_0
    :goto_0
    return-object v3

    .line 681
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 682
    .local v2, "maxTime":Ljava/util/Calendar;
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v7}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getMaximumDeliveryDateInMillis()J

    move-result-wide v0

    .line 683
    .local v0, "maxDateMillis":J
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 684
    const/16 v7, 0xd

    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 685
    const/16 v7, 0xe

    const/16 v8, 0xe

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 686
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 687
    const v7, 0x7f0901dc

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v0, v10

    .line 689
    invoke-static {p0, v10, v11}, Lcom/mcdonalds/sdk/utils/DateUtils;->formatRange(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 687
    invoke-virtual {p0, v7, v8}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setEDTVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    const-string v2, "setEDTVisibility"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    const v2, 0x7f1101ac

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 825
    .local v0, "edtTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 826
    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 828
    :cond_0
    return-void

    .line 826
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private showDeliveryDatePicker()V
    .locals 12

    .prologue
    const-string v0, "showDeliveryDatePicker"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 455
    .local v10, "deliveryCalendar":Ljava/util/Calendar;
    new-instance v4, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$13;

    invoke-direct {v4, p0, v10}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$13;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Ljava/util/Calendar;)V

    .line 483
    .local v4, "onDateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    new-instance v8, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$14;

    invoke-direct {v8, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$14;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    .line 495
    .local v8, "onDateChangedListener":Landroid/widget/DatePicker$OnDateChangedListener;
    new-instance v0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$NotifyingDatePickerDialog;

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 499
    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x2

    .line 500
    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v1, 0x5

    .line 501
    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$NotifyingDatePickerDialog;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    .line 507
    const/4 v0, 0x1

    .line 508
    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 509
    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 510
    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 507
    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getDeliveryDatePickerMessage(III)Ljava/lang/String;

    move-result-object v11

    .line 512
    .local v11, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0, v11}, Landroid/app/DatePickerDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 515
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 518
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDatePickerDialog:Landroid/app/DatePickerDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    .line 519
    .local v9, "button":Landroid/widget/Button;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 520
    return-void
.end method

.method private showDeliveryTimePicker(Ljava/util/Calendar;)V
    .locals 12
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/16 v11, 0xb

    const/4 v10, 0x1

    const/16 v9, 0xc

    const-string v6, "showDeliveryTimePicker"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    new-instance v5, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;

    invoke-direct {v5, p0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$15;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Ljava/util/Calendar;)V

    .line 551
    .local v5, "onTimeSetListener":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    new-instance v4, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$16;

    invoke-direct {v4, p0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$16;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Ljava/util/Calendar;)V

    .line 559
    .local v4, "onTimeChangedListener":Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 560
    .local v3, "now":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getDefaultTime()Ljava/util/Calendar;

    move-result-object v0

    .line 561
    .local v0, "defaultTime":Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1e

    invoke-virtual {v0, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 562
    const/4 v2, 0x0

    .line 563
    .local v2, "minute":I
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x1e

    if-le v6, v7, :cond_0

    .line 564
    const/16 v2, 0x1e

    .line 569
    :cond_0
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 566
    invoke-static {v5, v4, v6, v2, v10}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->newInstance(Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog$OnTimeChangedListener;IIZ)Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mTimePickerDialog:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    .line 575
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 573
    invoke-direct {p0, p1, v6, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getDeliveryTimeMessage(Ljava/util/Calendar;II)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "message":Ljava/lang/String;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mTimePickerDialog:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "Timepickerdialog"

    invoke-virtual {v6, v7, v8}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 579
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mTimePickerDialog:Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;

    invoke-virtual {v6, v1}, Lcom/mcdonalds/app/ui/dateTime/materialdatetimepicker/time/TimePickerDialog;->setTitlebutton(Ljava/lang/String;)V

    .line 586
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    const-string v0, "attachBaseContext"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-static {p1}, Lio/github/inflationx/viewpump/ViewPumpContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 284
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/ensighten/model/EnsightenGestureRecognizerFactory;->getFourFingerGestureRecognizer()Lcom/ensighten/model/EnsightenGestureRecognizer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ensighten/model/EnsightenGestureRecognizer;->process(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public hideActivityIndicator()V
    .locals 2

    .prologue
    const-string v0, "hideActivityIndicator"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 360
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const-string v0, "onActivityResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 749
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    const/16 v0, 0x12

    if-ne p1, v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setupPickup()V

    goto :goto_0

    .line 755
    :cond_2
    const/16 v0, 0x1882

    if-ne p1, v0, :cond_0

    .line 756
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ADDRESS_RETURN_KEY"

    .line 757
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mCustomerAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 758
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mCustomerAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    if-eqz v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mCustomerAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 761
    :cond_3
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mReturnFromModifyAddr:Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const-string v0, "onBackPressed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 739
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isFirstTimeDelivery()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->isFirstTimeOrdering()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->setResult(I)V

    .line 742
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const-string v9, "OrderMethodSelectionActivity"

    invoke-static {v9}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v10, "OrderMethodSelectionActivity#onCreate"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v9, "onCreate"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {p0, v9, v10}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v9, 0x7f04006e

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->setContentView(I)V

    .line 95
    new-instance v9, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-direct {v9, p0, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;)V

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    .line 96
    const v9, 0x7f1101a0

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mStoreClosedText:Landroid/widget/TextView;

    .line 98
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "interface.ordering.clearBasketOnOrderTypeChange"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    .line 100
    .local v4, "mClearBasketOnOrderTypeChange":Z
    const v9, 0x7f110197

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioGroup;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->methodSelector:Landroid/widget/RadioGroup;

    .line 101
    const v9, 0x7f110198

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPickupButton:Landroid/widget/RadioButton;

    .line 103
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->methodSelector:Landroid/widget/RadioGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 104
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPickupButton:Landroid/widget/RadioButton;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 105
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPickupButton:Landroid/widget/RadioButton;

    new-instance v10, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$1;

    invoke-direct {v10, p0, v4}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$1;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Z)V

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v9, 0x7f110199

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliveryButton:Landroid/widget/RadioButton;

    .line 119
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliveryButton:Landroid/widget/RadioButton;

    new-instance v10, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$2;

    invoke-direct {v10, p0, v4}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$2;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Z)V

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v9, 0x7f11019a

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPickupView:Landroid/view/View;

    .line 134
    const v9, 0x7f11019e

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    .line 136
    .local v8, "storePager":Landroid/support/v4/view/ViewPager;
    new-instance v9, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;

    iget-object v10, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-direct {v9, v10}, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)V

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mStorePagerAdapter:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;

    .line 137
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mStorePagerAdapter:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;

    invoke-virtual {v9, p0}, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->setOnItemClickListener(Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter$OnItemClickListener;)V

    .line 138
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mStorePagerAdapter:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 140
    const v9, 0x7f11019f

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/widget/PagerIndicator;

    .line 141
    .local v3, "indicator":Lcom/mcdonalds/app/widget/PagerIndicator;
    invoke-virtual {v3, v8}, Lcom/mcdonalds/app/widget/PagerIndicator;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 142
    invoke-virtual {v8, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 144
    const v9, 0x7f1101a1

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 145
    .local v2, "findAnotherStoreButton":Landroid/widget/Button;
    new-instance v9, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$3;

    invoke-direct {v9, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$3;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v9, 0x7f110097

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mContinueButton:Landroid/widget/Button;

    .line 153
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mContinueButton:Landroid/widget/Button;

    new-instance v10, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$4;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$4;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->hasDelivery()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 162
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->isLoggedIn()Z

    move-result v9

    if-nez v9, :cond_2

    .line 163
    const v9, 0x7f1101b1

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliveryView:Landroid/view/View;

    .line 170
    :goto_1
    const v9, 0x7f1101a5

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mOrderWhereButton:Landroid/widget/Button;

    .line 171
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mOrderWhereButton:Landroid/widget/Button;

    new-instance v10, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$5;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$5;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v9, 0x7f1101a9

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    .line 179
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    new-instance v10, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$6;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$6;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v9, 0x7f1101ad

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mScheduledSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    .line 186
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mScheduledSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    new-instance v10, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$7;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$7;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    invoke-virtual {v9, v10}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v9, 0x7f1101af

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mScheduledText:Landroid/widget/TextView;

    .line 194
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mScheduledText:Landroid/widget/TextView;

    new-instance v10, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$8;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$8;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v9, 0x7f1101b4

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 202
    .local v6, "signInText":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mSignInOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v9, 0x7f1101b3

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 204
    .local v7, "signUpButton":Landroid/widget/Button;
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mRegisterOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v9

    const-string v10, "interface.ordering.showDeliverySignInAsButton"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 211
    const v9, 0x7f1101b5

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 212
    .local v5, "signInButton":Landroid/widget/Button;
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mSignInOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v9, 0x7f1101b4

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 215
    const v9, 0x7f1101b5

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .end local v5    # "signInButton":Landroid/widget/Button;
    .end local v6    # "signInText":Landroid/widget/TextView;
    .end local v7    # "signUpButton":Landroid/widget/Button;
    :cond_0
    :goto_2
    const v9, 0x7f1101b0

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliverySaveButton:Landroid/widget/Button;

    .line 221
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliverySaveButton:Landroid/widget/Button;

    new-instance v10, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$9;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    const v9, 0x7f110182

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, "closeButton":Landroid/view/View;
    new-instance v9, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$10;

    invoke-direct {v9, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$10;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v9, 0x7f110067

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mTitle:Landroid/widget/TextView;

    .line 255
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mReturnFromModifyAddr:Z

    .line 257
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "favorite"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 258
    .local v1, "favorite":Z
    if-eqz v1, :cond_5

    .line 259
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->initFavorite()V

    .line 264
    :goto_3
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "INIT_AS_DELIVERY"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 267
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliveryButton:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->callOnClick()Z

    .line 269
    :cond_1
    const-string v9, "onCreate"

    invoke-static {p0, v9}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v1    # "favorite":Z
    .end local v2    # "findAnotherStoreButton":Landroid/widget/Button;
    .end local v3    # "indicator":Lcom/mcdonalds/app/widget/PagerIndicator;
    .end local v4    # "mClearBasketOnOrderTypeChange":Z
    .end local v8    # "storePager":Landroid/support/v4/view/ViewPager;
    :catch_0
    move-exception v9

    const/4 v9, 0x0

    :try_start_1
    const-string v10, "OrderMethodSelectionActivity#onCreate"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 164
    .restart local v2    # "findAnotherStoreButton":Landroid/widget/Button;
    .restart local v3    # "indicator":Lcom/mcdonalds/app/widget/PagerIndicator;
    .restart local v4    # "mClearBasketOnOrderTypeChange":Z
    .restart local v8    # "storePager":Landroid/support/v4/view/ViewPager;
    :cond_2
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->isExternalDelivery()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 165
    const v9, 0x7f1101a2

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliveryView:Landroid/view/View;

    goto/16 :goto_1

    .line 167
    :cond_3
    const v9, 0x7f1101a3

    invoke-virtual {p0, v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliveryView:Landroid/view/View;

    goto/16 :goto_1

    .line 218
    :cond_4
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->methodSelector:Landroid/widget/RadioGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 261
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v1    # "favorite":Z
    :cond_5
    iget-object v9, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v9}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->init()V

    goto :goto_3
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const-string v0, "onCreateDialog"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onInfoButtonClicked(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 5
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v2, "onInfoButtonClicked"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    const-string v2, "/restaurant-locator"

    const-string v3, "Info Icon"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 778
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 779
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "extra_store_detail"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 780
    const-string v2, "extra_store_section"

    sget-object v3, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 784
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 785
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const-string v0, "onPageScrollStateChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const-string v0, "onPageScrolled"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p2}, Ljava/lang/Float;-><init>(F)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onPageSelected"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mStorePagerAdapter:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->getStores()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->isCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 816
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "onRestart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectButtonClicked(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onSelectButtonClicked"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setPickupStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 769
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 770
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public save()V
    .locals 4

    .prologue
    const-string v2, "save"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 726
    .local v1, "data":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "PASS_THROUGH_ARGS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 728
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "PASS_THROUGH_ARGS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 730
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 732
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->finish()V

    .line 733
    return-void
.end method

.method public setAsapDelivery(Z)V
    .locals 5
    .param p1, "asapDelivery"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "setAsapDelivery"

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v2, p1}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 702
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mScheduledSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 703
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->setEDTVisibility(Z)V

    .line 704
    return-void

    :cond_0
    move v0, v1

    .line 702
    goto :goto_0
.end method

.method public setAsapDeliveryFirst(Z)V
    .locals 4
    .param p1, "asapDelivery"    # Z

    .prologue
    const-string v0, "setAsapDeliveryFirst"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mAsapSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 709
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mScheduledSelector:Lcom/mcdonalds/app/widget/CheckableRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/widget/CheckableRelativeLayout;->setChecked(Z)V

    .line 710
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->setEDTVisibility(Z)V

    .line 711
    return-void
.end method

.method public setSaveButtonState(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const-string v0, "setSaveButtonState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->isDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliverySaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public showActivityIndicator(I)V
    .locals 4
    .param p1, "messageResId"    # I

    .prologue
    const-string v0, "showActivityIndicator"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    invoke-static {p0, p1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 355
    return-void
.end method

.method public showAlertBox(Z)V
    .locals 6
    .param p1, "showPickup"    # Z

    .prologue
    const-string v2, "showAlertBox"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    new-instance v1, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$11;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Z)V

    .line 307
    .local v1, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity$12;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;Z)V

    .line 321
    .local v0, "onNegativeClick":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f09010f

    .line 322
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f090156

    .line 323
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f090182

    .line 324
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f09011a

    .line 325
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 328
    return-void
.end method

.method public showDelivery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "showDelivery"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPickupButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 344
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPickupView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->hasDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliveryButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 347
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliveryView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0901de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    :cond_0
    return-void
.end method

.method public showDeliveryTimeSelector()V
    .locals 3

    .prologue
    const-string v1, "showDeliveryTimeSelector"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    const v1, 0x7f1101a6

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, "deliveryWhenWrapper":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    return-void
.end method

.method public showPickup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "showPickup"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPickupButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 333
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliveryButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 334
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->hasDelivery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliveryView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPickupView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f090631

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 339
    return-void
.end method

.method public updateAsapDeliveryDate(Ljava/lang/String;)V
    .locals 6
    .param p1, "deliveryDateString"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0901e1

    const-string v2, "updateAsapDeliveryDate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    const v2, 0x7f1101ac

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 428
    .local v0, "ASAPText":Landroid/widget/TextView;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.showEstimatedDeliveryTimeInMinutes"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getEdtString()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "edt":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mReturnFromModifyAddr:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 442
    .end local v1    # "edt":Ljava/lang/String;
    :goto_0
    return-void

    .line 435
    .restart local v1    # "edt":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mEdtStr:Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 437
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mEdtStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setEdtString(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    .end local v1    # "edt":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public updateScheduledDeliveryDate(Ljava/lang/String;)V
    .locals 4
    .param p1, "deliveryDateString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const-string v0, "updateScheduledDeliveryDate"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mScheduledText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mDeliverySaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 448
    return-void
.end method

.method public updateSelectedAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "fullAddress"    # Ljava/lang/String;

    .prologue
    const-string v0, "updateSelectedAddress"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mOrderWhereButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 417
    return-void
.end method

.method public updateSelectedStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "updateSelectedStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mStorePagerAdapter:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->notifyDataSetChanged()V

    .line 384
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->checkIfStoreIsClosed()V

    .line 385
    return-void
.end method

.method public updateStores(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const/4 v0, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    const-string v3, "updateStores"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p0, v3, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mContinueButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mPresenter:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    invoke-virtual {v5}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->hasCurrentStoreMobileOrdering()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 365
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 366
    .local v0, "hasOrdering":Z
    :goto_0
    const v3, 0x7f11019e

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 367
    .local v1, "vp":Landroid/support/v4/view/ViewPager;
    const v3, 0x7f11019b

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_1

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 368
    if-eqz v0, :cond_2

    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 369
    const v3, 0x7f11019d

    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mStorePagerAdapter:Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;

    invoke-virtual {v3, p1}, Lcom/mcdonalds/app/ordering/methodselection/StorePagerAdapter;->setStores(Ljava/util/List;)V

    .line 372
    if-nez v0, :cond_4

    .line 373
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 378
    :goto_4
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->checkIfStoreIsClosed()V

    .line 379
    return-void

    .end local v0    # "hasOrdering":Z
    .end local v1    # "vp":Landroid/support/v4/view/ViewPager;
    :cond_0
    move v0, v2

    .line 365
    goto :goto_0

    .restart local v0    # "hasOrdering":Z
    .restart local v1    # "vp":Landroid/support/v4/view/ViewPager;
    :cond_1
    move v3, v4

    .line 367
    goto :goto_1

    :cond_2
    move v3, v4

    .line 368
    goto :goto_2

    :cond_3
    move v4, v2

    .line 369
    goto :goto_3

    .line 375
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;->onPageSelected(I)V

    goto :goto_4
.end method
