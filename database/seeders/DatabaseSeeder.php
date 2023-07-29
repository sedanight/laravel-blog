<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {


        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

       User::create([
            'name' => 'Rahmad Zidani',
            'username' => 'rzdnin',
            'email' => 'rahmadzidanirvana@gmail.com',
            'password' => bcrypt('password')
        ]);

        User::factory(25)->create();

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);
        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);
        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(50)->create();

        /*Post::create([
            'judul' => 'Judul Pertama',
            'slug' => 'judul-pertama',
            'excerpt' =>'Lorem ipsum dolor sit amet.',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil assumenda voluptate eos quidem aperiam reprehenderit omnis ab nulla adipisci, nostrum, praesentium mollitia, impedit culpa neque. Omnis error totam, consequatur optio non voluptates eaque dignissimos nesciunt mollitia iure nobis quisquam debitis, quidem alias, laudantium cum iste vel facere. Illum, eveniet? Repudiandae aut temporibus nesciunt quidem illum assumenda omnis eum consectetur doloribus quo culpa, quasi quae vel fugiat accusamus alias nostrum repellat cum molestiae impedit similique! Recusandae molestias, ut rem tempora hic deserunt qui magni ab quam nostrum ipsa optio odio repellat sapiente iste dolores impedit aliquid nam, beatae delectus blanditiis voluptates officiis unde! Qui modi aut dolore officia consequuntur debitis voluptatibus molestiae ut corrupti? Aliquid quos totam obcaecati amet eaque, iusto distinctio ullam earum corporis soluta eos molestias eveniet, error corrupti in, maxime quidem! Dicta doloribus et quidem minima obcaecati architecto adipisci. Dolorem repudiandae ullam amet natus eos itaque quo reprehenderit corrupti nostrum atque. Explicabo alias accusantium vitae dolor quae dolorum voluptate itaque. Natus maxime eius rem alias iste amet magni, adipisci libero repellendus tempora expedita hic pariatur, odit aliquam atque et eligendi doloremque voluptatum ipsam illo recusandae, est a officia. Quisquam laudantium inventore, maiores omnis delectus neque, eligendi assumenda architecto temporibus nulla velit sequi vel aliquid sapiente doloribus ex eos harum odit eum! Quasi atque quo architecto laboriosam, eligendi sapiente earum dolore voluptatibus aspernatur? Dolores maxime numquam eius repudiandae officiis accusamus ipsa ut illo voluptate beatae corporis repellendus alias, nisi expedita quam voluptates voluptatem dolorem voluptatum ex quo fugit ducimus? Nemo dicta quidem magnam suscipit! Assumenda quam omnis vel explicabo, error nam aut animi similique maxime et beatae dolor perspiciatis ea laborum magni id voluptatum aspernatur tenetur provident vitae alias! Repellat cumque mollitia accusantium quasi voluptas sit. Consequatur, dolorum dolores omnis possimus pariatur dicta, illum amet consequuntur, assumenda ex ducimus.',
            'category_id' => 1,
            'user_id' =>1
        ]);
        Post::create([
            'judul' => 'Judul Kedua',
            'slug' => 'judul-kedua',
            'excerpt' =>'Lorem ipsum dolor sit amet.',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil assumenda voluptate eos quidem aperiam reprehenderit omnis ab nulla adipisci, nostrum, praesentium mollitia, impedit culpa neque. Omnis error totam, consequatur optio non voluptates eaque dignissimos nesciunt mollitia iure nobis quisquam debitis, quidem alias, laudantium cum iste vel facere. Illum, eveniet? Repudiandae aut temporibus nesciunt quidem illum assumenda omnis eum consectetur doloribus quo culpa, quasi quae vel fugiat accusamus alias nostrum repellat cum molestiae impedit similique! Recusandae molestias, ut rem tempora hic deserunt qui magni ab quam nostrum ipsa optio odio repellat sapiente iste dolores impedit aliquid nam, beatae delectus blanditiis voluptates officiis unde! Qui modi aut dolore officia consequuntur debitis voluptatibus molestiae ut corrupti? Aliquid quos totam obcaecati amet eaque, iusto distinctio ullam earum corporis soluta eos molestias eveniet, error corrupti in, maxime quidem! Dicta doloribus et quidem minima obcaecati architecto adipisci. Dolorem repudiandae ullam amet natus eos itaque quo reprehenderit corrupti nostrum atque. Explicabo alias accusantium vitae dolor quae dolorum voluptate itaque. Natus maxime eius rem alias iste amet magni, adipisci libero repellendus tempora expedita hic pariatur, odit aliquam atque et eligendi doloremque voluptatum ipsam illo recusandae, est a officia. Quisquam laudantium inventore, maiores omnis delectus neque, eligendi assumenda architecto temporibus nulla velit sequi vel aliquid sapiente doloribus ex eos harum odit eum! Quasi atque quo architecto laboriosam, eligendi sapiente earum dolore voluptatibus aspernatur? Dolores maxime numquam eius repudiandae officiis accusamus ipsa ut illo voluptate beatae corporis repellendus alias, nisi expedita quam voluptates voluptatem dolorem voluptatum ex quo fugit ducimus? Nemo dicta quidem magnam suscipit! Assumenda quam omnis vel explicabo, error nam aut animi similique maxime et beatae dolor perspiciatis ea laborum magni id voluptatum aspernatur tenetur provident vitae alias! Repellat cumque mollitia accusantium quasi voluptas sit. Consequatur, dolorum dolores omnis possimus pariatur dicta, illum amet consequuntur, assumenda ex ducimus.',
            'category_id' => 1,
            'user_id' =>1
        ]);
        Post::create([
            'judul' => 'Judul Ketiga',
            'slug' => 'judul-ketiga',
            'excerpt' =>'Lorem ipsum dolor sit amet.',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil assumenda voluptate eos quidem aperiam reprehenderit omnis ab nulla adipisci, nostrum, praesentium mollitia, impedit culpa neque. Omnis error totam, consequatur optio non voluptates eaque dignissimos nesciunt mollitia iure nobis quisquam debitis, quidem alias, laudantium cum iste vel facere. Illum, eveniet? Repudiandae aut temporibus nesciunt quidem illum assumenda omnis eum consectetur doloribus quo culpa, quasi quae vel fugiat accusamus alias nostrum repellat cum molestiae impedit similique! Recusandae molestias, ut rem tempora hic deserunt qui magni ab quam nostrum ipsa optio odio repellat sapiente iste dolores impedit aliquid nam, beatae delectus blanditiis voluptates officiis unde! Qui modi aut dolore officia consequuntur debitis voluptatibus molestiae ut corrupti? Aliquid quos totam obcaecati amet eaque, iusto distinctio ullam earum corporis soluta eos molestias eveniet, error corrupti in, maxime quidem! Dicta doloribus et quidem minima obcaecati architecto adipisci. Dolorem repudiandae ullam amet natus eos itaque quo reprehenderit corrupti nostrum atque. Explicabo alias accusantium vitae dolor quae dolorum voluptate itaque. Natus maxime eius rem alias iste amet magni, adipisci libero repellendus tempora expedita hic pariatur, odit aliquam atque et eligendi doloremque voluptatum ipsam illo recusandae, est a officia. Quisquam laudantium inventore, maiores omnis delectus neque, eligendi assumenda architecto temporibus nulla velit sequi vel aliquid sapiente doloribus ex eos harum odit eum! Quasi atque quo architecto laboriosam, eligendi sapiente earum dolore voluptatibus aspernatur? Dolores maxime numquam eius repudiandae officiis accusamus ipsa ut illo voluptate beatae corporis repellendus alias, nisi expedita quam voluptates voluptatem dolorem voluptatum ex quo fugit ducimus? Nemo dicta quidem magnam suscipit! Assumenda quam omnis vel explicabo, error nam aut animi similique maxime et beatae dolor perspiciatis ea laborum magni id voluptatum aspernatur tenetur provident vitae alias! Repellat cumque mollitia accusantium quasi voluptas sit. Consequatur, dolorum dolores omnis possimus pariatur dicta, illum amet consequuntur, assumenda ex ducimus.',
            'category_id' => 2,
            'user_id' =>1
        ]);
        Post::create([
            'judul' => 'Judul Keempat',
            'slug' => 'judul-keempat',
            'excerpt' =>'Lorem ipsum dolor sit amet.',
            'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil assumenda voluptate eos quidem aperiam reprehenderit omnis ab nulla adipisci, nostrum, praesentium mollitia, impedit culpa neque. Omnis error totam, consequatur optio non voluptates eaque dignissimos nesciunt mollitia iure nobis quisquam debitis, quidem alias, laudantium cum iste vel facere. Illum, eveniet? Repudiandae aut temporibus nesciunt quidem illum assumenda omnis eum consectetur doloribus quo culpa, quasi quae vel fugiat accusamus alias nostrum repellat cum molestiae impedit similique! Recusandae molestias, ut rem tempora hic deserunt qui magni ab quam nostrum ipsa optio odio repellat sapiente iste dolores impedit aliquid nam, beatae delectus blanditiis voluptates officiis unde! Qui modi aut dolore officia consequuntur debitis voluptatibus molestiae ut corrupti? Aliquid quos totam obcaecati amet eaque, iusto distinctio ullam earum corporis soluta eos molestias eveniet, error corrupti in, maxime quidem! Dicta doloribus et quidem minima obcaecati architecto adipisci. Dolorem repudiandae ullam amet natus eos itaque quo reprehenderit corrupti nostrum atque. Explicabo alias accusantium vitae dolor quae dolorum voluptate itaque. Natus maxime eius rem alias iste amet magni, adipisci libero repellendus tempora expedita hic pariatur, odit aliquam atque et eligendi doloremque voluptatum ipsam illo recusandae, est a officia. Quisquam laudantium inventore, maiores omnis delectus neque, eligendi assumenda architecto temporibus nulla velit sequi vel aliquid sapiente doloribus ex eos harum odit eum! Quasi atque quo architecto laboriosam, eligendi sapiente earum dolore voluptatibus aspernatur? Dolores maxime numquam eius repudiandae officiis accusamus ipsa ut illo voluptate beatae corporis repellendus alias, nisi expedita quam voluptates voluptatem dolorem voluptatum ex quo fugit ducimus? Nemo dicta quidem magnam suscipit! Assumenda quam omnis vel explicabo, error nam aut animi similique maxime et beatae dolor perspiciatis ea laborum magni id voluptatum aspernatur tenetur provident vitae alias! Repellat cumque mollitia accusantium quasi voluptas sit. Consequatur, dolorum dolores omnis possimus pariatur dicta, illum amet consequuntur, assumenda ex ducimus.',
            'category_id' => 2,
            'user_id' =>2
        ]);
    */
    }
}
