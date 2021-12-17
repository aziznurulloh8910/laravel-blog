<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
  /**
   * Seed the application's database.
   *
   * @return void
   */
  public function run()
  {
    

    // User::create([
    //   'name' => 'Udin Samsudin',
    //   'email' => 'udin@gmail.com',
    //   'password' => bcrypt('1234')
    // ]);

    User::create([
      'name' => 'Aziz Nurulloh',
      'email' => 'aziz@gmail.com',
      'username' => 'aziz8',
      'password' => bcrypt('password')
    ]);

    User::factory(5)->create();

    Category::create([
      'name' => 'Web Programming',
      'slug' => 'web-programming'
    ]);

    Category::create([
      'name' => 'Mobile Programming',
      'slug' => 'mobile-programming'
    ]);

    Category::create([
      'name' => 'Personal Branding',
      'slug' => 'personal-branding'
    ]);

    Post::factory(20)->create();

    // Post::create([
    //   'title' => 'Judul Kahiji',
    //   'category_id' => 1,
    //   'user_id' => 1,
    //   'slug' => 'judul-kahiji',
    //   'excerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi',
    //   'body' => '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi, nam voluptas alias culpa veniam asperiores? Et explicabo excepturi illo ad aut, sed tempora aliquam eos vero corrupti suscipit quam, laborum ipsam minima quae. Ut odit perspiciatis deleniti harum illum officia eligendi quidem repellat mollitia tempore eveniet voluptatem sapiente quaerat voluptas quasi ad alias voluptatibus aspernatur natus, eius debitis tenetur nisi ducimus dolore! Asperiores maxime natus exercitationem illo corrupti excepturi esse amet.</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi, nam voluptas alias culpa veniam asperiores? Et explicabo excepturi illo ad aut, sed tempora aliquam eos vero corrupti suscipit quam, laborum ipsam minima quae. Ut odit perspiciatis deleniti harum illum officia eligendi quidem repellat mollitia tempore eveniet voluptatem sapiente quaerat voluptas quasi ad alias voluptatibus aspernatur natus, eius debitis tenetur nisi ducimus dolore! Asperiores maxime natus exercitationem illo corrupti excepturi esse amet.</p>'
    // ]);

    // Post::create([
    //   'title'=>'Judul Kadua',
    //   'category_id'=>2,
    //   'user_id' => 1,
    //   'slug'=>'judul-kadua',
    //   'excerpt'=>'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi',
    //   'body'=>'<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi, nam voluptas alias culpa veniam asperiores? Et explicabo excepturi illo ad aut, sed tempora aliquam eos vero corrupti suscipit quam, laborum ipsam minima quae. Ut odit perspiciatis deleniti harum illum officia eligendi quidem repellat mollitia tempore eveniet voluptatem sapiente quaerat voluptas quasi ad alias voluptatibus aspernatur natus, eius debitis tenetur nisi ducimus dolore! Asperiores maxime natus exercitationem illo corrupti excepturi esse amet.</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi, nam voluptas alias culpa veniam asperiores? Et explicabo excepturi illo ad aut, sed tempora aliquam eos vero corrupti suscipit quam, laborum ipsam minima quae. Ut odit perspiciatis deleniti harum illum officia eligendi quidem repellat mollitia tempore eveniet voluptatem sapiente quaerat voluptas quasi ad alias voluptatibus aspernatur natus, eius debitis tenetur nisi ducimus dolore! Asperiores maxime natus exercitationem illo corrupti excepturi esse amet.</p>'
    // ]);
    
    // Post::create([
    //     'title'=>'Judul Katilu',
    //     'category_id'=>3,
    //     'user_id' => 2,
    //     'slug'=>'judul-katilu',
    //     'excerpt'=>'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi',
    //     'body'=>'<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi, nam voluptas alias culpa veniam asperiores? Et explicabo excepturi illo ad aut, sed tempora aliquam eos vero corrupti suscipit quam, laborum ipsam minima quae. Ut odit perspiciatis deleniti harum illum officia eligendi quidem repellat mollitia tempore eveniet voluptatem sapiente quaerat voluptas quasi ad alias voluptatibus aspernatur natus, eius debitis tenetur nisi ducimus dolore! Asperiores maxime natus exercitationem illo corrupti excepturi esse amet.</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi, nam voluptas alias culpa veniam asperiores? Et explicabo excepturi illo ad aut, sed tempora aliquam eos vero corrupti suscipit quam, laborum ipsam minima quae. Ut odit perspiciatis deleniti harum illum officia eligendi quidem repellat mollitia tempore eveniet voluptatem sapiente quaerat voluptas quasi ad alias voluptatibus aspernatur natus, eius debitis tenetur nisi ducimus dolore! Asperiores maxime natus exercitationem illo corrupti excepturi esse amet.</p>'
    // ]);
    
    
    // Post::create([
    //     'title'=>'Judul Kaopat',
    //     'category_id'=>1,
    //     'user_id' => 2,
    //     'slug'=>'judul-kaopat',
    //     'excerpt'=>'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi',
    //     'body'=>'<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi, nam voluptas alias culpa veniam asperiores? Et explicabo excepturi illo ad aut, sed tempora aliquam eos vero corrupti suscipit quam, laborum ipsam minima quae. Ut odit perspiciatis deleniti harum illum officia eligendi quidem repellat mollitia tempore eveniet voluptatem sapiente quaerat voluptas quasi ad alias voluptatibus aspernatur natus, eius debitis tenetur nisi ducimus dolore! Asperiores maxime natus exercitationem illo corrupti excepturi esse amet.</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Pariatur earum, suscipit nihil rem cum omnis nesciunt ut eligendi, nam voluptas alias culpa veniam asperiores? Et explicabo excepturi illo ad aut, sed tempora aliquam eos vero corrupti suscipit quam, laborum ipsam minima quae. Ut odit perspiciatis deleniti harum illum officia eligendi quidem repellat mollitia tempore eveniet voluptatem sapiente quaerat voluptas quasi ad alias voluptatibus aspernatur natus, eius debitis tenetur nisi ducimus dolore! Asperiores maxime natus exercitationem illo corrupti excepturi esse amet.</p>'
    // ]);
  }
}
