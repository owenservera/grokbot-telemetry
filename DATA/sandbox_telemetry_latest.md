# sandbox_telemetry_parse — 2026-10-16 12:18:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=439343 lines=1642
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1082 |
| `memory_sample` | 551 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 551} |
| `chromeGpuPssKb` | {'int': 551} |
| `chromeOtherPssKb` | {'int': 551} |
| `chromeProcesses` | {'int': 551} |
| `chromeProfiles` | {'int': 551} |
| `chromeRendererMaxPssKb` | {'int': 551} |
| `chromeRendererPssKb` | {'int': 551} |
| `chromeRenderers` | {'int': 551} |
| `chromeTabs` | {'int': 551} |
| `chromeTabsProbedProfiles` | {'int': 551} |
| `chromeUtilityPssKb` | {'int': 551} |
| `desktopPssKb` | {'int': 551} |
| `hostPssKb` | {'int': 551} |
| `kind` | {'str': 551} |
| `memAvailableKb` | {'int': 551} |
| `memTotalKb` | {'int': 551} |
| `otherPssKb` | {'int': 551} |
| `processes` | {'int': 551} |
| `pssFallbackProcesses` | {'int': 551} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1079} |
| `display` | {'int': 1082} |
| `kind` | {'str': 1082} |
| `processes` | {'int': 1082} |
| `pssKb` | {'int': 1082} |
| `rendererMaxPssKb` | {'int': 1082} |
| `renderers` | {'int': 1082} |
| `tabs` | {'int': 1081} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
