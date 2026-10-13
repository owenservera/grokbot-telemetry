# sandbox_telemetry_parse — 2026-10-13 23:45:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1303112 lines=3451
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2491 |
| `chrome_profile_sample` | 952 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2491} |
| `chromeGpuPssKb` | {'int': 2491} |
| `chromeOtherPssKb` | {'int': 2491} |
| `chromeProcesses` | {'int': 2491} |
| `chromeProfiles` | {'int': 2491} |
| `chromeRendererMaxPssKb` | {'int': 2491} |
| `chromeRendererPssKb` | {'int': 2491} |
| `chromeRenderers` | {'int': 2491} |
| `chromeTabs` | {'int': 2491} |
| `chromeTabsProbedProfiles` | {'int': 2491} |
| `chromeUtilityPssKb` | {'int': 2491} |
| `desktopPssKb` | {'int': 2491} |
| `hostPssKb` | {'int': 2491} |
| `kind` | {'str': 2491} |
| `memAvailableKb` | {'int': 2491} |
| `memTotalKb` | {'int': 2491} |
| `otherPssKb` | {'int': 2491} |
| `processes` | {'int': 2491} |
| `pssFallbackProcesses` | {'int': 2491} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 951} |
| `display` | {'int': 952} |
| `kind` | {'str': 952} |
| `processes` | {'int': 952} |
| `pssKb` | {'int': 952} |
| `rendererMaxPssKb` | {'int': 952} |
| `renderers` | {'int': 952} |
| `tabs` | {'int': 952} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
