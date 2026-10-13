# sandbox_telemetry_parse — 2026-10-13 23:44:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1302474 lines=3449
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2490 |
| `chrome_profile_sample` | 951 |
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
| `chromeBrowserPssKb` | {'int': 2490} |
| `chromeGpuPssKb` | {'int': 2490} |
| `chromeOtherPssKb` | {'int': 2490} |
| `chromeProcesses` | {'int': 2490} |
| `chromeProfiles` | {'int': 2490} |
| `chromeRendererMaxPssKb` | {'int': 2490} |
| `chromeRendererPssKb` | {'int': 2490} |
| `chromeRenderers` | {'int': 2490} |
| `chromeTabs` | {'int': 2490} |
| `chromeTabsProbedProfiles` | {'int': 2490} |
| `chromeUtilityPssKb` | {'int': 2490} |
| `desktopPssKb` | {'int': 2490} |
| `hostPssKb` | {'int': 2490} |
| `kind` | {'str': 2490} |
| `memAvailableKb` | {'int': 2490} |
| `memTotalKb` | {'int': 2490} |
| `otherPssKb` | {'int': 2490} |
| `processes` | {'int': 2490} |
| `pssFallbackProcesses` | {'int': 2490} |

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
| `cpuMillicores` | {'int': 950} |
| `display` | {'int': 951} |
| `kind` | {'str': 951} |
| `processes` | {'int': 951} |
| `pssKb` | {'int': 951} |
| `rendererMaxPssKb` | {'int': 951} |
| `renderers` | {'int': 951} |
| `tabs` | {'int': 951} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
