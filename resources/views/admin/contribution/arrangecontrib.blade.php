@extends('layouts.app')

@section('content')


    <div class="box">
        <div class="box-header">
            <h3 class="box-title">Sort News</h3>
        </div><!-- /.box-header -->
        <div class="box-body">
            @if(Session::has('success'))
                <p class="alert alert-info">{{ Session::get('success') }}</p>
            @endif
            <form class="form-horizontal" action="/admin/contribution/arrangecontrib-update" method="POST" enctype="multipart/form-data">
                @csrf
            <input class="btn btn-success pull-right" type="submit" name="arr_slider" value="Update">

            <table class="table">
                <tbody id="sort-contribution">
                @foreach($sql as $key=>$contrib)
                    <tr id="{{$contrib->id}}" style="cursor: move;">
{{--                        <td width="5%">{{ $loop->index }}</td>--}}
                        <td>
                            {{$contrib->name}}
                        </td>
                        <td width="7%">
                            <div style="margin-left:0px;" class="controls">
                                <i class="fa fa-hand-o-up" aria-hidden="true"></i>
                            </div>
                        </td>
                        <td width="10%">
                            <input type="hidden" value="{{$contrib->id}}" name="order_id[]">
                            <input type="text" value="{{$contrib->order_by}}" class="input-xlarge focused sort" style="width: 100px;" name="n_order[]">
                            <input type="hidden" value="{{$contrib->id}}" name="n_id[]">
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
            <input class="btn btn-success pull-right" type="submit" name="arr_slider" value="Update">
            </form>

        </div><!-- /.box-body -->
    </div><!-- /.box -->


@endsection

@push('breadcrumbs') Contribution sort @endpush

@push('meta')
    <title>Contribution sort</title>
@endpush

@push('stylesheet')
@endpush

@push('scripts')
    <script src="{{ asset('/admin/js/jquery-ui.js') }}"></script>
    <script>
        $(document).ready(function(){

            $("#sort-contribution").sortable({
                stop: function (event, ui) {
                    var tbody = $('#sort-contribution');
                    var rows = tbody.find('tr');

                    var order_ids = $(this).sortable("toArray").sort(function(a, b){return b-a});

                    console.log(order_ids);
                    for (var i = 0; i < rows.length; i++) {
                        $(rows[i]).find('.sort').val(order_ids[i]);
                    }
                }
            });
        });
    </script>
@endpush
