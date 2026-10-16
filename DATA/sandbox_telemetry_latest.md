# sandbox_telemetry_parse — 2026-10-16 20:35:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=809405 lines=3025
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2004 |
| `memory_sample` | 1012 |
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
| `chromeBrowserPssKb` | {'int': 1012} |
| `chromeGpuPssKb` | {'int': 1012} |
| `chromeOtherPssKb` | {'int': 1012} |
| `chromeProcesses` | {'int': 1012} |
| `chromeProfiles` | {'int': 1012} |
| `chromeRendererMaxPssKb` | {'int': 1012} |
| `chromeRendererPssKb` | {'int': 1012} |
| `chromeRenderers` | {'int': 1012} |
| `chromeTabs` | {'int': 1012} |
| `chromeTabsProbedProfiles` | {'int': 1012} |
| `chromeUtilityPssKb` | {'int': 1012} |
| `desktopPssKb` | {'int': 1012} |
| `hostPssKb` | {'int': 1012} |
| `kind` | {'str': 1012} |
| `memAvailableKb` | {'int': 1012} |
| `memTotalKb` | {'int': 1012} |
| `otherPssKb` | {'int': 1012} |
| `processes` | {'int': 1012} |
| `pssFallbackProcesses` | {'int': 1012} |

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
| `cpuMillicores` | {'int': 2001} |
| `display` | {'int': 2004} |
| `kind` | {'str': 2004} |
| `processes` | {'int': 2004} |
| `pssKb` | {'int': 2004} |
| `rendererMaxPssKb` | {'int': 2004} |
| `renderers` | {'int': 2004} |
| `tabs` | {'int': 2003} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
