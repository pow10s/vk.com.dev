<?php

use Phinx\Seed\AbstractSeed;

class CommentSeeder extends AbstractSeed
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
        for ($i = 0; $i < 20; $i++) {
            $data[] = [
                'body' => $faker->text(50),
                'users_id' => rand(2, 10),
                'post_id' => rand(2, 60),
            ];
        }
        $this->insert('comments', $data);
    }
}
