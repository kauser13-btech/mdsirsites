@if ($banner != NULL)
    @foreach ($banner as $key => $value)
        @if ($value['ads_positions_slug'] == $position)
            @if (App\Helpers\generalHelper::adMenuCheck(\Illuminate\Support\Facades\Request::segment(2),$value['menus_id'],$value['ad_condition']))
                <div class="bottom-sticky-ad bg-light">
                    <div class="container">
                        <a href="#" class="sticky-ad-down"><i class="bi bi-chevron-down"></i></a>
                        <div class="ads d-flex justify-content-center">
                        @if ($value['adtype'] == 'images')
                            <a href="{{$value['landing_url']}}" class="ad_cl-{{$value['id']}}" data-id="{{$value['id']}}"  target="_blank">
                                <img style="margin:5px 0px; width:100%;" src="{!! App\Helpers\ImageStoreHelpers::showImage('ads_images',$value['created_at'],$value['ad_img'],'') !!}"  alt="{{ $value['created_at'] }}"/>
                            </a>
                        @else
                            <div class="ad_cl-{{$value['id']}}" data-id="{{$value['id']}}">
                                {!! $value['ad_code'] !!}
                            </div>
                        @endif
                        </div>
                    </div>
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
