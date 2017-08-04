<?php

use Phinx\Seed\AbstractSeed;

class PostSeeder extends AbstractSeed
{
    /**
     * Run Method.
     *
     * Write your database seeder using this method.
     *
     * More information on writing seeders is available here:
     * http://docs.phinx.org/en/latest/seeding.html
     */
    public function run()
    {
        $faker = Faker\Factory::create();
        $data = [];
        for ($i = 0; $i < 60; $i++) {
            $data[] = [
                'title' => $faker->title,
                'body' => $faker->text(),
                'img_url' => $faker->imageUrl(900, 300, 'cats'),
                'users_id' => rand(2, 10),
                'likes' => rand(1, 100),
                'commentable' => rand(0,1),
            ];
        }
        $this->insert('posts', $data);
    }
}
