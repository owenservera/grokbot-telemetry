# sandbox_telemetry_parse — 2026-10-13 14:02:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1126227 lines=2897
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2214 |
| `chrome_profile_sample` | 675 |
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
| `chromeBrowserPssKb` | {'int': 2214} |
| `chromeGpuPssKb` | {'int': 2214} |
| `chromeOtherPssKb` | {'int': 2214} |
| `chromeProcesses` | {'int': 2214} |
| `chromeProfiles` | {'int': 2214} |
| `chromeRendererMaxPssKb` | {'int': 2214} |
| `chromeRendererPssKb` | {'int': 2214} |
| `chromeRenderers` | {'int': 2214} |
| `chromeTabs` | {'int': 2214} |
| `chromeTabsProbedProfiles` | {'int': 2214} |
| `chromeUtilityPssKb` | {'int': 2214} |
| `desktopPssKb` | {'int': 2214} |
| `hostPssKb` | {'int': 2214} |
| `kind` | {'str': 2214} |
| `memAvailableKb` | {'int': 2214} |
| `memTotalKb` | {'int': 2214} |
| `otherPssKb` | {'int': 2214} |
| `processes` | {'int': 2214} |
| `pssFallbackProcesses` | {'int': 2214} |

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
| `cpuMillicores` | {'int': 674} |
| `display` | {'int': 675} |
| `kind` | {'str': 675} |
| `processes` | {'int': 675} |
| `pssKb` | {'int': 675} |
| `rendererMaxPssKb` | {'int': 675} |
| `renderers` | {'int': 675} |
| `tabs` | {'int': 675} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
