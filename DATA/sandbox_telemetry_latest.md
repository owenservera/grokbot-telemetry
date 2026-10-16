# sandbox_telemetry_parse — 2026-10-16 21:26:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=843135 lines=3151
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2088 |
| `memory_sample` | 1054 |
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
| `chromeBrowserPssKb` | {'int': 1054} |
| `chromeGpuPssKb` | {'int': 1054} |
| `chromeOtherPssKb` | {'int': 1054} |
| `chromeProcesses` | {'int': 1054} |
| `chromeProfiles` | {'int': 1054} |
| `chromeRendererMaxPssKb` | {'int': 1054} |
| `chromeRendererPssKb` | {'int': 1054} |
| `chromeRenderers` | {'int': 1054} |
| `chromeTabs` | {'int': 1054} |
| `chromeTabsProbedProfiles` | {'int': 1054} |
| `chromeUtilityPssKb` | {'int': 1054} |
| `desktopPssKb` | {'int': 1054} |
| `hostPssKb` | {'int': 1054} |
| `kind` | {'str': 1054} |
| `memAvailableKb` | {'int': 1054} |
| `memTotalKb` | {'int': 1054} |
| `otherPssKb` | {'int': 1054} |
| `processes` | {'int': 1054} |
| `pssFallbackProcesses` | {'int': 1054} |

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
| `cpuMillicores` | {'int': 2085} |
| `display` | {'int': 2088} |
| `kind` | {'str': 2088} |
| `processes` | {'int': 2088} |
| `pssKb` | {'int': 2088} |
| `rendererMaxPssKb` | {'int': 2088} |
| `renderers` | {'int': 2088} |
| `tabs` | {'int': 2087} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
