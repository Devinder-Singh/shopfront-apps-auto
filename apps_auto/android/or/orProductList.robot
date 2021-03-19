*** Variables ***
${btnProductDailyDeals}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]
${cntProductDeals}      id=${APP_PACKAGE}:id/dealsPromotionRecyclerView

${btnProductImage}      xpath=(//android.widget.ImageView[@content-desc="Product Image"])[1]
${btnProductFilter}      id=${APP_PACKAGE}:id/dealsPromotionFilterButton
${btnProductAppOnlyDeals}      accessibility_id=App Only Deals
