@if ($banner != NULL)
    @foreach ($banner as $key => $value)
        @if ($value['ads_positions_slug'] == $position)
            @if (App\Helpers\generalHelper::adMenuCheck(\Illuminate\Support\Facades\Request::segment(2),$value['menus_id'],$value['ad_condition']))
                <div class="modal" tabindex="-1" id="welcomeModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-body">
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="bi bi-x-lg"></i></button>
                                @if ($value['adtype'] == 'images')
                                    <a href="{{$value['landing_url']}}" class="ad_cl-{{$value['id']}}" data-id="{{$value['id']}}"  target="_blank">
                                        <img src="{!! App\Helpers\ImageStoreHelpers::showImage('ads_images',$value['created_at'],$value['ad_img'],'') !!}" alt="{{ $value['created_at'] }}" />
                                    </a>
                                @else
                                    <div class="ad_cl-{{$value['id']}}" data-id="{{$value['id']}}">
                                        {!!$value['ad_code']!!}
                                    </div>
                                @endif
                            </div>
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

