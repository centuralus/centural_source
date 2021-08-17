
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.util.Arrays;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.*;
import java.util.stream.Collectors;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.nio.file.StandardWatchEventKinds;
import java.nio.file.WatchEvent;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;
import java.nio.file.WatchEvent.Kind;
import java.time.LocalDate;
import java.time.LocalTime;
/* Name of the class has to be "Main" only if the class is public. */
class test
{
    static ProcessBuilder processBuilder;
    static Process process;
    static InputStreamReader inputStreamReader;
    static BufferedWriter outputBufferedWriter;
            
    private static boolean loop(final InputStreamReader inputStreamReader) {
        try {
            final char[] buf = new char[256];
            final int read = inputStreamReader.read(buf);
            if (read < 1) {
                return false;
            }
            proccess_line(new String(buf));
            return true;
        } catch (final IOException e) {
            e.printStackTrace();
        }
        return false;
    }
    public static void out(String... out) {
        //System.out.println(String.join("",out));
    }
    public static boolean validate_line(String line) {
        final char open_bracket = '[';
        final char close_bracket = ']';
        final char category_delimiter = ':';
        //
        final boolean time_stamp_start = out_char_at("Time Stamp Start",line,0,open_bracket);
        final boolean time_stamp_end = out_char_at("Time Stamp End",line,9,close_bracket);
        //
        final boolean category_start = line.charAt(11) == open_bracket;
        final boolean category_end = line.substring(12).indexOf(category_delimiter) >= 0;
        //
        return time_stamp_start && time_stamp_end && category_start && category_end;
    }
    public static LocalDate now() {
        return LocalDate.now();
    }
    public static boolean stringContainsItemFromList(String inputStr, String[] items)
{
	inputStr = inputStr.toLowerCase();
    for(int i =0; i < items.length; i++)
    {
        if(inputStr.contains(items[i]))
        {
            return true;
        }
    }
    return false;
}
public static ArrayList<String> message_stack = new ArrayList<String>();
public static void clear_chat() {
    command("/tellraw @a \"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 \"");
	
	command("/tellraw @a \"This is a test\"");
		
	try {
		message_stack.forEach((n) -> command("say " + n));
		
		message_stack.forEach((n) -> command("tellraw @a \"" + n + "\""));
    }catch(Exception e) {

    }
}
public static void command(String command) {
    
    try {
    outputBufferedWriter.write(command);
    outputBufferedWriter.write("\n");
    outputBufferedWriter.flush();
    }catch(Exception e) {

    }
}
    public static boolean proccess_server_thread_info(String line) {
        out(line);
        final boolean is_player_talking = line.startsWith("<") && line.substring(1).indexOf('>') >= 0;
        if(is_player_talking) {
            final String player_name = is_player_talking ? line.substring(1,line.substring(1).indexOf('>')+1) : "N/A";
            final String message = is_player_talking ? line.substring(line.substring(1).indexOf('>')+3) : "N/A";
            out(player_name,message);
            String[] banned_words = {"4r5e", "5h1t", "5hit", "a55", "anal", "anus", "ar5e", "arrse", "arse", "ass", "ass-fucker", "asses", "assfucker", "assfukka", "asshole", "assholes", "asswhole", "a_s_s", "b!tch", "b00bs", "b17ch", "b1tch", "ballbag", "balls", "ballsack", "bastard", "beastial", "beastiality", "bellend", "bestial", "bestiality", "bi+ch", "biatch", "bitch", "bitcher", "bitchers", "bitches", "bitchin", "bitching", "bloody", "blow job", "blowjob", "blowjobs", "boiolas", "bollock", "bollok", "boner", "boob", "boobs", "booobs", "boooobs", "booooobs", "booooooobs", "breasts", "buceta", "bugger", "bum", "bunny fucker", "butt", "butthole", "buttmuch", "buttplug", "c0ck", "c0cksucker", "carpet muncher", "cawk", "chink", "cipa", "cl1t", "clit", "clitoris", "clits", "cnut", "cock", "cock-sucker", "cockface", "cockhead", "cockmunch", "cockmuncher", "cocks", "cocksuck", "cocksucked", "cocksucker", "cocksucking", "cocksucks", "cocksuka", "cocksukka", "cok", "cokmuncher", "coksucka", "coon", "cox", "crap", "cum", "cummer", "cumming", "cums", "cumshot", "cunilingus", "cunillingus", "cunnilingus", "cunt", "cuntlick", "cuntlicker", "cuntlicking", "cunts", "cyalis", "cyberfuc", "cyberfuck", "cyberfucked", "cyberfucker", "cyberfuckers", "cyberfucking", "d1ck", "damn", "dick", "dickhead", "dildo", "dildos", "dink", "dinks", "dirsa", "dlck", "dog-fucker", "doggin", "dogging", "donkeyribber", "doosh", "duche", "dyke", "ejaculate", "ejaculated", "ejaculates", "ejaculating", "ejaculatings", "ejaculation", "ejakulate", "f u c k", "f u c k e r", "f4nny", "fag", "fagging", "faggitt", "faggot", "faggs", "fagot", "fagots", "fags", "fanny", "fannyflaps", "fannyfucker", "fanyy", "fatass", "fcuk", "fcuker", "fcuking", "feck", "fecker", "felching", "fellate", "fellatio", "fingerfuck", "fingerfucked", "fingerfucker", "fingerfuckers", "fingerfucking", "fingerfucks", "fistfuck", "fistfucked", "fistfucker", "fistfuckers", "fistfucking", "fistfuckings", "fistfucks", "flange", "fook", "fooker", "fuck", "fucka", "fucked", "fucker", "fuckers", "fuckhead", "fuckheads", "fuckin", "fucking", "fuckings", "fuckingshitmotherfucker", "fuckme", "fucks", "fuckwhit", "fuckwit", "fudge packer", "fudgepacker", "fuk", "fuker", "fukker", "fukkin", "fuks", "fukwhit", "fukwit", "fux", "fux0r", "f_u_c_k", "gangbang", "gangbanged", "gangbangs", "gaylord", "gaysex", "goatse", "God", "god-dam", "god-damned", "goddamn", "goddamned", "hardcoresex", "hell", "heshe", "hoar", "hoare", "hoer", "homo", "hore", "horniest", "horny", "hotsex", "jack-off", "jackoff", "jap", "jerk-off", "jism", "jiz", "jizm", "jizz", "kawk", "knob", "knobead", "knobed", "knobend", "knobhead", "knobjocky", "knobjokey", "kock", "kondum", "kondums", "kum", "kummer", "kumming", "kums", "kunilingus", "l3i+ch", "l3itch", "labia", "lust", "lusting", "m0f0", "m0fo", "m45terbate", "ma5terb8", "ma5terbate", "masochist", "master-bate", "masterb8", "masterbat*", "masterbat3", "masterbate", "masterbation", "masterbations", "masturbate", "mo-fo", "mof0", "mofo", "mothafuck", "mothafucka", "mothafuckas", "mothafuckaz", "mothafucked", "mothafucker", "mothafuckers", "mothafuckin", "mothafucking", "mothafuckings", "mothafucks", "mother fucker", "motherfuck", "motherfucked", "motherfucker", "motherfuckers", "motherfuckin", "motherfucking", "motherfuckings", "motherfuckka", "motherfucks", "muff", "mutha", "muthafecker", "muthafuckker", "muther", "mutherfucker", "n1gga", "n1gger", "nazi", "nigg3r", "nigg4h", "nigga", "niggah", "niggas", "niggaz", "nigger", "niggers", "nob", "nob jokey", "nobhead", "nobjocky", "nobjokey", "numbnuts", "nutsack", "orgasim", "orgasims", "orgasm", "orgasms", "p0rn", "pawn", "pecker", "penis", "penisfucker", "phonesex", "phuck", "phuk", "phuked", "phuking", "phukked", "phukking", "phuks", "phuq", "pigfucker", "pimpis", "piss", "pissed", "pisser", "pissers", "pisses", "pissflaps", "pissin", "pissing", "pissoff", "poop", "porn", "porno", "pornography", "pornos", "prick", "pricks", "pron", "pube", "pusse", "pussi", "pussies", "pussy", "pussys", "rectum", "retard", "rimjaw", "rimming", "s hit", "s.o.b.", "sadist", "schlong", "screwing", "scroat", "scrote", "scrotum", "semen", "sex", "sh!+", "sh!t", "sh1t", "shag", "shagger", "shaggin", "shagging", "shemale", "shi+", "shit", "shitdick", "shite", "shited", "shitey", "shitfuck", "shitfull", "shithead", "shiting", "shitings", "shits", "shitted", "shitter", "shitters", "shitting", "shittings", "shitty", "skank", "slut", "sluts", "smegma", "smut", "snatch", "son-of-a-bitch", "spac", "spunk", "s_h_i_t", "t1tt1e5", "t1tties", "teets", "teez", "testical", "testicle", "tit", "titfuck", "tits", "titt", "tittie5", "tittiefucker", "titties", "tittyfuck", "tittywank", "titwank", "tosser", "turd", "tw4t", "twat", "twathead", "twatty", "twunt", "twunter", "v14gra", "v1gra", "vagina", "viagra", "vulva", "w00se", "wang", "wank", "wanker", "wanky", "whoar", "whore", "willies", "willy", "xrated", "xxx"};
            if(stringContainsItemFromList(message,banned_words)) {
                    command("kick " + player_name + " Refrain from cursing in public chat.");
                    clear_chat();
                    command("say Cursing in public chat is disabled.");
                
            } else {
				message_stack.add("<"+player_name+"> "+message);
			}
        }
        return true;
    }
    public static boolean categorize_line(String line) {
        final char category_delimiter = ':';

        String function_name = new Object() {}.getClass().getEnclosingMethod().getName();
        //out("[",function_name,"]: ",line);
        
        LocalTime line_military_time = LocalTime.parse(line.substring(1,9));
        LocalDate now = now();
        //out("[",function_name,"]: ","[",now.toString(),"]: ",line);

        final int index_of_category_delimiter = line.substring(12).indexOf(category_delimiter);
        final String category = line.substring(12,line.substring(12).indexOf(category_delimiter)+11);
        final String output = line.substring(index_of_category_delimiter+14);
        switch (category) {
            case "Server thread/INFO":
                proccess_server_thread_info(output);
            break;
        }

        out("[",function_name,"]: ","[",now.toString(),"]: ",category,line);

        return true;
    }
    public static boolean categorize_invalid_line(String line) {
        String function_name = new Object() {}.getClass().getEnclosingMethod().getName();
        out("[",function_name,"]: ",line);
        return true;
    }
    public static void proccess_line(String line) {
        boolean is_valid_line = validate_line(line) ? out_true("Proccessing line validated") : out_false("Proccessing line validation failed");
        boolean is_categorized_line = is_valid_line ? categorize_line(line) : categorize_invalid_line(line);

    }
	public static void main (String[] args) throws java.lang.Exception
	{
        
        //Process p = Runtime.getRuntime().exec("cmd /C start server.bat");
//int exitVal = p.waitFor();
        // Run this on Windows, cmd, /c = terminate after this run
        //processBuilder.command("java","-jar","-Xms1G","-Xmx1G","server.jar","nogui");
        ExecutorService pool = Executors.newSingleThreadExecutor();

        //ProcessBuilder processBuilder = new ProcessBuilder();

        // Run this on Windows, cmd, /c = terminate after this run
        //processBuilder.command("java","-jar","-Xms1G","-Xmx1G","server.jar","nogui");


        try {
            
                processBuilder = new ProcessBuilder("java","-jar","-Xms1G","-Xmx1G","server.jar","nogui");
                 process = processBuilder.start();
                inputStreamReader = new InputStreamReader(process.getInputStream());
                outputBufferedWriter = new BufferedWriter(new OutputStreamWriter(process.getOutputStream()));
            while (loop(inputStreamReader)) {
                ;
            }
            process.waitFor();
            process.destroy();
/*
            Process process = processBuilder.start();

            System.out.println("process ping...");
            ProcessReadTask task = new ProcessReadTask(process.getInputStream());
            Future<List<String>> future = pool.submit(task);

            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            
                BufferedWriter out = new BufferedWriter(new OutputStreamWriter(process.getOutputStream()));
            System.out.println(processBuilder.inheritIO());
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
                if (line == null) { break; }


                if (line.contains("[main/INFO]: You need to agree to the EULA in order to run the server. Go to eula.txt for more info.")) {
                    accept_eula();
                }
                if (line.contains("[Server thread/WARN]: Failed to save player data for")) {
                    if(line.substring(12).contains("WARN]: Failed to save player data for ")){
                        String ban_player = line.substring(64);
                        out.write("ban " + ban_player + " Duping");
                        out.write("\n");
                        out.flush();

                        out.write("say Banning " + ban_player + " player for attempted dupe");
                        
                        out.write("\n");
                        out.flush();

                        System.out.println("Banning " + ban_player + " player for attempted dupe");
                        
                        System.out.println("Banning player for attempted dupe");
                    } else {
                        line = "[14:11:51] [Server thread/WARN]: Failed to save player data for Bonesdog";
                        String ban_player = line.substring(64);
                        out.write("ban " + ban_player + " Duping");
                        out.write("\n");
                        out.flush();

                        out.write("say Banning " + ban_player + " player for attempted dupe");
                        
                        out.write("\n");
                        out.flush();
                        
                        System.out.println("Banning " + ban_player + " player for attempted dupe");
                        
                    }
               
                           }
            }

            process.waitFor();

            // no block, can do other tasks here
            System.out.println("process task1...");
            System.out.println("process task2...");

            List<String> result = future.get(5, TimeUnit.SECONDS);
            for (String s : result) {
                System.out.println(s);
            }
*/
        } catch (final Exception ex) {
            ex.printStackTrace();
        } finally {
            pool.shutdown();
        }
    
	}
    public static boolean out_true(Object message) {
        System.out.println(message);
        return true;
    }
    public static boolean out_false(Object message) {
        System.out.println(message);
        return false;
    }
    public static boolean out_char_at(String variable,String value,int position,char character) {
        return (value.charAt(position) == character) ?
            out_true(String.format("%s open bracket found at correct position",variable)) :
            out_false(String.format("%s open bracket found at correct position",variable));
    }
    
    private static void test()  {
        /*
        FileAlterationObserver observer = new FileAlterationObserver(folder);
        FileAlterationMonitor monitor =
                new FileAlterationMonitor(pollingInterval);
        FileAlterationListener listener = new FileAlterationListenerAdaptor() {
            // Is triggered when a file is created in the monitored folder
            @Override
            public void onFileCreate(File file) {
                // do something
            }
    
            // Is triggered when a file is deleted from the monitored folder
            @Override
            public void onFileDelete(File file) {
               // do something
            }
        };
        */
    }
    private static void ban_player(String line) {

    }
    private static void accept_eula() {
        List<String> lines = new ArrayList<String>();
        String line = null;
        try {
            File f1 = new File("eula.txt");
            FileReader fr = new FileReader(f1);
            BufferedReader br = new BufferedReader(fr);
            while ((line = br.readLine()) != null) {
                if (line.contains("eula=false"))
                    line = line.replace("eula=false","eula=true");
                lines.add(line);
            }
            fr.close();
            br.close();

            FileWriter fw = new FileWriter(f1);
            BufferedWriter out = new BufferedWriter(fw);
            for(String s : lines)
                 out.write(s + "\n");
            out.flush();
            out.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    private static class ProcessReadTask implements Callable<List<String>> {

        private InputStream inputStream;

        public ProcessReadTask(InputStream inputStream) {
            this.inputStream = inputStream;
        }

        @Override
        public List<String> call() {
            return new BufferedReader(new InputStreamReader(inputStream))
                .lines()
                .collect(Collectors.toList());
        }
    }
}