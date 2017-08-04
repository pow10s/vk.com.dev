<?php

use Phinx\Seed\AbstractSeed;

class AddAdminSeede extends AbstractSeed
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
        for ($i = 0; $i < 1; $i++) {
            $data[] = [
                'full_name' => 'admin',
                'email' => 'admin@gmail.com',
                'img_url' => $faker->imageUrl(200, 200, 'people'),
                'password' => '$2y$12$T6RfGlcOpkGgkjjpIgeV1ei9QtP2VdOnFgW8Gvf9O32esDD1mKQUW',
                'birth' => $faker->date(),
                'role_id' => '1',
                'banned' => '0',
            ];
        }
        $this->insert('users', $data);
    }
}
