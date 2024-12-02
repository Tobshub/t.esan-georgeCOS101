use std::io;

fn main() {
    let office_admin_vec = vec!["Intern", "Administrator", "Senior Administrator", "Office Manager", "Director", "CEO"];
    let academic_vec = vec!["Academic", "Research Assistant", "PhD Candidate", "Post-Doc Researcher", "Senior Lecturer", "Dean"];
    let lawyer_vec = vec!["Paralegal", "Junior Associate", "Associate", "Senior Associate 1-2", "Senior Associate 3-4", "Partner"];
    let teacher_vec = vec!["Placement", "Classroom Teacher", "Snr Teacher", "Leading Teacher", "Senior Associate 3-4", "Partner"];

    let profession: usize = read_line(
        "
What is your profession (Select a number 1-4)?
1. Office Administrator
2. Academic
3. Lawyer
4. Teacher
",
    )
    .parse()
    .expect("Failed to parse profession");
    if profession < 1 || profession > 4 {
        panic!("Invalid profession entered");
    }
    let yoe: f32 = read_line("Enter years of experience:")
        .parse()
        .expect("Failed to parse years of experience");

    let ps_levels = ["APS 1-2", "APS 3-5", "APS 5-8", "EL1 8-10", "EL2 10-13", "SES"];

    match profession {
        1 => title_from_exp(&office_admin_vec, yoe, &ps_levels),
        2 => title_from_exp(&academic_vec, yoe, &ps_levels),
        3 => title_from_exp(&lawyer_vec, yoe, &ps_levels),
        4 => title_from_exp(&teacher_vec, yoe, &ps_levels),
        _ => panic!("Invalid profession entered"),
    };
}

fn title_from_exp(titles_vec: &[&str], yoe: f32, ps_levels_vec: &[&str]) {
    let title;
    let ps_level;
    if yoe <= 2.0 {
        title = titles_vec[0];
        ps_level = ps_levels_vec[0];
    } else if yoe <= 5.0 {
        title = titles_vec[1];
        ps_level = ps_levels_vec[1];
    } else if yoe <= 8.0 {
        title = titles_vec[2];
        ps_level = ps_levels_vec[2];
    } else if yoe <= 10.0 {
        title = titles_vec[3];
        ps_level = ps_levels_vec[3];
    } else if yoe <= 13.0 {
        title = titles_vec[4];
        ps_level = ps_levels_vec[4];
    } else {
        title = titles_vec[5];
        ps_level = ps_levels_vec[5];
    };

    println!("Your title is {}", title);
    println!("Public Servant Level: {}", ps_level);
}

fn read_line(hint: &str) -> String {
    println!("{}", hint);
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Failed to read input");
    return input.trim().to_string();
}
