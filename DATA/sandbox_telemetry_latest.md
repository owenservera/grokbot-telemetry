# sandbox_telemetry_parse — 2026-10-16 21:23:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=840726 lines=3142
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2082 |
| `memory_sample` | 1051 |
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
| `chromeBrowserPssKb` | {'int': 1051} |
| `chromeGpuPssKb` | {'int': 1051} |
| `chromeOtherPssKb` | {'int': 1051} |
| `chromeProcesses` | {'int': 1051} |
| `chromeProfiles` | {'int': 1051} |
| `chromeRendererMaxPssKb` | {'int': 1051} |
| `chromeRendererPssKb` | {'int': 1051} |
| `chromeRenderers` | {'int': 1051} |
| `chromeTabs` | {'int': 1051} |
| `chromeTabsProbedProfiles` | {'int': 1051} |
| `chromeUtilityPssKb` | {'int': 1051} |
| `desktopPssKb` | {'int': 1051} |
| `hostPssKb` | {'int': 1051} |
| `kind` | {'str': 1051} |
| `memAvailableKb` | {'int': 1051} |
| `memTotalKb` | {'int': 1051} |
| `otherPssKb` | {'int': 1051} |
| `processes` | {'int': 1051} |
| `pssFallbackProcesses` | {'int': 1051} |

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
| `cpuMillicores` | {'int': 2079} |
| `display` | {'int': 2082} |
| `kind` | {'str': 2082} |
| `processes` | {'int': 2082} |
| `pssKb` | {'int': 2082} |
| `rendererMaxPssKb` | {'int': 2082} |
| `renderers` | {'int': 2082} |
| `tabs` | {'int': 2081} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
