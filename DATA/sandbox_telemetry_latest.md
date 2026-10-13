# sandbox_telemetry_parse — 2026-10-13 23:06:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1281407 lines=3383
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2457 |
| `chrome_profile_sample` | 918 |
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
| `chromeBrowserPssKb` | {'int': 2457} |
| `chromeGpuPssKb` | {'int': 2457} |
| `chromeOtherPssKb` | {'int': 2457} |
| `chromeProcesses` | {'int': 2457} |
| `chromeProfiles` | {'int': 2457} |
| `chromeRendererMaxPssKb` | {'int': 2457} |
| `chromeRendererPssKb` | {'int': 2457} |
| `chromeRenderers` | {'int': 2457} |
| `chromeTabs` | {'int': 2457} |
| `chromeTabsProbedProfiles` | {'int': 2457} |
| `chromeUtilityPssKb` | {'int': 2457} |
| `desktopPssKb` | {'int': 2457} |
| `hostPssKb` | {'int': 2457} |
| `kind` | {'str': 2457} |
| `memAvailableKb` | {'int': 2457} |
| `memTotalKb` | {'int': 2457} |
| `otherPssKb` | {'int': 2457} |
| `processes` | {'int': 2457} |
| `pssFallbackProcesses` | {'int': 2457} |

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
| `cpuMillicores` | {'int': 917} |
| `display` | {'int': 918} |
| `kind` | {'str': 918} |
| `processes` | {'int': 918} |
| `pssKb` | {'int': 918} |
| `rendererMaxPssKb` | {'int': 918} |
| `renderers` | {'int': 918} |
| `tabs` | {'int': 918} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
