<?php

namespace App\Models;


class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Sandika Galih",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Iusto incidunt modi veritatis vero, eos in fugiat consequatur aut odio sint, temporibus error laborum! Sit commodi quis non voluptate saepe soluta."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "N'Golo Kante",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, ea est aspernatur ipsum doloribus expedita suscipit hic reprehenderit fugit itaque totam impedit consequatur tenetur beatae cum. Maiores eum eius deserunt voluptatum mollitia, sint exercitationem possimus id totam consequatur, nihil, tempora distinctio dignissimos placeat quaerat iusto repellendus neque quia consectetur necessitatibus!"
        ]
    ];

    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug',$slug);
    }
}
