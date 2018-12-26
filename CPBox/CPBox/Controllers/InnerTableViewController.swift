//
//  InnerTableViewController.swift
//  CPBox
//
//  Created by Jonathan Ho on 7/26/18.
//  Copyright © 2018 Jonathan Ho. All rights reserved.
//
import Foundation
import UIKit
import CoreData

class InnerTableViewController: UITableViewController {
    static var lastSelected : Int = 0
    static var documentation = [
        API(id: 1, language: "Java", link: "https://docs.oracle.com/javase/8/docs/api/", bookmarked: true),
        API(id: 2, language: "C", link: "https://www.gnu.org/software/gnu-c-manual/gnu-c-manual.pdf", bookmarked: true),
        API(id: 3, language: "C++", link: "https://gcc.gnu.org/onlinedocs/libstdc++/api.html", bookmarked: false),
        API(id: 4, language: "Python", link: "https://docs.python.org/3/", bookmarked: false),
        API(id: 5, language: "Visual Basic .NET", link: "https://docs.microsoft.com/en-us/dotnet/visual-basic/", bookmarked: false),
        API(id: 6, language: "C#", link: "https://docs.microsoft.com/en-us/dotnet/csharp/", bookmarked: false),
        API(id: 7, language: "PHP", link: "http://php.net/manual/en/", bookmarked: false),
        API(id: 8, language: "JavaScript", link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference", bookmarked: false),
        API(id: 9, language: "MySQL", link: "https://dev.mysql.com/doc/", bookmarked: false),
        API(id: 10, language: "Assembly Language", link: "https://docs.oracle.com/cd/E19253-01/817-5477/817-5477.pdf", bookmarked: false),
        API(id: 11, language: "Swift", link: "https://developer.apple.com/documentation/swift", bookmarked: false),
        API(id: 12, language: "Object Pascal", link: "http://docs.embarcadero.com/products/rad_studio/cbuilder6/EN/CB6_ObjPascalLangGuide_EN.pdf", bookmarked: false),
        API(id: 13, language: "MATLAB", link: "https://www.mathworks.com/help/matlab/", bookmarked: false),
        API(id: 14, language: "Objective-C", link: "https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html#//apple_ref/doc/uid/TP40011210-CH1-SW1", bookmarked: false),
        API(id: 15, language: "Ruby", link: "http://ruby-doc.org/stdlib-2.5.1/", bookmarked: false),
        API(id: 16, language: "Perl", link: "http://perldoc.perl.org/perl.html", bookmarked: false),
        API(id: 17, language: "Go", link: "https://golang.org/doc/", bookmarked: false),
        API(id: 18, language: "R", link: "https://cran.r-project.org/manuals.html", bookmarked: false),
        API(id: 19, language: "Virtual Basic", link: "https://cran.r-project.org/manuals.html", bookmarked: false),
        API(id: 20, language: "PL/SQL", link: "https://docs.oracle.com/cd/B10501_01/appdev.920/a96624/toc.htm", bookmarked: false),
        API(id: 21, language: "SAS", link: "http://support.sas.com/documentation/index.html", bookmarked: false),
        API(id: 22, language: "D", link: "https://dlang.org/documentation.html", bookmarked: false),
        API(id: 23, language: "Dart", link: "https://api.dartlang.org/stable/2.0.0/index.html", bookmarked: false),
        API(id: 24, language: "F#", link: "https://docs.microsoft.com/en-us/dotnet/fsharp/", bookmarked: false),
        API(id: 25, language: "ABAP", link: "https://help.sap.com/saphelp_nw73ehp1/helpdata/en/43/41341147041806e10000000a1553f6/frameset.htm", bookmarked: false),
        API(id: 26, language: "Scala", link: "https://docs.scala-lang.org/api/all.html", bookmarked: false),
        API(id: 27, language: "COBOL", link: "https://www.ibm.com/support/knowledgecenter/en/SS6SG3_6.2.0/welcome.html", bookmarked: false),
        API(id: 28, language: "Fortran", link: "http://www.fortran90.org/", bookmarked: false),
        API(id: 29, language: "Lua", link: "https://www.lua.org/manual/5.3/", bookmarked: false),
        API(id: 30, language: "Transact-SQL", link: "https://docs.microsoft.com/en-us/sql/t-sql/language-reference?view=sql-server-2017", bookmarked: false),
        API(id: 31, language: "Apex", link: "https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_dev_guide.htm", bookmarked: false),
        API(id: 32, language: "LabVIEW", link: "http://zone.ni.com/reference/en-XX/help/371361R-01/lvconcepts/labview_documentation_resources/", bookmarked: false),
        API(id: 33, language: "Common Lisp", link: "https://www.gnu.org/software/clisp/resources.html", bookmarked: false),
        API(id: 34, language: "Ada", link: "http://www.adaic.org/resources/add_content/standards/05rm/RM-Final.pdf", bookmarked: false),
        API(id: 35, language: "Rust", link: "https://doc.rust-lang.org/std/", bookmarked: false),
        API(id: 36, language: "Ladder Logic", link: "https://www.idec.com/language/english/manual/FT1A-Ladder-Programming.pdf", bookmarked: false),
        API(id: 37, language: "Racket", link: "https://docs.racket-lang.org/", bookmarked: false),
        API(id: 38, language: "Prolog", link: "http://www.cs.cmu.edu/afs/cs/project/ai-repository/ai/lang/prolog/doc/intro/prolog.doc", bookmarked: false),
        API(id: 39, language: "Haskell", link: "https://www.haskell.org/documentation", bookmarked: false),
        API(id: 40, language: "OpenCL", link: "https://www.khronos.org/registry/OpenCL/sdk/1.1/docs/man/xhtml/", bookmarked: false),
        API(id: 41, language: "Scheme", link: "https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/", bookmarked: false),
        API(id: 42, language: "Kotlin", link: "https://kotlinlang.org/docs/kotlin-docs.pdf", bookmarked: false),
        API(id: 43, language: "Groovy", link: "http://groovy-lang.org/api.html", bookmarked: false),
        API(id: 44, language: "Hack", link: "https://docs.hhvm.com/hack/", bookmarked: false),
        API(id: 45, language: "Bash", link: "https://tiswww.case.edu/php/chet/bash/bashref.html", bookmarked: false),
        API(id: 46, language: "Tcl", link: "https://www.tcl.tk/doc/", bookmarked: false),
        API(id: 47, language: "Erlang", link: "https://www.erlang.org/docs", bookmarked: false),
        API(id: 48, language: "REXX", link: "http://www.rexxla.org/rexxlang/Rexx_Programmers_Reference.pdf", bookmarked: false),
        API(id: 49, language: "Julia", link: "https://docs.julialang.org", bookmarked: false),
        API(id: 50, language: "Clojure", link: "https://clojure.org/api/api", bookmarked: false),
    ]

    static var articles = [
        Article(id: 1, name: "Overview of Programming Contests", author: "Przemysław Dębiak (Psyho)", link: "http://psyho.gg/overview-of-programming-contests/", bookmarked: false),
        Article(id: 2, name: "The 'science' of training in competitive programming - Codeforces", author: "Thanh Trung Nguyen (I_love_Hoang_Yen)", link: "http://codeforces.com/blog/entry/17842", bookmarked: false),
        Article(id: 3, name: "If you ask me how to improve your algorithm competition skill, I will give you the link of this blog - Codeforces", author: "Huang I-Wen (dreamoon)", link: "http://codeforces.com/blog/entry/16599", bookmarked: false),
        Article(id: 4, name: "How to prepare for ACM - ICPC? - GeeksforGeeks", author: "Vishwesh Shrimali", link: "http://www.geeksforgeeks.org/how-to-prepare-for-acm-icpc/", bookmarked: false),
        Article(id: 5, name: "Complete reference to competitive programming - HackerEarth", author: "Ravi Ojha", link: "https://www.hackerearth.com/getstarted-competitive-programming/", bookmarked: false),
        Article(id: 6, name: "Getting started with the sport of competitive programming - HackerEarth", author: "Triveni Mahatha", link: "https://www.hackerearth.com/practice/notes/getting-started-with-the-sport-of-programming/", bookmarked: false),
    ]

    static var books = [
        Book(id: 1, name: "Competitive Programming", author: "Steven and Felix Halim", description: "This book contains a collection of relevant data structures, algorithms, and programming tips written for University students who want to be more competitive in the ACM International Collegiate Programming Contest (ICPC), high school students who are aspiring to be competitive in the International Olympiad in Informatics (IOI), coaches for these competitions, those who love problem solving using computer programs, and those who go for interviews in big IT-companies.", link: "https://cpbook.net/", rating: 2, bookmarked: false),
        Book(id: 2, name: "Programming Challenges: The Programming Contest Training Manual", author: "Steven Skiena and Miguel Revilla", description: "This book includes more than 100 programming challenges, as well as the theory and key concepts necessary for approaching them. Problems are organized by topic, and supplemented by complete tutorial material.", link: "https://www.amazon.com/Programming-Challenges-Contest-Training-Computer/dp/0387001638", rating: 2, bookmarked: false),
        Book(id: 3, name: "Competitive Programmer's Handbook", author: "Antti Laaksonen", description: "An introduction to competitive programming for aspiring IOI and ICPC contestants.", link: "https://cses.fi/book/book.pdf", rating: 2, bookmarked: false),
        Book(id: 4, name: "Computational Geometry: Algorithms and Applications", author: "Mark de Berg, Otfried Cheong, Marc van Kreveld, Mark Overmars", description: "This is a well-written book which covers a broad range of computational geometry problems.", link: "https://www.amazon.com/Computational-Geometry-Applications-Mark-Berg/dp/3540779736", rating: 2, bookmarked: false),
        Book(id: 5, name: "The Hitchhiker’s Guide to the Programming Contests", author: "Nite Nimajneb", description: "This book covers various topics relevant to competitive programming.", link: "http://comscigate.com/Books/contests/icpc.pdf", rating: 1, bookmarked: false),
        Book(id: 6, name: "プログラミングコンテストチャレンジブック (Japanese)", author: "秋葉拓哉, 岩田陽一, 北川宜稔", description: "プログラミングコンテストの問題を通してアルゴリズムのしくみや考え方を楽しく習得。世界トップレベルの著者たちがコンテストで得た知識やノウハウを難易度別にまとめました。現役プログラマだけでなくプログラマを目指している方にもぜひ読んでいたただきたい1冊。", link: "https://www.amazon.co.jp/%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%9F%E3%83%B3%E3%82%B0%E3%82%B3%E3%83%B3%E3%83%86%E3%82%B9%E3%83%88%E3%83%81%E3%83%A3%E3%83%AC%E3%83%B3%E3%82%B8%E3%83%96%E3%83%83%E3%82%AF-%E7%AC%AC2%E7%89%88-%EF%BD%9E%E5%95%8F%E9%A1%8C%E8%A7%A3%E6%B1%BA%E3%81%AE%E3%82%A2%E3%83%AB%E3%82%B4%E3%83%AA%E3%82%BA%E3%83%A0%E6%B4%BB%E7%94%A8%E5%8A%9B%E3%81%A8%E3%82%B3%E3%83%BC%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0%E3%83%86%E3%82%AF%E3%83%8B%E3%83%83%E3%82%AF%E3%82%92%E9%8D%9B%E3%81%88%E3%82%8B%EF%BD%9E-%E7%A7%8B%E8%91%89%E6%8B%93%E5%93%89/dp/4839941068", rating: 3, bookmarked: false),
        Book(id: 7, name: "算法竞赛入门经典 (Chinese)", author: "刘汝佳", description: "本书是一本算法竞赛的入门与提高教材，把C/C++语言、算法和解题有机地结合在一起，淡化理论，注重学习方法和实践技巧。全书内容分为12 章，包括程序设计入门、循环结构程序设计、数组和字符串、函数和递归、C++与STL入门、数据结构基础、暴力求解法、高效算法设计、动态规划初步、数学概念与方法、图论模型与算法、高级专题等内容，覆盖了算法竞赛入门和提高所需的主要知识点，并含有大量例题和习题。书中的代码规范、简洁、易懂，不仅能帮助读者理解算法原理，还能教会读者很多实用的编程技巧；书中包含的各种开发、测试和调试技巧也是传统的语言、算法类书籍中难以见到的。", link: "http://www.tup.com.cn/booksCenter/book_05568701.html", rating: 2, bookmarked: false),
        Book(id: 8, name: "算法竞赛入门经典——训练指南 (Chinese)", author: "刘汝佳, 陈锋", description: "《算法竞赛入门经典:训练指南》是《算法竞赛入门经典》的重要补充，旨在补充原书中没有涉及或者讲解得不够详细的内容，从而构建一个较完整的知识体系，并且用大量有针对性的题目，让抽象复杂的算法和数学具体化、实用化。《算法竞赛入门经典:训练指南》共6章，分别为算法设计基础、数学基础、实用数据结构、几何问题、图论算法与模型和更多算法专题，全书通过近200道例题深入浅出地介绍了上述领域的各个知识点、经典思维方式以及程序实现的常见方法和技巧，并在章末和附录中给出了丰富的分类习题，供读者查漏补缺和强化学习效果。", link: "https://www.amazon.cn/%E7%AE%97%E6%B3%95%E7%AB%9E%E8%B5%9B%E5%85%A5%E9%97%A8%E7%BB%8F%E5%85%B8-%E8%AE%AD%E7%BB%83%E6%8C%87%E5%8D%97-%E5%88%98%E6%B1%9D%E4%BD%B3/dp/B009SJJGOU", rating: 2, bookmarked: false),
        Book(id: 9, name: "算法艺术与信息学竞赛 (Chinese)", author: "刘汝佳, 黄亮", description: "《算法艺术与信息学竞赛》较为系统和全面地介绍了算法学最基本的知识。这些知识和技巧既是高等院校“算法与数据结构”课程的主要内容，也是国际青少年信息学奥林匹克（IOI）竞赛和ACM/ICPC国际大学生程序设计竞赛中所需要的。书中分析了相当数量的问题。", link: "https://www.amazon.cn/%E7%AE%97%E6%B3%95%E8%89%BA%E6%9C%AF%E4%B8%8E%E4%BF%A1%E6%81%AF%E5%AD%A6%E7%AB%9E%E8%B5%9B-%E5%88%98%E6%B1%9D%E4%BD%B3/dp/B0011A1VHY/ref=pd_sim_14_2?ie=UTF8&dpID=51KDVEw743L&dpSrc=sims&preST=_AC_UL160_SR113%2C160_&refRID=15THW7Z41WSR2A6BHBMY", rating: 3, bookmarked: false),
        Book(id: 10, name: "Introduction to Algorithms", author: "Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest and Clifford Stein", description: "Also known as CLRS (taken from name initials), this book is often referred to as the \"bible\" for algorithms and data structures. It's one of the most popular textbooks for university algorithm courses. This book covered various algorithms and data structures in great detail. The writing is more rigorous and can be difficult to some.", link: "https://mitpress.mit.edu/books/introduction-algorithms", rating: 3, bookmarked: false),
        Book(id: 11, name: "Algorithm Design", author: "Jon Kleinberg and Éva Tardos", description: "Algorithm Design introduces algorithms by looking at the real-world problems that motivate them. The book teaches students a range of design and analysis techniques for problems that arise in computing applications. The text encourages an understanding of the algorithm design process and an appreciation of the role of algorithms in the broader field of computer science.", link: "https://www.amazon.com/gp/product/0321295358/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&tag=kleinberg-tardos-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0321295358", rating: 2, bookmarked: false),
        Book(id: 12, name: "The Algorithm Design Manual", author: "Steven S. Skiena", description: "This newly expanded and updated second edition of the best-selling classic continues to take the \"mystery\" out of designing algorithms, and analyzing their efficacy and efficiency. Expanding on the first edition, the book now serves as the primary textbook of choice for algorithm design courses while maintaining its status as the premier practical reference guide to algorithms for programmers, researchers, and students.", link: "https://www.amazon.com/Algorithm-Design-Manual-Steven-Skiena/dp/1848000693", rating: 2, bookmarked: false),
        Book(id: 13, name: "Algorithms", author: "Robert Sedgewick and Kevin Wayne", description: "This book is neatly categorized, coupled with elaborate explanations and fantastic illustrations. It is used in some IOI training camps as a textbook.", link: "https://www.amazon.com/Algorithms-4th-Robert-Sedgewick/dp/032157351X", rating: 3, bookmarked: false),
        Book(id: 14, name: "Discrete Mathematics and Its Applications", author: "Kenneth H. Rosen", description: "Discrete Mathematics is closely relevant to competitive programming. This book provides comprehensive materials on a wide range of topics including: Logics and Proofs, Sets, Functions, Sequences, Matrices, Number Theory, Recursion, Counting, Probablity, Graphs, Trees and Boolean Alegra to name but a few.", link: "https://www.amazon.com/Discrete-Mathematics-Applications-Kenneth-Rosen/dp/0072899050", rating: 2, bookmarked: false),
        Book(id: 15, name: "Concrete Mathematics: A Foundation for Computer Science", author: "Ronald L. Graham, Donald E. Knuth, Oren Patashnik", description: "The book offers a deeper insight into Discrete Mathematics with more emphases on number-related topics.", link: "https://www.amazon.com/Concrete-Mathematics-Foundation-Computer-Science/dp/0201558025", rating: 2, bookmarked: false),
        Book(id: 16, name: "Linear Algebra and Its Applications", author: "David C. Lay, Steven R. Lay, Judi J. McDonald", description: "The book does a brilliant job at bridging the gap between a physical system (for scientists and engineers) and an abstract system (for mathematicians).", link: "https://www.amazon.com/Linear-Algebra-Its-Applications-5th/dp/032198238X/ref=sr_1_1?ie=UTF8&qid=1455475253&sr=8-1&keywords=Linear+Algebra+and+Its+Applications", rating: 2, bookmarked: false),
        Book(id: 17, name: "Introduction to Probability", author: "Charles M. Grinstead and J. Laurie Snell", description: "This is a well-written introductory probabilities book. It's free for download (pdf) (released under GNU Free Documentation License).", link: "http://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/book.html", rating: 2, bookmarked: false),
        Book(id: 18, name: "How to Solve It: A New Aspect of Mathematical Method", author: "G. Polya", description: "An old-time classic. In this book, the author provides a systematic way to solve problems creatively.", link: "https://www.amazon.com/How-Solve-It-Mathematical-Princeton/dp/069111966X", rating: 2, bookmarked: false),
        Book(id: 19, name: "Intermediate Counting & Probability", author: "David Patrick", description: "Topics in counting and probability byformer USA Mathematical Olympiad winner David Patrick , topics include inclusion-exclusion, 1-1 correspondences, the Pigeonhole Principle, constructive expectation, Fibonacci and Catalan numbers, recursion, conditional probability, generating functions, graph theory, and much more.", link: "https://artofproblemsolving.com/store/item/intermediate-counting", rating: 2, bookmarked: false),
    ]
//
//    var blogs = [
//
//    ]
//
//    var calendars = [
//
//    ]
//
//    var courses = [
//
//    ]
//
//    var forums = [
//
//    ]
//
//    var notebooks = [
//
//    ]
//
//    var tutorials = [
//
//    ]
//
//    var videos = [
//
//    ]
//
//    var websites = [
//
//    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if ListTableViewController.lastSelected == 0 {
            self.tableView.rowHeight = 75
        } else if ListTableViewController.lastSelected == 1 {
            self.tableView.rowHeight = 110
        } else if ListTableViewController.lastSelected == 2 {
            self.tableView.rowHeight = 400
        }

        self.navigationItem.title = ListTableViewController.resources[ListTableViewController.lastSelected].title
        self.tableView.layoutMargins = UIEdgeInsets.zero
        self.tableView.separatorInset = UIEdgeInsets.zero
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if ListTableViewController.lastSelected == 2 {
            return 3
        }
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if ListTableViewController.lastSelected == 0 {
            return InnerTableViewController.documentation.count
        } else if ListTableViewController.lastSelected == 1 {
            return InnerTableViewController.articles.count
        } else if ListTableViewController.lastSelected == 2 {
            if section == 0 {
                return 9
            } else if section == 1 {
                return 4
            } else {
                return 6
            }
//            return InnerTableViewController.books.count
        }
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if ListTableViewController.lastSelected == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "apiInnerTableViewCell", for: indexPath) as! APIInnerTableViewCell
            cell.layoutMargins = UIEdgeInsets.zero
            let api = InnerTableViewController.documentation[indexPath.row]
            cell.apiLabel?.text = api.language
            if (api.bookmarked) {
                cell.bookmarkImage?.image = UIImage(named: "bookmark")?.resizeImage(targetSize: CGSize(width: 60, height: 57.64))
            } else {
                cell.bookmarkImage?.image = UIImage(named: "notbookmark")?.resizeImage(targetSize: CGSize(width: 60, height: 57.52))
            }
            cell.bookmarkImage?.contentMode = UIViewContentMode.scaleToFill
            return cell
        } else if ListTableViewController.lastSelected == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "articleInnerTableViewCell", for: indexPath) as! ArticleInnerTableViewCell
            cell.layoutMargins = UIEdgeInsets.zero
            let article = InnerTableViewController.articles[indexPath.row]
            cell.articleTitleLabel?.text = article.name
            cell.articleAuthorLabel?.text = article.author
            return cell
        } else if ListTableViewController.lastSelected == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "bookInnerTableViewCell", for: indexPath) as! BookInnerTableViewCell
            cell.layoutMargins = UIEdgeInsets.zero
            var book : Book
            if indexPath.section == 0 {
                book = InnerTableViewController.books[indexPath.row]
            } else if indexPath.section == 1 {
                book = InnerTableViewController.books[indexPath.row+9]
            } else {
                book = InnerTableViewController.books[indexPath.row+13]
            }
            cell.bookTitleLabel?.text = book.name
            cell.bookAuthorLabel?.text = book.author
            cell.bookDescriptionLabel?.text = book.description
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "apiInnerTableViewCell", for: indexPath) as! APIInnerTableViewCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        if ListTableViewController.lastSelected == 2 {
            if indexPath.section == 0 {
                InnerTableViewController.lastSelected = indexPath.row
            } else if indexPath.section == 1 {
                InnerTableViewController.lastSelected = indexPath.row + 9
            } else {
                InnerTableViewController.lastSelected = indexPath.row + 13
            }
        } else {
            InnerTableViewController.lastSelected = indexPath.row
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if ListTableViewController.lastSelected == 2 {
            if section == 0 {
                return "General Competitive Programming"
            } else if section == 1 {
                return "Algorithms"
            } else {
                return "Mathematics"
            }
        }
        return ""
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if ListTableViewController.lastSelected == 2 {
            return 40
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.backgroundView?.backgroundColor = UIColor(red:0.97, green:0.40, blue:0.72, alpha:1.0)
        header.textLabel?.textColor = UIColor(red:0.15, green:0.99, blue:0.96, alpha:1.0)
        header.textLabel?.textAlignment = .center
    }
}
