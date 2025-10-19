<?php

namespace App\Http\Controllers;

use App\Models\Award;
use App\Models\Contribution;
use App\Models\File;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Cache;
use App\Models\GoldSilver;
use App\Models\Member;
use App\Models\Gallery;

class PageController extends Controller
{
    /*public function memberinfo($cat){
        $sql = Cache::remember($cat, 300, function () use($cat) {
            $member = Member::active();

            if($cat=='central-committee'){
                $member = $member->whereNotNull('central_committee_post');
            }

            return $member->get();
        });

        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });

        $president = Cache::remember('bajus-president', 300, function () {
            return Member::active()->where('central_committee_post', 'President')->first();
        });

        if($cat=='central-committee'){
            $view = 'central_comittee';
        }elseif($cat=='general-member'){
            $view = 'general_member';
        }else{
            $view = 'district_committee';
        }

        return view('desktop.'.$view,compact('sql','goldsilverscroll','president'));
    }*/
    public function centralCommittee(){
        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });

        $president = Cache::remember('bajus-president', 300, function () {
            return Member::active()->where('central_committee_post', 'president')->orderBy('central_committee_order', 'asc')->first();
        });

        $vice_president = Cache::remember('vice-president', 300, function () {
            return Member::active()->where('central_committee_post', 'vice-president')->orWhere('central_committee_post', 'senior-vice-president')->orderBy('central_committee_order', 'asc')->get();
        });

        $general_secretary = Cache::remember('general-secretary', 300, function () {
            return Member::active()->where('central_committee_post', 'general-secretary')->orderBy('central_committee_order', 'asc')->get();
        });

        $assistant_secretary = Cache::remember('assistant-secretary', 300, function () {
            return Member::active()->where('central_committee_post', 'assistant-secretary')->orderBy('central_committee_order', 'asc')->get();
        });

        $executive_member = Cache::remember('executive-member', 300, function () {
            return Member::active()->where('central_committee_post', 'executive-member')->orderBy('central_committee_order', 'asc')->get();
        });

        $treasurer = Cache::remember('treasurer', 300, function () {
            return Member::active()->where('central_committee_post', 'treasurer')->orderBy('central_committee_order', 'asc')->get();
        });

        return view('desktop.central_comittee',compact('goldsilverscroll','president','vice_president','general_secretary','assistant_secretary','treasurer','executive_member'));
    }
    public function generalMember(){
        $sql = Cache::remember('general-Member', 300, function () {
            return Member::active()->get();
        });

        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });

        return view('desktop.general_member',compact('sql','goldsilverscroll'));
    }

    public function districtCommittee(){
        $sql = Cache::remember('district-Committee', 300, function () {
            return Member::active()->whereNotNull('district_committee_post')->where('district_committee_post','!=', '')->get();
        });

        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });

        return view('desktop.district_committee',compact('sql','goldsilverscroll'));
    }

    public function standingCommittee($cat){
        $sql = Cache::remember('standing-Committee-'.$cat, 300, function () use($cat) {
            return Member::active()->where('standing_committee', 'like', '%'.$cat.'%')->get();
        });

        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });

        return view('desktop.standing_committee',compact('sql','goldsilverscroll','cat'));
    }


    public function memberDetails($id){
        $sql = Cache::remember('memberDetails-'.$id, 300, function () use($id) {
            return Member::active()->find($id);
        });

        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });
        return view('desktop.member_details',compact('sql','goldsilverscroll'));
    }

    public function memberVerify($mid){
        $sql = Cache::remember('memberVerify-'.$mid, 300, function () use($mid) {
            return Member::active()->where('number_id',$mid)->first();
        });

        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });
        return view('desktop.member_verify',compact('sql','goldsilverscroll'));
    }

    public function becomeAmember(){
        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });

        $becomeMember = File::active()->where('page','Become_A_Member')->orderBy('id', 'desc')->first();
        return view('desktop.become-a-member',compact('goldsilverscroll', 'becomeMember'));
    }

    public function events(){
        $currentPage = 'events-'.request()->get('page',1);
        $sql = Cache::remember($currentPage, 500, function () {
            return Gallery::isActive()->select('id','name','caption','cover_photo','type','category','embed_code','start_at','status','created_at')->where('category',1)->orderBy('id', 'desc')->paginate(30);
        });

        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });

        return view('desktop.events',compact('sql','goldsilverscroll'));
    }

    public function eventsDetails($id){
        $sql = Cache::remember('eventsDetails-'.$id, 500, function () use($id) {
            return Gallery::isActive()->find($id);
        });

        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });
        return view('desktop.events_details',compact('sql','goldsilverscroll'));
    }

    public function goldPrice(){
        $sql = Cache::remember('goldPrice', 300, function () {
            return GoldSilver::orderBy('g_order')->get();
        });

        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });

        $goldPriceLatest = File::active()->where('page','Gold_And_SilverRate')->orderBy('id', 'desc')->first();
        return view('desktop.gold_price',compact('sql','goldsilverscroll', 'goldPriceLatest'));
    }

    public function govtCircular(){
        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });

        $govCircular = File::active()->where('page','Govt_Circular')->orderBy('id', 'asc')->get();
        return view('desktop.govt_circular',compact('goldsilverscroll', 'govCircular'));
    }

    public function annualReport(){
        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });
        $annualReport = File::active()->where('page','Annual_Report')->orderBy('id', 'asc')->get();
        return view('desktop.annual_report',compact('goldsilverscroll', 'annualReport'));
    }

    public function contactUs(){
        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });
        return view('desktop.contact_us',compact('goldsilverscroll'));
    }

    public function policy(){
        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });
        $policyFile = File::active()->where('page','Policy')->orderBy('id', 'asc')->get();
        return view('desktop.policy',compact('goldsilverscroll', 'policyFile'));
    }

    public function aboutUs(){
        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });
        return view('desktop.about_us',compact('goldsilverscroll'));
    }

    public function StallRegistration(){
        $goldsilverscroll = Cache::remember('home-GoldSilverScroll', 300, function () {
            return GoldSilver::get();
        });
        return view('desktop.stall-registration',compact('goldsilverscroll'));
    }


    public function awards(){
        $sql = Award::isActive()->with(['createdBy','updatedBy'])->where('type', 0)->orderBy('received_date', 'desc')->get();
        return view('desktop.awards',compact('sql'));
    }


    public function appreciations(){
        $sql = Award::isActive()->with(['createdBy','updatedBy'])->where('type', 2)->orderBy('received_date', 'desc')->get();
        return view('desktop.appreciations',compact('sql'));
    }


    public function contributions(){
        $sql = Contribution::active()->with(['createdBy','updatedBy','source'])->orderBy('order_by', 'desc')->get();
        return view('desktop.contributions',compact('sql'));
    }

    public function gallery($id = null){
        if($id)
            $current_gallery = Gallery::isActive()->with(['createdBy','updatedBy','photo'])->where('id', $id)->first();
        else
            $current_gallery = Gallery::isActive()->with(['createdBy','updatedBy','photo'])->orderBy('event_date', 'desc')->first();
//        dd($current_gallery);
        $sql = Gallery::isActive()->with(['createdBy','updatedBy','photo'])->orderBy('event_date', 'desc')->paginate(24);
        return view('desktop.gallery', compact('sql', 'current_gallery'));
    }

}
