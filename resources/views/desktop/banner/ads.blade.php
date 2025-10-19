<div data-position="{{$position}}" class="m-0 p-0">
@if ($banner != NULL)
    @foreach ($banner as $key => $value)
        @if ($value['ads_positions_slug'] == $position)
            @if (App\Helpers\generalHelper::adMenuCheck(\Illuminate\Support\Facades\Request::segment(2),$value['menus_id'],$value['ad_condition']))
                @if($position=="desktop-home-header-top" || $position=="desktop-details-header-top" || $position=="desktop-category-header-top")
                    <div class="ads mb-2 d-flex justify-content-center">
                @else
                    <div class="ads bg-light mb-2 d-flex justify-content-center">
                @endif
                @if ($value['adtype'] == 'images')
                    <a href="{{$value['landing_url']}}" class="ad_cl-{{$value['id']}}" data-id="{{$value['id']}}"  target="_blank">
                        <img src="{!! App\Helpers\ImageStoreHelpers::showImage('ads_images',$value['created_at'],$value['ad_img'],'') !!}" alt="{{ $value['created_at'] }}"/>
                    </a>
                @else
                    <div class="ad_cl-{{$value['id']}}" data-id="{{$value['id']}}">
                        {!! $value['ad_code'] !!}
                    </div>
                @endif
                </div>
                @if($value['adtype']=='dfp-code')
                    @push('dfp')
                        {!! $value['head_code'] !!}
                    @endpush
                @else
                    @push('head_code')
                        {!! $value['head_code'] !!}
                    @endpush
                @endif

                @push('scripts')
                    {!! $value['footer_code'] !!}
                @endpush
            @endif
        @endif
    @endforeach
@endif
</div>