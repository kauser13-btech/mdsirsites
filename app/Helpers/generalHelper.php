<?php
namespace App\Helpers;

use App\Models\Bundle;
use App\Models\Post;
use DateTime;
use App\Models\Menu;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class generalHelper {

    public static function bn_date($date){
            $engDATE = array(1,2,3,4,5,6,7,8,9,0,'January','February','March','April','May','June','July','August','September','October','November','December','Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','ago','just now','second','minute','year');
            $bangDATE = array('১','২','৩','৪','৫','৬','৭','৮','৯','০','জানুয়ারি','ফেব্রুয়ারী','মার্চ','এপ্রিল','মে','জুন','জুলাই','আগস্ট','সেপ্টেম্বর','অক্টোবর','নভেম্বর','ডিসেম্বর','শনিবার','রবিবার','সোমবার','মঙ্গলবার','
            বুধবার','বৃহস্পতিবার','শুক্রবার','আগে','এই মাত্র','সেকেন্ড','মিনিট','বছর');
            $convertedDATE = str_replace($engDATE, $bangDATE, $date);
            return $convertedDATE;
    }

    public static function en_bn($number){
            $eng = array(1,2,3,4,5,6,7,8,9,0);
            $bang = array('১','২','৩','৪','৫','৬','৭','৮','৯','০');
            $convertednumber = str_replace($eng, $bang, $number);
            return $convertednumber;
    }

    public static function time_elapsed_string($datetime, $full = false) {
        $now = new DateTime;
        $ago = new DateTime($datetime);
        $diff = $now->diff($ago);

        $diff->w = floor($diff->d / 7);
        $diff->d -= $diff->w * 7;

        $string = array(
            'y' => 'বছর',
            'm' => 'মাস',
            'w' => 'সপ্তাহ',
            'd' => 'দিন',
            'h' => 'ঘন্টা',
            'i' => 'মিনিট',
            's' => 'সেকেন্ড',
        );
        $engDATE = array('1', '2', '3', '4', '5', '6', '7', '8', '9', '0');
        $bangDATE = array('১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯', '০');
        foreach ($string as $k => &$v) {
            if ($diff->$k) {
                $v = str_replace($engDATE, $bangDATE, $diff->$k) . ' ' . $v;
            } else {
                unset($string[$k]);
            }
        }

        if (!$full) $string = array_slice($string, 0, 1);
        return $string ? implode(', ', $string) . ' আগে' : 'এই মাত্র';
    }

    public static function splitText($text, $maxLength) {
        if (strlen($text) > $maxLength) {
            return preg_replace('/\s+?(\S+)?$/', '', substr(strip_tags(preg_replace("/<img[^>]+\>/i", "", strip_tags(html_entity_decode($text)))), 0 ,$maxLength)).'...';
        }
        return $text;
    }

    public static function adMenuCheck($categoryName = null, $adCategoryData, $adCondition = 1){
        if ($adCategoryData == 'all')
            return true;
        $menuArray = Cache::rememberForever('adMenuCheck', function () {
            $menu = Menu::where('m_status',1)->select('m_id', 'slug')->get()->toArray();
            return $menu;
        });
        $key = array_search($categoryName, array_column($menuArray, 'slug'));
        $menuId = $menuArray[$key]['m_id'];
        $isMenu = in_array($menuId, json_decode($adCategoryData));
        if ($adCondition)
            return $isMenu;
        else
            return !$isMenu;
    }

    public static function amplify($html) {
        # Replace img, audio, and video elements with amp custom elements
        $html = stripslashes($html);
        $html = html_entity_decode($html, ENT_QUOTES, 'UTF-8');
        $html = strip_tags($html, "<p><img><iframe>");
        $return = '';
        preg_match_all("/<iframe[^>]*src=[\"|']([^'\"]+)[\"|'][^>]*>/i", $html, $output );
        if( isset( $output[1][0] ) ) {

                $mystring = $output[1][0];
                $findme   = 'https://www.youtube.com/embed/';
                $pos = strpos($mystring, $findme);
                if ($pos === false) {
                    $html = strip_tags($html, "<p><a><img>");
                    $return = '';
                }else{
                    $embed = str_replace("https://www.youtube.com/embed/",'',$output[1][0]);
                    $get_embed = explode("?",$embed);
                    $return = $get_embed[0];
                }

        }
        $html = preg_replace('/<iframe\s+.*?\.*?<\/iframe>/', '<iframe></iframe>', $html);

        $html = preg_replace('/\\<(.*?)(width="(.*?)")(.*?)(height="(.*?)")(.*?)\\>/i', '<$1$4$7>', $html);
        $html = preg_replace('/\\<(.*?)(height="(.*?)")(.*?)(width="(.*?)")(.*?)\\>/i', '<$1$4$7>', $html);
        $html = preg_replace('/(width|height)=["\']\d*["\']\s?/', "", $html);

        $html = str_ireplace(
            ['<img','<video','/video>','<audio','/audio>','<iframe','/iframe>'],
            ['<amp-img height="250" width="320" layout="responsive"','<amp-video','/amp-video>','<amp-audio','/amp-audio>','<amp-youtube data-videoid="'.$return.'" height="250" width="320" layout="responsive"','/amp-youtube>'],
            $html
        );
        # Add closing tags to amp-img custom element
        $html = preg_replace('/<amp-img(.*?)>/', '<amp-img$1></amp-img>',$html);
        // remove inline style
        $html = preg_replace('/ style[^>]*/', '', $html);
        // remove empty p tags
        $html = preg_replace("/<p[^>]*>[\s|&nbsp;]*<\/p>/", '', $html);
        $html = preg_replace("/&#?[a-z0-9]+;/i","",$html);
        return $html;
    }

    public static function getSubmenus($m_id){
        $menuList = Menu::where('m_parent',$m_id)->where('m_status',1)->where('m_visible',1)->orderBy('m_order', 'ASC')->pluck('m_id')->toArray();
        $menuList[] = (int) $m_id;
        return $menuList;
    }

    public static function getParentId($m_id){
        $parentmenu = Menu::where('m_id',$m_id)->where('m_status',1)->where('m_visible',1)->first();
        if ($parentmenu->m_parent == 0)
            return $m_id;
        else
            return $parentmenu->m_parent;
    }


    public function checkNews(Request $request)
    {
        $sql = Post::find($request->get('n_id'));

        return response()->json($sql);
    }

    public static function dependentNewsId($b_id)
    {
        $sql = Post::isDeleted()->isActive()->where('is_primary', 1)->where('bundle_id', $b_id)->first();

        return $sql ? $sql->slug : '';
    }

    public static function dependentNewsText($b_id)
    {
        $sql = Post::isDeleted()->isActive()->where('is_primary', 1)->where('bundle_id', $b_id)->first();

        return $sql ? $sql->n_head : '';
    }

    public static function newsIsVisible($s_id)
    {

        $sql = Post::isDeleted()->isActive()->where('is_primary', 1)->where('nid', $s_id)
            ->whereHas('bundle', function ($query) {
                $query->where('is_display', 1);
            })->first();

        return $sql ? 1 : 0;
    }

    public static function bundleIsDependent($b_id)
    {

        $sql = Post::isDeleted()->isActive()->where('is_primary', 1)->where('nid', $b_id)
            ->whereHas('bundle', function ($query) {
                $query->where('is_display', 1);
            })->first();

        return $sql ? ($sql->bundle ? $sql->bundle->dependent_id : null) : null;
    }


    public static function dependentBundleNewsText($b_id)
    {

        $sql = Post::isDeleted()->isActive()->where('is_primary', 1)->where('nid', $b_id)
            ->whereHas('bundle', function ($query) {
                $query->where('is_display', 1);
            })->first();

        if ($sql){
            if ($sql->bundle){
                if ($sql->bundle->dependent_id){
                    $sqldept = Post::isDeleted()->isActive()->where('is_primary', 1)->where('bundle_id', $sql->bundle->dependent_id)->first();
                    if ($sqldept)
                        return $sqldept->n_head;
                }

            }
        }

        return  null;
    }

    public static function BundleNewsText($b_id)
    {

        $sql = Post::isDeleted()->isActive()->where('is_primary', 1)->where('nid', $b_id)
            ->whereHas('bundle', function ($query) {
                $query->where('is_display', 1);
            })->first();

        if ($sql){
            return $sql->n_head;
        }

        return  null;
    }

    public static function dependentBundleNewsId($b_id)
    {

        $sql = Post::isDeleted()->isActive()->where('is_primary', 1)->where('nid', $b_id)
            ->whereHas('bundle', function ($query) {
                $query->where('is_display', 1);
            })->first();

        if ($sql){
            if ($sql->bundle){
                if ($sql->bundle->dependent_id){
                    $sqldept = Post::isDeleted()->isActive()->where('is_primary', 1)->where('bundle_id', $sql->bundle->dependent_id)->first();
                    if ($sqldept)
                        return $sqldept->slug;
                }
            }
        }

        return  null;
    }

}
