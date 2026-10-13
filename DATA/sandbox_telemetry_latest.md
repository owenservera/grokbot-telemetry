# sandbox_telemetry_parse — 2026-10-13 11:42:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1051535 lines=2663
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2097 |
| `chrome_profile_sample` | 558 |
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
| `chromeBrowserPssKb` | {'int': 2097} |
| `chromeGpuPssKb` | {'int': 2097} |
| `chromeOtherPssKb` | {'int': 2097} |
| `chromeProcesses` | {'int': 2097} |
| `chromeProfiles` | {'int': 2097} |
| `chromeRendererMaxPssKb` | {'int': 2097} |
| `chromeRendererPssKb` | {'int': 2097} |
| `chromeRenderers` | {'int': 2097} |
| `chromeTabs` | {'int': 2097} |
| `chromeTabsProbedProfiles` | {'int': 2097} |
| `chromeUtilityPssKb` | {'int': 2097} |
| `desktopPssKb` | {'int': 2097} |
| `hostPssKb` | {'int': 2097} |
| `kind` | {'str': 2097} |
| `memAvailableKb` | {'int': 2097} |
| `memTotalKb` | {'int': 2097} |
| `otherPssKb` | {'int': 2097} |
| `processes` | {'int': 2097} |
| `pssFallbackProcesses` | {'int': 2097} |

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
| `cpuMillicores` | {'int': 557} |
| `display` | {'int': 558} |
| `kind` | {'str': 558} |
| `processes` | {'int': 558} |
| `pssKb` | {'int': 558} |
| `rendererMaxPssKb` | {'int': 558} |
| `renderers` | {'int': 558} |
| `tabs` | {'int': 558} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
