use ExtUtils::MakeMaker;

WriteMakefile (
               AUTHOR        => 'Casey West <casey@geeknest.com>',
               ABSTRACT      => "List Headers From Simple Objects",
               NAME          => 'Email::Simple::Headers',
               PREREQ_PM     => {
                                 'Test::More' => '0.47',
                                 'Email::Simple'   => '',
                                },
               VERSION_FROM  => 'lib/Email/Simple/Headers.pm',
              );
