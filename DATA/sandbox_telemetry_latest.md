# sandbox_telemetry_parse — 2026-10-16 13:50:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=504368 lines=1885
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1244 |
| `memory_sample` | 632 |
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
| `chromeBrowserPssKb` | {'int': 632} |
| `chromeGpuPssKb` | {'int': 632} |
| `chromeOtherPssKb` | {'int': 632} |
| `chromeProcesses` | {'int': 632} |
| `chromeProfiles` | {'int': 632} |
| `chromeRendererMaxPssKb` | {'int': 632} |
| `chromeRendererPssKb` | {'int': 632} |
| `chromeRenderers` | {'int': 632} |
| `chromeTabs` | {'int': 632} |
| `chromeTabsProbedProfiles` | {'int': 632} |
| `chromeUtilityPssKb` | {'int': 632} |
| `desktopPssKb` | {'int': 632} |
| `hostPssKb` | {'int': 632} |
| `kind` | {'str': 632} |
| `memAvailableKb` | {'int': 632} |
| `memTotalKb` | {'int': 632} |
| `otherPssKb` | {'int': 632} |
| `processes` | {'int': 632} |
| `pssFallbackProcesses` | {'int': 632} |

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
| `cpuMillicores` | {'int': 1241} |
| `display` | {'int': 1244} |
| `kind` | {'str': 1244} |
| `processes` | {'int': 1244} |
| `pssKb` | {'int': 1244} |
| `rendererMaxPssKb` | {'int': 1244} |
| `renderers` | {'int': 1244} |
| `tabs` | {'int': 1243} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
